# office 免费激活

[toc]





## 一 下载Office Deployment Tool

1.   https://www.microsoft.com/en-us/download/details.aspx?id=49117
     ![image-20230819200318174](http://cdn.nidhogg-110.cn/typora/image-20230819200318174.png)
2.   运行下载的文件
3.   同意协议
4.   选择下载文件位置![image-20230819200433943](http://cdn.nidhogg-110.cn/typora/image-20230819200516147.png)



## 二 下载配置文件

1.   https://config.office.com/deploymentsettings
     设置配置文件，除以下外其余设置均为默认![image-20230819201022203](http://cdn.nidhogg-110.cn/typora/image-20230819201022203.png)![image-20230819201531103](http://cdn.nidhogg-110.cn/typora/image-20230819201531103.png)![image-20230819201105754](http://cdn.nidhogg-110.cn/typora/image-20230819201105754.png)![image-20230819201158289](http://cdn.nidhogg-110.cn/typora/image-20230819201158289.png)![image-20230819201227237](http://cdn.nidhogg-110.cn/typora/image-20230819201227237.png)
2.   导出![image-20230819201335458](http://cdn.nidhogg-110.cn/typora/image-20230819201335458.png)![image-20230819201620115](http://cdn.nidhogg-110.cn/typora/image-20230819201620115.png)![image-20230819201719031](http://cdn.nidhogg-110.cn/typora/image-20230819201719031.png)
3.   将导出的文件移动到Office Deployment Tool下载的文件夹![image-20230819201814147](http://cdn.nidhogg-110.cn/typora/image-20230819201814147.png)

## 三 安装并激活软件

1.   以管路员身份在终端运行以下代码

     ```
     D:\software\office\setup.exe /download D:\software\office\config.xml
     ```

     ```
     D:\software\office\setup.exe /configure D:\software\office\config.xml
     ```

2.   如果没有激活运行以下代码

     ```
     cd D:\software\office
     slmgr /skms kms.03k.org
     slmgr /ato
     ```

3.   还没有激活就重启电脑