





```c#
#include "stm32f10x.h"                  // 引入STM32F10x系列单片机的设备头文件
#include "Delay.h"                      // 引入延时函数头文件

int main(void)
{
	// 启用GPIOA的时钟
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	
	// 定义GPIO初始化结构体变量
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;    // 输出模式，推挽输出
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_5;   // 要配置的引脚
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;    // IO口速度为50MHz
	GPIO_Init(GPIOA, &GPIO_InitStructure);   // 初始化GPIOA的引脚
	
	while(1)
	{
		// 将GPIOA的引脚0设置为低电平
		GPIO_WriteBit(GPIOA, GPIO_Pin_0, Bit_RESET);
		Delay_ms(500);   // 延时500毫秒
		
		// 将GPIOA的引脚0设置为高电平
		GPIO_WriteBit(GPIOA, GPIO_Pin_0, Bit_SET);
		Delay_ms(500);   // 延时500毫秒
		
		// 将GPIOA的引脚5设置为低电平
		GPIO_WriteBit(GPIOA, GPIO_Pin_5, Bit_RESET);
		Delay_ms(500);   // 延时500毫秒
		
		// 将GPIOA的引脚5设置为高电平
		GPIO_WriteBit(GPIOA, GPIO_Pin_5, Bit_SET);
		Delay_ms(500);   // 延时500毫秒
	}
}

```

