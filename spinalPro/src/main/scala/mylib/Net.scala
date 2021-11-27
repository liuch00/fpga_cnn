package mylib

import spinal.core._
import spinal.lib._
import spinal.sim._
import spinal.core.sim._

case class NetConfig() {
    var weight_table = List[List[Int]]()
}

trait Net {
    def conv2d(
        x : NetConfig, 
        channel_in : Int, 
        channel_out : Int, 
        kernel_size : Int, 
        stride : Int = 1, 
        padding : Int = 0, 
        bias: Boolean = true
    ): NetConfig = {
        x.weight_table = x.weight_table :+ 
            List((channel_in * channel_out * kernel_size * kernel_size))
        x
    }
    def relu(x : NetConfig): NetConfig = {
        x
    }
    def avgpool(x : NetConfig, kernel_size : Int, stride : Int = 1): NetConfig = {
        x
    }
}

case class mynet() extends Net {
    var x = NetConfig()
    x = conv2d(x, 3, 4, 5, 2, 0)
    x = relu(x)
    x = avgpool(x, 10, 10)
    x = conv2d(x, 4, 10, 1, 1, 0)
}

class ClassificationNet(
    // 全局的精度参数
    peak : Int = 5,
    resolution : Int = 10
) extends Component {
    val io = new Bundle {
        // 神经网络的输入
        // 1个时钟周期接受8个 8 位数
        val input = in (Flow(Vec(UInt(8 bits), 8))) 

        // 隐藏层输出
        // 注意：红绿蓝三通道的值完全相等
        // 因此只需要一个接口即可
        // 宽度为14
        val layer1_rgb = out (Flow(Vec(UInt(8 bits), 14)))

        // 神经网络的分类结果，一共十个类别
        // 由一个4位数来标志
        val ans = out (Flow(UInt(4 bits))) 

        // 收到了多少数据
        val cnt_in = out(UInt(9 bits))
    }

    // 接受图片的输入
    val layer1_in = Vec(Reg(SFix(peak exp, -resolution exp)) init(0), 32)
    // debug
    val cnt_in = Reg(UInt(9 bits)) init(0)
    io.cnt_in := cnt_in
    when(io.input.valid) {
        for(i <- 0 until 8) {
            layer1_in(i + 24).raw := (((io.input.payload(i).intoSInt - 255 + io.input.payload(i).intoSInt) * (1 << resolution)) / 255).resized
        }
        for(i <- 0 until 24) {
            layer1_in(i) := layer1_in(i+8)
        }
        cnt_in := cnt_in + 1
    }
    val cnt = Reg(UInt(2 bits)) init(0)
    when(io.input.valid) {
        when(cnt < 3) {
            cnt := cnt + 1
        }.otherwise {
            cnt := 0
        }
    }.otherwise {
        cnt := 0
    }

    val inp = FeatureMap(peak,resolution,32,32,3,0, "./data/weight.bin", mynet().x.weight_table) 
    inp.points.valid := Delay(cnt === 3,1,init = False)
    inp.points.payload := layer1_in

    // 网络结构
    val l1 = Convolution2d(inp, 3, 4, 5, 2, 0, False, peak, resolution)
    val l2 = Relu(l1)
    val l3 = AvgPool2d(l2, 10, 10, 0, peak, resolution)
    val l4 = Convolution2d(l3, 4, 10, 1, 1, 0, False, peak, resolution)
    // 测试信号
    val sig = Reg(SFix(peak exp, -resolution exp)) simPublic()
    val sig2 = Reg(UInt(log2Up(10) bits)) simPublic()
    val plot_sig = sig.asBits.asSInt simPublic()
    // 输出结果
    val s = SearchMax
    val ans = s.apply(l4.points, sig, sig2) simPublic()

    // debug
    val plot1 = Vec(inp.points.payload.map(x => x.asBits.asSInt).toList) simPublic
    val plot2 = Vec(l2.points.payload.map(x => x.asBits.asSInt).toList) simPublic
    val plot3 = Vec(l3.points.payload.map(x => x.asBits.asSInt).toList) simPublic
    val plot4 = Vec(io.layer1_rgb.payload.map(x => x).toList) simPublic
    
    // 输出连线
    // 中间层
    // [0, 5]对应灰度值[0, 255]
    // RGB三个通道的值都等于灰度值
    io.layer1_rgb.payload := Vec(l2.points.payload.map{x => 
        val ret = (x.asBits.asSInt * 51 / (1 << resolution)).asUInt;
        when (x > 5)
        {
            ret := 255
        }
        ret(7 downto 0)
    }.toList)
    // 设置valid
    io.layer1_rgb.valid := l2.points.valid
    // val cnt1 = Reg(UInt(log2Up(180) bits)) init(0)
    // when(l2.points.valid) {
    //     when(cnt1 < 14) {
    //         cnt1 := cnt1 + 1
    //         io.layer1_rgb.valid := True
    //     }.elsewhen(cnt1 < 139) {
    //         cnt1 := cnt1 + 1
    //         io.layer1_rgb.valid := False
    //     }.otherwise{
    //         cnt1 := 0
    //         io.layer1_rgb.valid := False
    //     }
    // }.otherwise {
    //     io.layer1_rgb.valid := False
    // }

    // 结果输出
    io.ans := ans
}
