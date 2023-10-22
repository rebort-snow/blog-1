使用 OpenAI API 进行快速工程的最佳实践

如何向 GPT-3 和法典委员会提供清晰有效的指示

**J**

作者：Jessica Shieh。 一周前更新

 

 

💡`If you're just getting started with OpenAI API, we recommend reading the Introduction and Quickstart tutorials first.`

 

# **快速工程设计的工作原理**

由于指令遵循[模型](https://beta.openai.com/docs/models)的训练方式或训练数据的方式，有一些特定的提示格式工作得特别好，并且与手头的任务更一致。下面我们介绍了一些我们认为效果可靠的提示格式，但请随意探索可能最适合您任务的不同格式。

 

 

# **经验法则和示例**

**注意**：“*{此处输入文本}*”是实际文本/上下文的占位符

 

## **1.** 使用最新型号

为了获得最佳效果，我们通常建议使用最新、功能最强大的模型。截至 2022 年 003 月，最佳选择是用于文本生成的“text-davinci-003”模型和用于代码生成的"code-davinci-002"  [模型](https://beta.openai.com/docs/models)。

 

 

## **2. 将指令放在提示的开头，并使用 ### 或 “”“ 将指令和上下文分开**

效果❌较差 ：

```
Summarize the text below as a bullet point list of the most important points.

{text input here}
```

 

更好 ✅ ：

```
Summarize the text below as a bullet point list of the most important points.

Text: """
{text input here}
"""
```

 

 

## **3. 对所需的上下文、结果、长度、格式、风格等要具体、描述性并尽可能详细** 

具体说明上下文、结果、长度、格式、风格等

 

效果❌较差 ：

```
Write a poem about OpenAI. 
```

 

更好 ✅ ：

```
Write a short inspiring poem about OpenAI, focusing on the recent DALL-E product launch (DALL-E is a text to image ML model) in the style of a {famous poet}
```

 

 

## **4. 通过示例（示例 [1](https://beta.openai.com/playground/p/DoMbgEMmkXJ5xOyunwFZDHdg)、[示例 2](https://beta.openai.com/playground/p/3U5Wx7RTIdNNC9Fg8fc44omi)）阐明所需的输出格式。**

效果❌较差 ：

```
Extract the entities mentioned in the text below. Extract the following 4 entity types: company names, people names, specific topics and themes.

Text: {text}
```

显示和告诉 - 当显示特定格式要求时，模型响应更好。这也使得以编程方式可靠地解析多个输出变得更加容易。

 

更好 ✅ ：

```
Extract the important entities mentioned in the text below. First extract all company names, then extract all people names, then extract specific topics which fit the content and finally extract general overarching themes

Desired format:
Company names: <comma_separated_list_of_company_names>
People names: -||-
Specific topics: -||-
General themes: -||-

Text: {text}
```

 

 

## **5.从零镜头开始，然后是少数镜头（[示例](https://beta.openai.com/playground/p/Ts5kvNWlp7wtdgWEkIAbP1hJ)），两者都不起作用，然后微调**

✅ 零射击

```
Extract keywords from the below text.

Text: {text}

Keywords:
```

 

✅ 少镜头 - 提供几个例子

```
Extract keywords from the corresponding texts below.

Text 1: Stripe provides APIs that web developers can use to integrate payment processing into their websites and mobile applications.
Keywords 1: Stripe, payment processing, APIs, web developers, websites, mobile applications
##
Text 2: OpenAI has trained cutting-edge language models that are very good at understanding and generating text. Our API provides access to these models and can be used to solve virtually any task that involves processing language.
Keywords 2: OpenAI, language models, text processing, API.
##
Text 3: {text}
Keywords 3:
```

 

✅微调：[在此处](https://docs.google.com/document/d/1h-GTjNDDKPKU_Rsd0t1lXCAnHltaXTAzQ8K2HRhQf9U/edit#)查看微调最佳做法。

 

 

## **6. 减少“蓬松”和不精确的描述**

效果❌较差 ：

```
The description for this product should be fairly short, a few sentences only, and not too much more.
```

 

更好 ✅ ：

```
Use a 3 to 5 sentence paragraph to describe this product.
```

 

 

## **7.不要只说不该做什么，而是说该做什么**

效果❌较差 ：

```
The following is a conversation between an Agent and a Customer. DO NOT ASK USERNAME OR PASSWORD. DO NOT REPEAT.

Customer: I can’t log in to my account.
Agent:
```

 

更好 ✅ ：

```
The following is a conversation between an Agent and a Customer. The agent will attempt to diagnose the problem and suggest a solution, whilst refraining from asking any questions related to PII. Instead of asking for PII, such as username or password, refer the user to the help article www.samplewebsite.com/help/faq

Customer: I can’t log in to my account.
Agent:
```

 

 

## **8. 特定于代码生成 - 使用“引导词”将模型推向特定模式**

效果❌较差 ：

```
# Write a simple python function that
# 1. Ask me for a number in mile
# 2. It converts miles to kilometers
```

 

在下面的代码示例中，向模型添加“*import*”提示，提示它应该开始用 Python 编写。（类似地，“SELECT”是SQL语句开头的一个很好的提示。

 

更好 ✅ ：

```
# Write a simple python function that
# 1. Ask me for a number in mile
# 2. It converts miles to kilometers
 
import
```

 

 

# **参数** 

通常，我们发现模型和**`温度`**是改变**`模型`**输出的最常用参数。

1. **`型号` -**性能更高的[模型](https://beta.openai.com/docs/models)成本更高，延迟也更高。
2. **`温度` -** 模型输出不太可能的令牌的频率的度量。越高，输出越随机（通常是创造性的）。然而，这与“真实性”不同。对于大多数事实用例，如数据提取和真实问答，0是最好的。`temperature``temperature`
3. **`max_tokens`**（**最大长度）** - 不控制输出的长度，但控制令牌生成的硬截止限制。理想情况下，您不会经常达到此限制，因为您的模型将在认为已完成或达到您定义的停止序列时停止。
4. stop （**`stop` sequences）** - 一组字符（标记），在生成时将导致文本生成停止。

有关其他参数说明，请参阅 [API 参考](https://beta.openai.com/docs/api-reference/completions/create)。

 

 

# **其他资源**

如果您对其他资源感兴趣，我们建议您：

- 指南
  - [文本补全](https://beta.openai.com/docs/guides/completion/text-completion) - 了解如何使用我们的模型生成或编辑文本
  - [代码完成](https://beta.openai.com/docs/guides/code/code-completion-private-beta) - 探索 Codex 的快速工程设计
  - [微调](https://beta.openai.com/docs/guides/fine-tuning/fine-tuning) - 了解如何为您的用例训练自定义模型
  - [嵌入](https://beta.openai.com/docs/guides/embeddings/embeddings) - 了解如何搜索、分类和比较文本
  - [适度](https://beta.openai.com/docs/guides/moderation/moderation)
- [OpenAI 说明书存储库](https://github.com/openai/openai-cookbook/tree/main/examples) - 包含使用 API 完成常见任务的示例代码和提示，包括使用嵌入进行问答
- [社区论坛](https://community.openai.com/)