package mylib
import spinal.core._
import spinal.lib._

// 定义神经网络层的控制类 (池化层和卷积层)
// 主要负责读写等的控制逻辑

class LayerCtrl(
    channel_in: Int,
    height_in: Int,
    height_out: Int,
    kernel_size : Int,
    stride : Int,
    padding : Int,
    group : Int = 1
) extends Component {
    val io = new Bundle {
        val start = in Bool
        val clear = out Bool
        val shift = out Bool
        val valid = out Bool
        // 输入地址(feature map)与权重地址
        val fm_addr = out UInt (
            log2Up(channel_in * (height_in + 2 * padding)) bits
        )
        val weight_addr = out UInt (
            log2Up(channel_in * kernel_size * kernel_size) bits
        )
    }

    // 获取计数器
    val cnt_list = MakeCnt(
        io.start,
        List(
            kernel_size,
            channel_in / group,
            kernel_size,
            1, 
            height_out,
            group // 默认Group为1
        )
    )

    val fm_addr = Reg(UInt(
        log2Up(channel_in * (height_in + 2 * padding))bits
    )) init(channel_in * padding)

    val group_mult = (
        if (group == 1)
            U(0, 0 bits)
        else
            cnt_list(5) * (channel_in / group)
    )

    if (height_out > 1) {
        fm_addr := cnt_list(1) + group_mult + (cnt_list(2) * channel_in)(Array((cnt_list(2)*channel_in).getWidth,log2Up((height_in + 2*padding) * channel_in)).min - 1 downto 0) + (cnt_list(4)* channel_in * stride)(log2Up((height_in + 2*padding) * channel_in) - 1 downto 0)
    } else {
        fm_addr := cnt_list(1) + group_mult + (cnt_list(2) * channel_in)(log2Up(height_in * channel_in) - 1 downto 0) 
    }

    val weight_addr = Reg(UInt(
            log2Up(channel_in * kernel_size * kernel_size) bits
        )) init(0)
    
    weight_addr := (((cnt_list(1) + group_mult) * kernel_size * kernel_size)(log2Up(channel_in*kernel_size*kernel_size) - 1 downto 0) + cnt_list(2) * kernel_size + cnt_list(0))

    val clear = Reg(Bool) init(False)
    val shift = Reg(Bool) init(False)
    val valid = Reg(Bool) init(False)
    
    when(
        cnt_list.apply(0) === 0 &&
        cnt_list.apply(1) === 0 &&
        cnt_list.apply(2) === 0
    ) {
        clear := True
    }.otherwise {
        clear := False
    }
    when (cnt_list.apply(0) > 0) {
        shift := True
    }.otherwise {
        shift := False
    }
    when(
        cnt_list.apply(0) === kernel_size - 1 &&
        cnt_list.apply(1) === channel_in  / group - 1 && 
        cnt_list.apply(2) === kernel_size - 1
    ) {
        valid := True
    }.otherwise {
        valid := False
    }

    io.fm_addr := fm_addr
    io.weight_addr := weight_addr
    io.clear := clear
    io.shift := shift
    io.valid := valid
}