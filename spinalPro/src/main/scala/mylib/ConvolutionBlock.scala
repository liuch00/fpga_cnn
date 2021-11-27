package mylib
import spinal.core._
import spinal.lib._

// 卷积层接口
object Convolution2d {
    def apply(
        input : FeatureMap,
        channel_in : Int,
        channel_out: Int,
        kernel_size: Int,
        stride: Int,
        padding : Int,
        bias : Bool,
        peak : Int = 5,
        resolution: Int = 10
    ) : FeatureMap = {
        val width_out = (input.width + 2 * padding - kernel_size) / stride + 1
        val height_out = (input.height + 2 * padding - kernel_size) / stride + 1
        val block = new ConvolutionBlock(
            peak = peak,
            resolution = resolution,
            channel_in = channel_in,
            channel_out = channel_out,
            width_in = input.width,
            height_in = input.height,
            layer_index = input.layer,
            file_path = input.file_path,
            weight_config = input.weight_config,
            stride = stride,
            kernel_size = kernel_size,
            padding = padding
        )
        block.io.input := input.points
        val output = FeatureMap(
            peak = peak,
            resolution = resolution,
            height = height_out,
            width = width_out,
            channel = channel_out,
            file_path = input.file_path,
            weight_config = input.weight_config,
            layer = input.layer + 1
        )
        output.points := block.io.output
        output
    }
}

// 卷积层的模块
class ConvolutionBlock(
    peak : Int = 5,
    resolution: Int = 10,
    channel_in : Int,
    channel_out : Int,
    width_in : Int,
    height_in : Int,
    layer_index : Int,
    file_path : String, 
    weight_config : List[List[Int]],
    stride : Int,
    kernel_size : Int,
    padding : Int
) extends Component {
    // 根据卷积层的有关公式计算输出的维度
    val width_out = (width_in + 2 * padding - kernel_size) / stride + 1
    val height_out = (height_in + 2 * padding - kernel_size) / stride + 1
    
    val io = new Bundle {
        val input = in (Flow(
            Vec (SFix( peak exp, -resolution exp), width_in)
        ))
        val output = out (Flow(
            Vec (SFix( peak exp, -resolution exp), width_out)
        ))
    }


    // 创建控制核心
    val core = new ConvolutionCore(
        peak,
        resolution,
        width_in,
        height_in,
        channel_in,
        channel_out,
        kernel_size,
        stride,
        padding,
        file_path,
        weight_config,
        layer_index
    )
    core.io.valid_in := io.input.valid
    core.io.data_in := io.input.payload

    // 输出流
    val output = Flow(
            Vec (SFix( peak exp, -resolution exp), width_out)
        )
    // 输出矩阵
    val output_matrix = Vec(
            Vec(Reg(SFix( peak exp, -resolution exp) ) init(0), width_out
        ), channel_out)
    
    // 设置输出
    when (core.io.valid_out) {
        output_matrix := core.io.data_out
    }.otherwise {
        for (i <- 0 until channel_out - 1) {
            output_matrix(i) := output_matrix(i+1)
        }
    }

    // 设置使能
    val output_valid = Reg(Bool) init(False)
    when(core.io.valid_out){
        output_valid := True
    }.elsewhen (Delay(core.io.valid_out, channel_out)) {
        output_valid := False
    }
    output.valid := output_valid
    output.payload := output_matrix(0)

    io.output := output
}


