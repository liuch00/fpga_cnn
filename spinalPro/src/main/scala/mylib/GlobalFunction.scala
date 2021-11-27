package mylib
import spinal.core._
import spinal.lib._
import spinal.sim._
import spinal.core.sim._
import java.io.{File, FileInputStream}


// 定义一些需要用到的全局函数

// 计算给定参数的卷积层/池化层的维度计数器
// 用于获取下一步应该读的FeatureMap和Weight的地址
object MakeCnt {
    def judge (idx : Int) : Int = {
        if (idx == 0)
            return 2
        else
            return 1
    }

    def apply (start : Bool, input : List[Int]) : List[UInt] = {
        val cnt = input.map(x => 
            Reg(UInt(log2Up(x) bits)) init(0)
        )

        val num = input.zipWithIndex.map{
            case (value, idx) => 
                (if (value > 1)
                    (value, idx)
                else
                    null)
        }.filter(_ != null)
        
        val res = Reg(Bool)
        res := num.zipWithIndex.map{
            case ((value1, value2), idx) => 
                (cnt(value2) === (
                    value1 - (judge(idx)))
                )
        }.reduce(_ && _)

        val enable = Reg(Bool) init(False)
        when (start) {
            enable := True
        }.elsewhen(res){
            enable := False
        }

        input.zipWithIndex.map{
            case (value, idx) => (
                if (value > 1) {
                    when ((
                    List( 
                        if(idx > 1) 
                            True 
                        else 
                            enable, True) ::: 
                    ((0 until idx).map{
                        case x => cnt(x) === input(x) - 1
                        }).toList).reduce(_ && _)) {
                            when(cnt(idx) < value - 1) {
                                cnt(idx) := cnt(idx) + 1
                            }.otherwise {
                                cnt(idx) := 0
                            }
                        }
                }
            )
        }
        cnt
    }
}

// 载入权重
object LoadWeight {
    // 过滤掉溢出值
    def filter_neg(num : Int) : Int = {
        if (num < 0)
            return num + 256
        else
            return num
    }

    // 将字节表示的值转为Int
    def convert(wb : Array[Byte], i : Int) : Int = {
        val b1 = wb(4 * i)
        val b2 = wb(4 * i + 1)
        val b3 = wb(4 * i + 2)
        val b4 = wb(4 * i + 3)
        return (
            b4.toInt * 256 * 256 * 256 +
            filter_neg(b3.toInt) * 256 * 256 + 
            filter_neg(b2.toInt) * 256 + 
            filter_neg(b1.toInt)
        )
    }

    def apply(
        file_path : String, 
        weight_config : List[List[Int]],
        resolution : Int
    ):
        List[Array[Double]] = {
            val file_open = new File(file_path)
            val file_stream = new FileInputStream(file_open)
            val weights_in_bytes = new Array[Byte] (file_open.length.toInt)

            // read
            file_stream.read(weights_in_bytes)
            file_stream.close()

            // load
            // 将字节数据转换为Double权重值
            var i = 0 // 起始下标
            val base = (1 << resolution) // 扩大的倍数
            val weights = weight_config.map{x => 
                if(x.length == 1) {
                    (0 until x(0)).map{y => 
                    val ret = convert(weights_in_bytes, i).toDouble / base
                    i = i + 1 
                    ret}.toArray
                }else {
                    val w = (0 until x(0)).map{y => 
                            val ret = convert(weights_in_bytes, i).toDouble / base
                            i = i + 1
                            ret}.toArray
                    val b = (0 until x(0)).map{y => 
                            val ret = convert(weights_in_bytes, i).toDouble / base
                            i = i + 1
                            ret}.toArray
                    val mean = (0 until x(0)).map{y => 
                            val ret = convert(weights_in_bytes, i).toDouble / base
                            i = i + 1
                            ret}.toArray
                    val varX = (0 until x(0)).map{y => 
                            var ret = convert(weights_in_bytes, i).toDouble / base
                            i = i + 1
                            if(ret == 0) 
                                ret = 100 // 避免除零
                            ret}.toArray
                    i = i + 1
                    val weight = (0 until x(0)).map{y => 
                            val ret = w(y) / scala.math.sqrt(varX(y))
                            ret}.toList
                    val bias = (0 until x(0)).map{y => 
                            val ret = (b(y) - w(y) * mean(y) / scala.math.sqrt(varX(y)))
                            ret}.toList
                    (weight ++ bias).toArray
                }
            }
            weights
        }
}

// 从神经网络的最后一层中找到值最大的一个维度
// 将该维度作为label的输出
object SearchMax {
    def apply(input : Flow[Vec[SFix]], sig : SFix, sig2 : UInt) : Flow[UInt] = {
        val lower_bound = -(1 << (input.payload(0).asBits.getWidth - 1))
        val max_idx = Reg(UInt(log2Up(10) bits)) init(0) simPublic
        val max_val = Reg(SFix(11 exp, -20 exp)) init(-1) simPublic()
        sig := max_val
        val cnt = Reg(UInt(log2Up(10) bits)) init(9)
        val last_cnt = Reg(UInt(log2Up(10) bits)) init(9)
        max_val.raw.init(lower_bound)
        // 输出流
        val output = Flow(UInt(log2Up(10) bits)) 
        
        // 更新最大值
        last_cnt := cnt
        sig2 := cnt - last_cnt
        when (input.valid) {
            when (cnt === 9) {
                max_val.raw := input.payload(0).raw
                max_idx := 0
                cnt := 0
            }.otherwise {
                when(input.payload(0) > max_val) {
                    max_val.raw := input.payload(0).raw
                    max_idx := cnt + 1
                }
                cnt := cnt + 1
            }
        }

        // output
        output.payload := max_idx
        when (last_cnt === 8 && cnt === 9) {
            output.valid := True
        }.otherwise {
            output.valid := False
        }
        output
    }
}

object LoadCifar10 {
    def apply(
        resolution : Int
    ):(Array[Array[Array[Array[Double]]]], Array[Int]) = {
        // 图片数据集
        val images = Array.ofDim[Double](10000, 3, 32, 32) // 10000张图片, 大小3*32*32
        val labels = new Array[Int](10000)

        // 打开文件
        val file = new File("./data/test_batch.bin")
        val file_stream = new FileInputStream(file)
        val bytes = new Array[Byte](file.length.toInt)
        file_stream.read(bytes)

        // 读取标签和图片
        for(k <- 0 until 10000) {
            labels(k) = bytes(k * 3073).toInt
        }
        // 归一化因子
        for(k <- 0 until 10000) {
            for(i <- 0 until 3) {
                for(j <- 0 until 32) {
                    for(m <- 0 until 32) {
                            val t = k * 3073 + i * 32 * 32 + j * 32 + m + 1
                            if(bytes(t) < 0) {
                                images(k)(i)(j)(m) = 256 + bytes(t).toInt.toDouble
                            }else {
                                images(k)(i)(j)(m) = bytes(t).toInt.toDouble
                            }
                            // 直接读图片
                            images(k)(i)(j)(m) = images(k)(i)(j)(m).toInt
                    }
                }
            }
        }
        
        file_stream.close()
        (images , labels) 
    }
}