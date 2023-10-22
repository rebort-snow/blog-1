# 打包apk遇到的问题

0. Linux连接外网

   软件链接：https://gh.ddlc.top/https://github.com/Fndroid/clash_for_windows_pkg/releases/download/0.20.0/Clash.for.Windows-0.20.0-x64-linux.tar.gz

   clash订阅链接：https://okzz.net/index.php/#/dashboard

   账号：nidhogg011@gmail.com

   密码：okkzZ5##

1. 安装cython

   ```
   pip install cython
   ```

   

2. 安装java11

   安装到本地，解压到/usr/local/

   添加到环境变量

   ```
   # 下载地址
   https://www.oracle.com/java/technologies/downloads/#java11
   ```

   

3. 安装peath

4. 安装grade（一般是自带的安装包无法解压）

   ```
   # 下载地址
   https://services.gradle.org/distributions/
   ```

   

5. 安装Android-jdk

   下载sdkmanager工具包
   官网下载页最底部-命令行工具下载，找到Linux平台的工具包


   使用wget下载到服务器

   `wget -P /home/android-sdk/ https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip`
   解压工具包
   `unzip commandlinetools-linux-7583922_latest.zip`
   sdkmanager在/home/android-sdk/cmdline-tools/bin下。

   选择下载最新的sdk版本
   使用命令查看最新的stable版本

   `[root@192 bin]# ./sdkmanager --list --channel=0
   Error: Could not determine SDK root.
   Error: Either specify it explicitly with --sdk_root= or move this package into its expected location: <sdk>/cmdline-tools/latest/`
   报错了，无法找到sdk根目录，提示说有两种解决办法：一是用–sdk_root指定路径，二是把文件夹移动到指定路径。

   因为懒，选择试一下第二个一劳永逸的方法。

   `[root@192 cmdline-tools]# mkdir latest
   [root@192 cmdline-tools]# mv bin/ lib/ NOTICE.txt source.properties -t latest/`
   再次执行查询命令，就会查出一长条的版本。

   `[root@192 cmdline-tools]# cd latest/bin/
   [root@192 bin]# ./sdkmanager --list --channel=0`
   安装sdk
   因为App项目使用了Android-30的版本，故安装对应的platforms;android-30

   `./sdkmanager "build-tools;30.0.3" "platforms;android-30"`
   在弹出协议许可时选择y，就开始安装了。

   下载完成后，就可以在cmdline-tools的同级目录，找到下载的sdk了。这也是为什么上面要指定sdk-root的原因了。

   `[root@192 android-sdk]# ls
   build-tools  cmdline-tools  commandlinetools-linux-7583922_latest.zip  emulator  licenses  patcher  platforms  platform-tools  tools`
   配置ANDROID_HOME环境变量
   `[root@192 android-sdk]# export ANDROID_HOME=/home/android-sdk
   [root@192 android-sdk]# export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH
   [root@192 android-sdk]# source /etc/profile`
   至此，Linux安装Android Sdk完成！
   ------------------------------------------------
   版权声明：本文为CSDN博主「爱新觉罗狗剩儿」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
   原文链接：https://blog.csdn.net/qq_20750639/article/details/119536318

6. 