// 卷积层控制核心
class ConvolutionCore(
    peak : Int = 5,
    resolution: Int = 10,
    width_in : Int,
    height_in : Int,
    channel_in : Int,
    channel_out: Int,
    kernel_size: Int,
    stride : Int,
    padding : Int,
    file_path : String, 
    weight_config : List[List[Int]],
    layer_index : Int
) extends Component {
    // 根据卷积层的有关公式计算输出的维度
    val width_out = (width_in + 2 * padding - kernel_size) / stride + 1
    val height_out = (height_in + 2 * padding - kernel_size) / stride + 1

    val io = new Bundle {
        val valid_in = in Bool
        val valid_out = out Bool
        val data_in = in (
            Vec (SFix( peak exp, -resolution exp), width_in)
        )
        val data_out = out (
            Vec(Vec (SFix( peak exp, -resolution exp), width_out), channel_out)
        )
    }


    // 开辟feature map的ram, 初始化为全0
    val fmRAM = Mem(Vec(
            SFix( peak exp, -resolution exp), width_in),
            wordCount = (height_in + 2 * padding) * channel_in * 2
        )
    fmRAM.init(
        Vec(
            (0 until (height_in + 2 * padding) * channel_in * 2).map(
                x => Vec((0 until width_in).map{
                    x => val ret = SFix(peak exp, -resolution exp);
                    ret := 0;
                    ret
                }.toList))
        )
    )

    // 读写信号
    val write_signal = Reg(Bool) init(False)
    val read_signal = Reg(Bool) init(True)
    
    // feature map地址
    val fm_addr = Reg(UInt(
        log2Up(channel_in * (height_in + 2 * padding))bits
    )) init(channel_in * padding)

    // 写入
    when (io.valid_in) {
        when(fm_addr < channel_in * (height_in + padding) - 1) {
            fm_addr := fm_addr + 1
        }.otherwise{
            fm_addr := channel_in * padding
        }
    }
    fmRAM.write(
        address = U(fm_addr ## write_signal),
        data = io.data_in,
        enable = io.valid_in
    )

    val start = Reg(Bool) init(False) // 是否为开头
    when (
        io.valid_in &&
        fm_addr === channel_in * (height_in + padding) - 1
    ) {
        start := True
        read_signal := !read_signal
        write_signal := !write_signal
    }.otherwise {
        start := False
    }

    // control 逻辑
    val conv_ctrl = new LayerCtrl(
        channel_in, height_in, height_out,
        kernel_size, stride, padding
    )
    conv_ctrl.io.start := start

    // 从ram中读取feature map
    val content = Vec(
            SFix( peak exp, -resolution exp), width_in)
    content := fmRAM.readSync(
        address = U(conv_ctrl.io.fm_addr ## read_signal)
    )
    val raw_fm = Vec(Reg(
            SFix(peak exp, -resolution exp)) init(0),
            2 * padding + width_in
        )

    // 读入feature map
    when(Delay(conv_ctrl.io.shift, 1)) {
        for (i <- 0 until width_in + 2 * padding  - 1) {
            raw_fm(i) := raw_fm(i + 1)
        }
    }.otherwise {
        // 这里还需要在考虑一下
        // padding是否会影响正常赋值
        for(i <- 0 until width_in) {
            raw_fm(i) := content(i)
        }
    }

    // 读入权重
    val weight_list = LoadWeight(file_path, weight_config, resolution)(layer_index)
    // val weight_peak : Int = log2Up(
    //     weight_list.map(x => scala.math.abs(x)).max.toInt + 1
    // )
    // val weight_resolution : Int = Array(
    //     log2Up(
    //         (1 / (weight_list.map(
    //             x => scala.math.abs(x)
    //         ).max)).toInt
    //     ) + resolution, resolution
    // ).max

    // 设置Layer
    val conv_layer = new ConvolutionLayer(
        width_out = width_out, 
        channel_out = channel_out,
        peak = peak,
        resolution = resolution
    )

    // 权重
    val layer_rom = new WeightMem(
        weight_list,
        peak,
        resolution,
        channel_out
    )
    // println(channel_in , kernel_size)
    // println(weight_list(0) * (1 << resolution))
    // println(weight_list.size)

    layer_rom.io.address := Delay(conv_ctrl.io.weight_addr, 1)
    conv_layer.io.weight := layer_rom.io.weights_out
    conv_layer.io.clear := conv_ctrl.io.clear

    for (i <- 0 until width_out) {
        conv_layer.io.map(i) := raw_fm(i * stride)
    }

    // 连线
    // 等四个时钟周期
    // 直到数据处理完毕
    io.valid_out := Delay(conv_ctrl.io.valid, 4, init = False)
    io.data_out := conv_layer.io.output
}