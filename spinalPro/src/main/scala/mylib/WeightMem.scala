package mylib
import spinal.core._
import spinal.lib._

// 定义存储权重的容器

class WeightMem (
    weights : Array[Double],
    peak : Int = 5,
    resolution: Int = 10,
    channel_out : Int
) extends Component {
    
    // 计算存储深度
    val depth = weights.length / channel_out;
    
    val io = new Bundle {
        val address = in UInt ( log2Up(depth) bits )
        val weights_out = out (Vec(
            SFix( peak exp, -resolution exp), channel_out))
    }

    // 生成权重表
    def getWeightsTable = for(i <- 0 until depth) yield {
        Vec((0 until channel_out).map{x => 
            val ret = SFix(peak exp, -resolution exp)
            ret := weights(depth * (x + i/(depth)*(channel_out)) + (i % (depth)))
            ret
    })
    } 

    // 将权重表写入ROM中
    val ROM = Mem(Vec(
            SFix( peak exp, -resolution exp), channel_out),
            initialContent = getWeightsTable
        )
        
    // 输出
    io.weights_out := ROM.readSync(io.address)
}