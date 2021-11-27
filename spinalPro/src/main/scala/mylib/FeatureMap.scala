package mylib
import spinal.core._
import spinal.lib._

import spinal.sim._
import spinal.core.sim._

// 伴随对象
object FeatureMap {
    def apply(
        input : FeatureMap,
        layer_add : Int
    ) : FeatureMap = {
        val map = FeatureMap (
            input.peak,
            input.resolution,
            input.height,
            input.width,
            input.channel,
            input.layer + layer_add,
            input.file_path,
            input.weight_config
        )
        map
    }
}

// 定义特征图的类
case class FeatureMap(
    // 定点数的精度
    peak : Int = 5,
    resolution: Int = 10,
    // 图片的大小
    height: Int,
    width : Int,
    channel : Int,
    // 层编号
    // 用于从权重列表中取相应的权重
    // 注意: 池化层没有权重
    layer : Int, 
    file_path : String,
    weight_config : List[List[Int]]
) extends Bundle {
    // 特征图中的各个点
    val points = (Flow(
            Vec (SFix( peak exp, -resolution exp), width)
        )) simPublic() 
}