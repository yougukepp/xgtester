汉仪FPGA平台
====

TODO:

1. 安装ISE最新版本
2. 升级xgmac为最新版本
3. 升级xaui为最新版本
4. 调通升级后的ISE工程的xg\_interface工程
5. xgmac使用AXI\_Lite接口
6. xaui使用MDIO接口、删除pcore mdio模块
7. 搭建平台生成脚本化工具(Python)框架 

BUG:

1. xg\_interface 读写必须以64字节对齐？参见xaxidma\_example\_sg\_poll.c

备注:

1. chipscope生成的vcd文件如何在modelsim中仿真?  

   1. vcd2wlf xx.vcd xx.wlf
   2. vsim -view xx.wlf

