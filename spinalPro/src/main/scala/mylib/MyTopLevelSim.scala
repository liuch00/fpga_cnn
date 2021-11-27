package mylib

import spinal.core._
import spinal.lib._
import spinal.sim._
import spinal.core.sim._
import java.io._


//MyTopLevel's testbench
object MyTopLevelSim {
  // debug输出文件
  val writer_1 = new PrintWriter(new File("./output/input.txt" ))
  val writer_2 = new PrintWriter(new File("./output/layer2.txt" ))
  val writer_3 = new PrintWriter(new File("./output/layer3.txt" ))
  val writer_4 = new PrintWriter(new File("./output/display.txt" ))
  
  // 测试入口
  def main(args : Array[String]) {
    // 测试用的精度
    val peak = 11
    val resolution = 20

    val (images_mat, labels) = LoadCifar10(resolution)
    var delay = 20000
    // 总输出与正确输出
    var tot_out = 0
    var correct_out = 0
    SimConfig.doSim(new ClassificationNet(peak, resolution)){dut => //.withWave
      //Fork a process to generate the reset and the clock on the dut
      dut.clockDomain.forkStimulus(period = 10)
      for(idx <- 0 until 50000000) {
        if(idx % delay > 2 && idx % delay <= 2 + 4 * 32 * 3) {
          dut.io.input.valid #= true
          for(i <- 0 until 8) {
            dut.io.input.payload(i) #= (images_mat(idx / delay)
                ((idx % delay - 3) % 12 / 4)
                ((idx % delay - 3) / 12)
                (i + 8 * ((idx % delay - 3) % 4))
              ).toInt
          }
        }else {
          dut.io.input.valid #= false
          for(i <- 0 until 8) {
            dut.io.input.payload(i) #= 0
          }
        }
        dut.clockDomain.waitRisingEdge()

        // debug
        // 注意：type cast不要在sim类中做
        // 需要在main类做，例如asSInt
        val base = (1 << resolution)

        if(dut.inp.points.valid.toBoolean) {
          for(i <- 0 until 32) {
            writer_1.write(dut.plot1(i).toInt.toDouble / base + ",")
          }
          writer_1.write("\n")
        }
        if(dut.l2.points.valid.toBoolean) {
          for(i <- 0 until 14) {
            writer_2.write(dut.plot2(i).toInt.toDouble / base + ",")
          }
          writer_2.write("\n")
        }
        if(dut.l3.points.valid.toBoolean) {
          for(i <- 0 until 1) {
            writer_3.write(dut.plot3(i).toInt.toDouble / base + ",")
          }
          writer_3.write("\n")
        }
        if(dut.io.layer1_rgb.valid.toBoolean) {
          for(i <- 0 until 14) {
            writer_4.write(dut.plot4(i).toLong + ",")
          }
          writer_4.write("\n")
        }
        
        // 统计输出结果
        if(dut.io.ans.valid.toBoolean == true) {
          // println(dut.io.ans.payload.toLong)
          // println(dut.io.cnt_in.toLong)
          if(labels(tot_out) == dut.io.ans.payload.toLong) {
            correct_out = correct_out + 1
          }
          tot_out = tot_out + 1
        }
        if(idx % (delay * 5) == 0) {
          println(correct_out + ";" + tot_out)
        }
      }
    }
    // 输出分类结果
    println(correct_out + ";" + tot_out)
    // 关闭文件
    writer_1.close()
    writer_2.close()
    writer_3.close()
    writer_4.close()
  }
}
