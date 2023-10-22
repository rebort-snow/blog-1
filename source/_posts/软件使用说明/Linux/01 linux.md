---

title: 'linux'

date: 2023-02-03 00:00:00

---

# Linux

[TOC]

## 常用命令

```
# 更改权限
chmod -R 777 node 
# 更改文件所有者
chown -R lighthouse:lighthouse node-v16.15.0-linux-x64
# 创建文件夹
mkdir [文件夹名]
# 创建文件
vi [文件名+后缀]
# 复制文件
cp [要复制的文件] [目标目录]
# 复制文件夹
cp -r dir1 dir2/
# 在将python默认版本修改为3后yum报错
https://www.shuzhiduo.com/A/gAJGpKbg5Z/
```



## 保塔安装

```
# root 权限
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh ed8484bec      

外网面板地址: http://43.143.137.233:8888/nidhogg-
内网面板地址: http://10.0.16.7:8888/5da27aaa
username: fkqoiepu
password: 1607c509

```

su 报错bash: __bp_precmd_invoke_cmd: command not found

````
# 进入root权限
cd /root
ls -a
vim .bashrc
在行尾添加unset PROMPT_COMMAND
退出
source .bashrc
https://blog.csdn.net/lzsm_/article/details/126083649
````



## blog

### hexo

#### 01 nodejs安装

官网下载：https://nodejs.org/en/download/

https://nodejs.org/dist/

上传，解压

```
# tar -xvf [压缩包] -c [目标位置]
# 高版本的node系统不兼容，选择16b
tar -xvf node-v16.15.0-linux-x64.tar.xz 

```

配置环境变量

```
# 管理员身份在解压的目标上一层位置用 ll -A找到.hasbrc
# https://www.bilibili.com/video/BV1yp4y197o7/?spm_id_from=333.337.search-card.all.click&vd_source=e5c8fa28ff94e2811b174fd5f695bab8

cd /home/lighthouse/
ll -A
sudo vim .bashrc
# 最后添加
export PATH=$PATH:/home/lighthouse/node-v16.15.0-linux-x64/bin
# 退出后刷新
source .bashrc

node -v
npm -v
```

#### npm

升级

```
npm install -g npm
# 也可以指定版本
npm install -g npm@8.5.3
```

安装、卸载

```
npm un hexo-renderer-marked
npm i hexo-renderer-pandoc
```

这里还需要提一下的是`npm`默认的官网源可能会比较慢，如果想要后续的下载速度快一些，可以通过下面的方式将源设置为淘宝源。

```
npm config get registry
# 查看原来的源
npm config set registry https://registry.npm.taobao.org
# 修改为淘宝源
npm config get registry
# 查看现在的源
```



#### 02 安装hexo

```
npm install hexo-cli -g
```

创建blog目录

```
hexo init [目录] 
```

git 托管

```
git init

----------------------------------------------------------------
如果报错
    hint: Using 'master' as the name for the initial branch. This default branch name
    hint: is subject to change. To configure the initial branch name to use in all
···
执行
git config --global init.defaultBranch main
################################################################
如果报错
	bash: git: command not found
执行
yum install -y git
----------------------------------------------------------------

git config --global user.name 'rebort-snow'
git config --global user.email '745406531@qq.com'
```

配置ssh

```
https://blog.csdn.net/qq_40047019/article/details/122898308
```

在博客目录的_config最后面完善

```
deploy:
  type: 'git'
  repo: 'git@github.com:rebort-snow/rebort-snow.github.io.git'
  branch: main
```

安装插件

```
npm install hexo-deployer-git --save
```

#### 01 基本指令

1. 745406531@qq.com
2. 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
3. hexo clean # 清理缓存
4. hexo g # 生成文件
5. hexo s # 本地预览
6. hexo d # 上传git仓库
7. hexo clean & hexo g && hexo d
8. git status
9. git add .
10. git branch -M main
11. git commit -m "first commit"
12. git push
13. 链接:http://43.143.137.233:32352/down/5wgjlNLi3jw1.git/index 提取码:ZNxc25

#### 02 [文章加密](https://blog.csdn.net/wwlk123/article/details/124436871)

 1.  博客目录下安装插件

     ```
     npm install hexo-blog-encrypt
     ```

 2.  添加_config.yml配置:

     ```	YML
     encrypt:
       enable:true
     ```

 3.  文章设置加密字段：

     ```markdown
     ---
     title:       
     date:
     password:
     message:
     ---
     
     ---
     title:        # 标题
     date:		 # 日期
     password:	  # 密码
     message:	 # 密码提示信息
     ---
     ```



#### 03 文章局部HTML代码不渲染



### butterfly

#### 01 安装:



#### 1 butter无法显示图片

- 图床需要有ssl证书，可在freessl获取(csr自己设置，CDN自动验证，大概10min)
  - ![image-20230719131923105](http://cdn.nidhogg-110.cn/typora/image-20230719131923105.png)

- [解决hexo引入图床，手机和web不显示图片的问题 - 简书 (jianshu.com)](https://www.jianshu.com/p/5b58ecce6443)

<img src="http://cdn.nidhogg-110.cn/typora/image-20221106185159998.png" alt="image-20221106185159998" style="zoom: 67%;" />

<img src="http://cdn.nidhogg-110.cn/typora/image-20221106185216478.png" alt="image-20221106185216478" style="zoom: 80%;" />

![image-20221107193612000](http://cdn.nidhogg-110.cn/typora/image-20221107193612000.png)



#### 2 底部透明

修改/home/lighthouse/blog/node_modules/hexo-theme-butterfly/source/css/_layout下的footer.styl文件

![image-20221123160159212](http://cdn.nidhogg-110.cn/typora/image-20221123160159212.png)



## python

安装pip3

```
sudo yum install python3-pip
```

root冲突

```
WARNING:Rumning pip as the 'root'user can result in broken permissions and conflicting behaviour w ith the system package manager.It is recommended to use a virtual environment instead:https://pip. pypa.io/warnings/venv

# 解决方法
# 创建虚拟环境

# 安装virtualenv：运行pip install virtualenv命令来安装virtualenv模块。
pip install virtualenv

# 创建虚拟环境：运行virtualenv venv命令来创建一个名为"venv"的虚拟环境。
virtualenv venv

# 激活虚拟环境：运行source venv/bin/activate（Linux/MacOS）或venv\Scripts\activate（Windows）命令来激活虚拟环境。激活虚拟环境后，所有后续的pip命令都会在虚拟环境中运行。
source venv/bin/activate

# 在虚拟环境中使用pip：现在，你可以使用pip来安装需要的Python包，例如运行pip install requests命令来安装requests包。所有安装的包都将存储在虚拟环境中，不会影响系统中的其他Python应用程序或包。

# 退出虚拟环境：当你完成工作时，可以运行deactivate命令来退出虚拟环境。
deactivate
```

创建python文件

```
vi hello.py
```

运行python文件

``` 
python hello.py
```







## DOCKER

### 青龙面板

京东网址

```
https://trade.m.jd.com/order/orderlist_jdm.shtml?sceneval=2&jxsid=16807420685832074890&orderType=waitReceipt&ptag=7155.1.13&source=my
```

