package mylib
import spinal.core._
import spinal.lib._

// 定义平均池化层的类

class AvgPoolLayer(
    peak : Int = 5,
    resolution: Int = 10,
    channel_out: Int,
    width_out: Int
) extends Component {
    val io = new Bundle {
        val clear = in Bool
        val map = in (
            Vec (SFix( peak exp, -resolution exp), width_out)
        ) 
        val output = out (Vec(
            Vec (SFix( peak exp, -resolution exp), width_out)
        , channel_out))
    }

    val res = Vec(
                Vec(Reg(SFix( (peak * 2) exp, -resolution exp)) 
                    init(0), width_out), 
            channel_out)
    val output = Vec(
        Vec(Reg(SFix( (peak) exp, -resolution exp)) 
            init(0), width_out), 
    channel_out)
    
    // 池化运算
    for (c <- 0 until channel_out) {
        for (w <- 0 until width_out) {
            res(c)(w) := io.map(w)
        }
    }

    // clear 接口
    when (Delay (io.clear, 3)) {
        for (c <- 0 until channel_out) {
            for (w <- 0 until width_out) {
                output(c)(w) := res(c)(w).truncated
            }
        }
    }.otherwise {
        for (c <- 0 until channel_out) {
            for (w <- 0 until width_out) {
                output(c)(w) := (output(c)(w) + res(c)(w)).truncated
            }
        }
    }

    io.output := output
}