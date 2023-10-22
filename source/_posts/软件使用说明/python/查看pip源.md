1. 打开pip配置文件：

```
javascriptCopy code
nano ~/.pip/pip.conf
```

如果您的系统没有该文件，可以先创建一个：

```
bashCopy codemkdir -p ~/.pip
touch ~/.pip/pip.conf
```

1. 在配置文件中添加以下内容：

```
csharpCopy code[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```

1. 保存并关闭文件。

现在，您的pip源已更改为清华源。