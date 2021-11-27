# 仓库介绍

本仓库是数字逻辑设计2021基于FPGA的CNN图像分类系统代码仓库。

以下是仓库内容简介。

- `/`根目录是Quartus工程项目

- `/src/`下为源代码文件。**注意**：由于路径的原因，再次打开Quartus工程时可能需要**重新添加源文件**，直接添加该目录下的文件即可。

- `/ip/`下为ip模块的目录。

- `/doc/`下为实验报告。

- `/tools/`下为训练神经网络及生成其权重的代码文件。

  `cifar10_net.ipynb`为训练神经网络的代码文件。

  在代码中，顺序执行定义神经网络并且进行训练。训练完后执行最后一个block`Output Binary Files`的代码生成二进制格式的权重文件。

  **注意**：运行代码需要确保安装

  - python 3.8.8
  - jupyter 1.0.0
  - torch 1.8.1
  - torchsummary 1.5.1
  - torchvision 0.9.1
  - matplotlib 3.4.2

- `/spinalPro/`下为SpinalHDL代码仓库。

  - `/spinalPro/data/`下为以二进制格式存储的权重和用于仿真的数据集文件。
  - `/spinalPro/project/`下为SpinalHDL工程文件。
  - `/spinalPro/src/`下为SpinalHDL的源代码文件，包含仿真文件。**注意**：Spinal的仿真需要Verilator的支持，详情见https://spinalhdl.github.io/SpinalDoc-RTD/SpinalHDL/Getting%20Started/index.html。
  - `/spinalPro/verilog/`下为SpinalHDL生成的Verilog文件。

- `/README.md`为本文件。

