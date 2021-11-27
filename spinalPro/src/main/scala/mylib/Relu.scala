package mylib
import spinal.core._
import spinal.lib._

// 伴随对象
object Relu {
    def apply(input : FeatureMap) : FeatureMap = {
        val map = FeatureMap(input, 0)
        // 新建Relu层
        val layer = new Relu(
            input.peak,
            input.resolution,
            input.width
            )
        layer.io.input := input.points
        map.points := layer.io.output
        map
    }
}

// 定义Relu函数的类

class Relu(
    peak : Int = 5,
    resolution: Int = 10,
    width: Int
) extends Component {
    val io = new Bundle {
        val input = in (Flow(
            Vec (SFix( peak exp, -resolution exp), width)
        ))
        val output = out (Flow(
            Vec (SFix( peak exp, -resolution exp), width)
        ))
    }

    val res = RegFlow(
            Vec (SFix( peak exp, -resolution exp), width)
        )
    
    // Relu函数的定义
    for (i <- 0 until width) {
        when (io.input.payload(i) >= 0) {
            res.payload(i) := io.input.payload(i)
        }.otherwise{
            res.payload(i) := 0
        }
    }
    
    res.valid := io.input.valid
    io.output := res
}