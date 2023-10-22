# Linux下安装gradle

Gradle 是以 Groovy 语言为基础，面向Java应用为主。基于DSL（领域特定语言）语法的自动化构建工具

下面就描述一下如何在linux环境下安装配置gradle环境

1. 前置条件：d

需要先安装Java8 或更高版本

```
java -version

Picked up _JAVA_OPTIONS:   -Dawt.useSystemAAFontSettings=gasp
openjdk version "1.8.0_171"
OpenJDK Runtime Environment (build 1.8.0_171-8u171-b11--b11)
OpenJDK -Bit Server VM (build 25.171-b11, mixed mode)
1.2  下载并解压gradle 安装文件

```

2. 安装

```
mkdir /opt/gradle
cd /opt/gradle
wget https://services.gradle.org/distributions/gradle-5.3.1-all.zip
unzip -d /opt/gradle gradle-5.3.-all.zip
ls /opt/gradle/gradle-5.3.1

bin docs getting-started.html init.d lib LICENSE media NOTICE samples src
```

3. 配置环境变量

将 gradle bin 目录加入到PATH中

打开/etc/profile文件，将gradle/bin 目录加入到环境变量，重新加载环境变量

```
vim /etc/profile

# 添加环境变量
export PATH=$PATH:/opt/gradle/gradle-5.3.1/bin

source /etc/profile
```





