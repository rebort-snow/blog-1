# matlab

[TOC]

## 1 simulink

### 01 常用元件及位置

- 正弦波，三角波，方波

![image-20221118172140468](http://cdn.nidhogg-110.cn/typora/image-20221118172140468.png)

- 示波器

![image-20221118174122595](http://cdn.nidhogg-110.cn/typora/image-20221118174122595.png)

- 交直流电源

![image-20221118172655896](http://cdn.nidhogg-110.cn/typora/image-20221118172655896.png)

- 地

![image-20221201172713954](http://cdn.nidhogg-110.cn/typora/image-20221201172713954.png)

- 运算放大器

![image-20221201172427784](http://cdn.nidhogg-110.cn/typora/image-20221201172427784.png)

- 电流电压测量器

![image-20221118173101150](http://cdn.nidhogg-110.cn/typora/image-20221118173101150.png)

- 各种器件

![image-20221118173453651](http://cdn.nidhogg-110.cn/typora/image-20221118173453651.png)

- 电阻、电容、电感

![image-20221118173655081](http://cdn.nidhogg-110.cn/typora/image-20221118173655081.png)

### 02 常见问题

#### 001波形失真

- 三角波失真

  - 上一节介绍了两种产生三角波的方法在使用过程中，如果δ过小，导致失真

    ![失真的delta = 0.1](http://cdn.nidhogg-110.cn/typora/20200527135925555.png)

  - 经过分析，其原因在于simulink在仿真时，仿真时间步长相对固定（具体根据使用到的元件自动确定，但一般不会太高），如果脉冲持续时间过短则会导致仿真过程中跳过一些时间点。

  - 按下ctrl+e快捷键打开Model settings
    修改方框圈起来的参数（根据实际需要修改最大和最小时间步长，这里δ最小为0.0025所以我就设置最大时间步长为0.0001，最小时间步长为0.00001，以尽可能平滑）

    ![Model steeings设置](http://cdn.nidhogg-110.cn/typora/20200527141725592.png)

## 2 函数

### 根轨迹相关函数

1. pzmap( )函数调用

MATLAB 提供 pzmap( )函数来绘制系统的零极点分布图，其调用格式为：

```matlab
pzmap(num,den) %计算零极点并作图
[p,z]=pzmap(num,den) %返回变量格式，计算所得的零极点 p，z，返回至MATLAB 命令窗口，不作图。

% 注：分子多项式系数向量为 num，分母多项式系数向量为 den，在 s 平面上作零极点图，极点用“×”表示，零点用“ο”表示。
```

![Snipaste_2022-11-18_08-26-19](http://cdn.nidhogg-110.cn/typora/Snipaste_2022-11-18_08-26-19.png)

2. rlocus( )函数调用

MATLAB 提供 rlocus( )函数来绘制系统的根轨迹，其调用格式为：

```matlab
rlocus(num,den) % 根轨迹增益 k 的范围自动设定
rlocus(num,den,k) % 根轨迹增益 k 的范围可以人工设定
r=rlocus(num,den) % 返回变量格式，计算所得的闭环系统的特征根r，返回至 MATLAB 命令窗口，不作图
[r,k]=rlocus(num,den) % 返回变量格式，计算所得的闭环系统的特征根r和对应的开环增益值 k，返回至 MATLAB 命令窗口，不作图

% 注：调用 rlocus( )函数直接绘制根轨迹后，可以用鼠标点在轨迹曲线上某一点，然后在曲线上滑动，就会出现该点根轨迹的具体参数的显示窗。显示参数的含义说明如下：
% System： 对应的系统
% Gain： 根轨迹增益 K 的值
% Pole： 当前点的坐标值
% Damping： 阻尼系数
% Overshoot： 超调量
% Frequency： 该条根轨迹分值当前点对用的频率值
```

![Snipaste_2022-11-18_08-29-28](http://cdn.nidhogg-110.cn/typora/Snipaste_2022-11-18_08-29-28.png)

![Snipaste_2022-11-18_09-01-24](http://cdn.nidhogg-110.cn/typora/Snipaste_2022-11-18_09-01-24.png)

3. rlocfind( )函数调用

MATLAB 提供 rlocfind ( )函数用来在求出的根轨迹图上确定选定点的增益值 k 和闭环根 r 的值，其调用格式为：

```
[k,r]=rlocfind(num,den) %在作好的根轨迹图上，确定选定闭环系统的特征根位置的增益值 k 和闭环系统的特征根 r 的值。

 注：该函数命令执行前，先执行命令 rlocus(num,den)，作出根轨迹图，再执行此命令，出现提示语句“Select a point in the graphics window”，要求在根轨迹图上选定闭环系统的特征根的位置。将鼠标移至根轨迹图选定位置，单击左键确定，图上出现“+”标记，在 MATLAB 命令窗口中即得到了该点的增益 k 和闭环系统的特征根 r 的返回变量值
```

![Snipaste_2022-11-18_08-34-03](http://cdn.nidhogg-110.cn/typora/Snipaste_2022-11-18_08-34-03.png)



## 3 代码

### 01 matlan环境与基本操作

```matlab
t=0:0.1:10;                 % 给定仿真时间及其步距；格式：t=时间始，步距，时间末
y = 1-cos(t).*exp(-t)       % 函数
tt = [0,10,10,0]            % 边框x轴
yy = [0.95,0.95,1.05,1.05]  % 边框y轴
fill(tt,yy,'g')             % fill:填充:格式:fill（x轴，y轴，‘颜色’）；颜色是英文首字母加引号
hold on                     % hold on主要是用于添加新绘图的时候保留当前绘图
plot(t,y,'r')               % 绘制函数曲线
```

### 02 语言基础

1. MATLAB语言的常量与变量	

   1. MATLAB语言的常量	

   2. MATLAB语言的变量

      ```matlab
      abs(z)             % z为复数，abs(z)返回的模
      exp(z)             % 返回e^z
      ```

      

2. MATLAB语言的运算符

   1. 算术运算符	
   2. 关系运算符	
   3. 逻辑运算符	

3. MATLAB语言的数据类型

   1. MATLAB语言的数据类型概述	

   1. 稀疏矩阵（sparse matrix）	

   1. 单元数组（cell array）	

   1. 结构数组（structure array）	

4. MATLAB语言的基本语句结构

稀疏矩阵: 是指矩阵中大部分元素为0的矩阵。在计算机科学中，这种矩阵通常用于节省存储空间和计算时间，因为许多计算和操作可以忽略零元素。相比之下，密集矩阵是指大多数元素都不为零的矩阵，通常需要更多的存储空间和计算时间。在实际应用中，稀疏矩阵通常出现在大规模数据集的处理中，如图像处理、自然语言处理、推荐系统等领域。

```
sparse(A)				将全元素矩阵A转换成稀疏矩阵
S=sparse( i, j, s, m, n) m,n为最终产生的稀疏矩阵S的行列数，i,j,s为等维的相量
spdiags( )		      	 由对角元素产生稀疏矩阵
spconvert( )			 将外部数据文件转化为稀疏矩阵
sprand( )				 生成元素服从均匀分布的稀疏矩阵
sprandn( )		   		 生成元素服从正态分布的稀疏矩阵
S = speye(m,n)	   		 单位矩阵的稀疏矩阵表示
```

### 数理运算与符号运算

```
 A=[1 3 4]
 
 B=[1;3;4] 
 
 t=0:pi/4:pi

```

 % 这段 MATLAB 代码定义了一个名为 t 的向量，t 中包含从 0 到 pi 的一系列数值，步长为 pi/4，即每相邻两个数值之间相差 pi/4。
 % t = [0, pi/4, pi/2, 3*pi/4, pi]';

```
yourName=input('请输入您的姓名：\n','s')
请输入您的姓名：

```

```
A=magic(3)
```

% 这行Matlab代码用于创建一个3x3的魔方阵，将其赋值给变量A。魔方阵是一个矩阵，其每一行、每一列和对角线上的元素之和都相等。在Matlab中，magic(n)可以用于创建一个n阶的魔方阵。例如，magic(4)将返回一个4x4的魔方阵。

```
B=eye(size(A))
```

% 首先，size(A)返回矩阵A的大小，对于magic(3),它是一个3×3的矩阵。
%然后，eye(n)函数返回一个n×n的单位矩阵，其中对角线上的元素为1，其余元素为日。因此，eye(size(A))会生成一个3×3的单位矩阵。

```
t=logspace(0,5,6)
```

% 这行代码是在 MATLAB 中生成一个行向量 t，其元素由对数空间中从 10^0 到 10^5 之间均匀分布的 6 个点组成。
% 其中，logspace 是 MATLAB 中的一个函数，用于在对数尺度上生成等间隔的向量，其函数调用形式为：
% logspace(start, stop, n)

```
A(1:2:3,[2,3])
```


% 这行代码是在提取矩阵 A 中的特定元素。它的意思是提取 A 矩阵中第 1、3 行的第 2、3 列元素，步长为 2。具体解释如下：![image-20230313143342355](http://cdn.nidhogg-110.cn/typora/image-20230313143342355.png)

```
A2=A(:,3:end)
```

这个语句将矩阵A的所有行和从第3列开始的所有列赋值给矩阵A2，即将A矩阵的第1列和前两列去掉，A2矩阵的第1列对应A的第3列，以此类推。



```
A = [1, 2; 3, 4];
A_inv = inv(A);
```

这里，`A` 是输入矩阵，`inv(A)` 返回其逆矩阵，存储在 `A_inv` 中。需要注意的是，不是所有的矩阵都有逆矩阵，如果一个矩阵没有逆矩阵，则称其为奇异矩阵（singular matrix）。
