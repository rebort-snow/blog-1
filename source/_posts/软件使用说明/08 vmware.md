# VMware

[toc]

## 1 基本用法

### 01 下载

https://www.123pan.com/s/g520Vv-Dg2id

安装在非中文路径下

### 02 创建虚拟机

![image-20230411134617914](http://cdn.nidhogg-110.cn/typora/image-20230411134617914.png)

### 03 共享文件夹

Linux进入共享文件夹

```
c/mnt/hgfs
```



![image-20230411134957084](http://cdn.nidhogg-110.cn/typora/image-20230411134957084.png)

![image-20230411135117864](http://cdn.nidhogg-110.cn/typora/image-20230411135117864.png)



Zhu147258:hualahuala

123456:su







```
[app]
#以下为通用配置
#应用名称
title = myapp

#包名
Package.name=myapp

#域名
package.domain = com.cocpy

# main.py文件所在的位置，由于该配置文件是在项日内生成的（即同级日录)，故设置为“.”
source.dir = -

#雷要打包进来的文件的扩展名
source.include_exts = py ,kv , atlas,db ,sql,ttf,png,jpg,docx , xml ,mp3

#匹配列表
source.include_patterns - files/* ,image/*

#不需要打包进来的文件的扩展名
 souree .exelude _exts =spec
 
·排除的日录
#source.exclude_dirs = tests, bin

世排除的列表
ssource.exclude_patterns - license,images/* /*-jPg

应用版本(写法一)
version = 1.e.a

著应用版本(写法二)
 version.regex - __version__ - [""](. *)[] version.filename =%( Source.dir)s/ main-py
 
#应用依赖包，很重要,大部分闪退都是因为具体的依赖未打包进来comma separated e-g. requirements = sqlite3,kivy
requirements - python3, kivy

#自定义源文件
# Sets custom source for any requirements with recipes# requirements . source.kivy - ../.-/kivy

#通过garden安装的包
garden_requirements = navigationdrawer , matplotlib

#预加载图片文件
#presplash.filename = %( source.dir)s/data/ presplash.png

#应用图标
icon.filename = %( source.dir)s/image/CCWord.png

#应用支持的方向((landscape,sensorLandscape,portrait or all)
orientation = portrait

#声明的服务列表
services = NAME:ENTRYPOINT_TO_PY,NANE2:ENTRYPOINT2_TO_PY

#
#OSx Specific
#
#OSX配置
#author =  Copyright Info

#change the major version of python used by the app
osx.python_version = 3

#kivy version to use
osx.kivy_version = 1.9.1

#
#Android specific
#
#Android配置
#全屏显示1，非全屏
efullscreen - 1

#(string)Presplash background color (for new android toolchain)
#Supported formats are:#RRGGBB #AARRGGB8 or one of the following names:
#red,blue,green,black,white,gray,cyan,magenta,yellow,lightgray,#darkgray,grey,lightgrey,
#darkgrey,aqua,fuchsia,lime,maroon,navy,olive,purple,silver,teal.预加载的颜色
#android.presplash_color = white

#申请的权限
android.permissions = INTERNET,MRITE_EXTERNAL_STORAGE,READ_EXTERNAL_STORAGE

#支持的Android API版本。越高兼容性越好
#android.api = 27

#支持最低的Android API版本。越低越好
#android.minapi = 21

#使用的Android SDK版本
#android.sdk = 20

#使用的Android NDK版本
#android.ndk = 17c

#支持最低的NDK版本
#android.ndk_api = 21

#使用私有存储(True)or公共存储( False)
#android.private_storage = True

#Android NDK路径
#android.ndk_path =

#Android SDK路径
#android.sdk_path =

#ANT路径,为空会自动下哉
#android.ant_path =

#是否跳过更新SDK
android.skip_update = False

#是否育动接爱SDK协议
android.accept_sdk_license = False

#默认入口
#android.entrypoint = org.renpy.android.PythonActivity

#项目自名单
#android.whitelist =

#白名单路轻
#android.whitelist_src -

#黑名单路径
#android. blacklist_src =

#(list) list of ava .jar files to add to the libs so that pyjnius can access
#their classes.Don't add jars that you do not need，since extra jars can slow
#down the build process. Allows wildcands matching，for example:
#OUYA-ODK/libs/--jar添加的Android jar包
#android .add_jars = foo.jar, bar.jar,path/to/more/* .jar

#使用的Java文件
#android.add_src =

#添加Android AAR文档(目前只适用于sd12_gradle bootstrap)
#android.add_aars =

#添加Gradle依赖
#android.gradle_dependencies =

#添加的Java类
#android.add_activites = com.example.ExampleActivity

#使用p4a的版本，默认master
p4a.branch = master

#控制台类别应用或者游戏
#android.ouya.category = GAME

#控制台图标文件名称．必须是732x412的PNG图片
#android.ouya.icon.filename = %(source.dir)s/data/ouya_icon.png

# XML文件过滤器
#android.manifest.intent_filters =

#设置启动模式为主活动
#android.manifest. 1aunch_mode = standard

#Android附加库复制进libs/ armeabi
#android.add_libs_armeabi = libs/ android/*.so
#android.add_libs_armeabi_v7a = libs/android-v7/*.so
#android.add_libs_x86 = libs/android-x86/*.so
#android.add_libs_mips = libs/android-mips/*.so

#屏幕是否常亮
# Don't forget to add the wAKE_LOCK permission if you set this to True#android.wakelock = False

#(list) Android应用程序元数据设置( key=value format)
#android.meta_data =

#要添加的Android库
#android.library_references =

#Android日志过滤
#android.logcat_filters = *:s python :D

#用复制库取代生成libpymodules.so
#android.copy_libs = 1

#主要构建的Android架构: armeabi-v7a,arm64-v8a，x86
#android.arch = armeabi-v7a

#
#Python for android (p4a) specific
#
#p4a特性
#下载python-for-android路径，为空默认从git下载
#p4a.source_dir =

#本地的构建方法
#p4a. local_recipes =

#p4a相关文件
#p4a.hook =

#用于构建Android的Bootstrap
#p4a.bootstrap = sdl2

#p4a端口号
#p4a.port =

#
#ios specific#
#
#iOS特性
#(str) Path to a custom kivy-ios folder#ios.kivy_ios_dir = ../kivy-ios
#Alternately，specify the URL and branch of a git checkout:
ios.kivy_ios_url = https: /lgithub.com/kivy/kivy-ios
ios.kivy_ios_branch = master

#Another platform dependency: ios-deploy
#Uncomment to use a custom checkout
#ios.ios_deploy_dir = ../ ios_deploy
# Or specify URL and branch
ios.ios_deploy_url = https://github.com/ phonegap/ios-deploy
ios.ios_deploy_branch = 1.7.0

#(str) Name of the certificate to use for signing the debug version
#Get a list of available identities: buildozer ios list_identities
#ios.codesign.debug = "iPhone Developer: <lastname><firstname> ( hexstring> )"

#(str) Name of the certificate to use for signing the release version
#ios.codesign.release = %(ios.codesign.debug)s

[buildozer]
#(int) Log level (0 = error only,1 = info，2 = debug (with command output))
#log_level = 2

#(int) Display warning if buildozer is run as root (e = False, 1 = True)
#warn_on_root = 1

#(str) Path to build artifact storage，absolute or relative to spec file
#build_dir - ./.buildozer

#(str) Path to build output (i.e. .apk，.ipa) storage
#bin_dir = ./bin

#-------------------------------------------------------------------------
#List as sections
#You can define all the "list" as [section:key].
#
#Each line wil1 be considered as a option to the list.
#
#Let's take [app] / source.exclude_patterns.
#
#Instead of doing:
#
#[app]
#source.exclude_patterns = license,data/audio/*.wav,data/images/original/*#
#
#	This can be translated into:
#
#[app: source.exclude_patterns]
#license
#data/audio/*.wav
#data/images/origina1/*
#

#-------------------------------------------------------------------------
#Profiles
#
#You can extend section / key with a profile
#For example，you want to deploy a demo version of your application without
#HD content. You could first change the title to add "(demo)" in the name
#and extend the excluded directories to remove the HD content.

#
#[app@demo]
#title = My Application ( demo)
#
#[app: source.exclude_patterns@demo]#images/hd/*
#
#Then，invoke the command line with the "demo" profile:
#
#buildozer --profile demo android debug
```

运行

```
buildozer android debug deploy run
buildozer -v android debug
```

