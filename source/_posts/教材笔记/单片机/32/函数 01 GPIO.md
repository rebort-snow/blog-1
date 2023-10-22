# GPIO

[TOC]

# GPIO 常用函数

```
void GPIO_DeInit(GPIO_TypeDef* GPIOx);# 该函数用于将指定的GPIO端口恢复到默认状态。它会重置GPIO的配置寄存器和掩码寄存器，将所有引脚设置为输入模式，关闭所有中断和事件，并禁用所有上拉和下拉电阻。
void GPIO_AFIODeInit(void);# 该函数用于将AFIO外设恢复到默认状态。它会重置AFIO的控制寄存器，将所有外设引脚的复用功能设置为默认值。
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);# 该函数用于初始化指定GPIO端口的引脚配置。它根据提供的GPIO_InitTypeDef结构体中的参数配置GPIO的模式、速度、上下拉设置和输出类型。
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);# 该函数用于将GPIO_InitTypeDef结构体的成员设置为默认值。它将所有成员设置为0或默认模式，以便在使用结构体初始化GPIO配置时避免未定义的值。
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);# 该函数用于读取指定GPIO端口和引脚的输入状态。它返回引脚的当前输入状态，0表示低电平，1表示高电平。
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);# 该函数用于读取指定GPIO端口的输入状态。它返回整个端口的当前输入状态，每个引脚对应一个位，0表示低电平，1表示高电平。
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);# 该函数用于读取指定GPIO端口和引脚的输出状态。它返回引脚的当前输出状态，0表示低电平，1表示高电平。
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);# 该函数用于读取指定GPIO端口的输出状态。它返回整个端口的当前输出状态，每个引脚对应一个位，0表示低电平，1表示高电平。
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);# 该函数用于设置指定GPIO端口和引脚为高电平输出。它将指定引脚的输出寄存器设置为1，将引脚的电平拉高。
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);# 该函数用于设置指定GPIO端口和引脚为低电平输出。它将指定引脚的输出寄存器设置为0，将引脚的电平拉低。
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);# 该函数用于设置指定GPIO端口和引脚的输出状态。通过传递BitAction参数，可以将引脚设置为高电平或低电平输出。
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);# 该函数用于同时设置指定GPIO端口的多个引脚的输出状态。通过传递PortVal参数，可以设置整个端口的输出状态，每个引脚对应PortVal中的一个位。
```

## GPIO的8种输出模式

| 序号 | 模式                  | 描述                                                     | 说明                                                         |
| ---- | --------------------- | -------------------------------------------------------- | ------------------------------------------------------------ |
| 1    | GPIO_Mode_AIN         | 模拟输入模式（Analog Input）                             | GPIO被配置为模拟输入，用于连接模拟外设或测量模拟信号         |
| 2    | GPIO_Mode_IN_FLOATING | 浮空输入模式（Floating Input）                           | GPIO被配置为输入，但没有上下拉电阻，引脚处于浮空状态         |
| 3    | GPIO_Mode_IPD         | 下拉输入模式（Input Pull-Down）                          | GPIO被配置为输入，并启用下拉电阻，引脚在未连接外部信号时会被拉低 |
| 4    | GPIO_Mode_IPU         | 上拉输入模式（Input Pull-Up）                            | GPIO被配置为输入，并启用上拉电阻，引脚在未连接外部信号时会被拉高 |
| 5    | GPIO_Mode_Out_OD      | 开漏输出模式（Open-Drain Output）                        | GPIO被配置为输出，输出是开漏的，通常需要外部上拉电阻将引脚拉高 |
| 6    | GPIO_Mode_Out_PP      | 推挽输出模式（Push-Pull Output）                         | GPIO被配置为输出，可以提供高电平和低电平两种状态             |
| 7    | GPIO_Mode_AF_OD       | 复用开漏输出模式（Alternate Function Open-Drain Output） | GPIO被配置为复用功能输出，输出是开漏的                       |
| 8    | GPIO_Mode_AF_PP       | 复用推挽输出模式（Alternate Function Push-Pull Output）  | GPIO被配置为复用功能输出，可以提供高电平和低电平两种状态     |