# Proteus查看C51内存中变量的值 寄存器的值



在**调试状态**下，调试选项卡中选择CPU

![在这里插入图片描述](http://cdn.nidhogg-110.cn/typora/2020020610091556.png)

第一个是寄存器

![在这里插入图片描述](http://cdn.nidhogg-110.cn/typora/20200206101726714.png)


第二个详见（SFR）
基础讲解: http://www.21ic.com/jichuzhishi/mcu/memory/2013-04-19/179434.html.
ARM官网: http://www.keil.com/support/man/docs/c51/c51_le_sfrs.htm.

![在这里插入图片描述](http://cdn.nidhogg-110.cn/typora/2020020610183122.png)

下附百度翻译
8051系列微控制器为访问特殊功能寄存器（SFR）提供了一个独特的存储区域。SFR在程序中用于控制计时器、计数器、串行I/O、端口I/O和外围设备。SFR位于地址0x80到0xFF之间，可以作为位、字节和字访问。有关特殊功能寄存器的详细信息，请参阅Intel 8位嵌入式控制器数据手册或其他8051数据手册。

在8051系列中，SFR的数量和类型各不相同。请注意，Cx51编译器没有预定义SFR名称。但是，sfr的声明在include文件中提供。

C51编译器为各种8051派生程序提供了许多包含文件。每个文件都包含该派生程序上可用的SFR声明。有关包含文件的更多信息，请参阅8051特殊功能寄存器包含文件。

Cx51编译器提供对具有fr、sfr16和sbit数据类型的sfr的访问。

第三个是 IDATA
还是详见官网吧

![在这里插入图片描述](http://cdn.nidhogg-110.cn/typora/20200206101810686.png)

ARM官网 idata描述


欢迎指正交流！
------------------------------------------------
版权声明：本文为CSDN博主「NEAUZSY」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/weixin_46180926/article/details/104192333