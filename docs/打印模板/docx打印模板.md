---
title: docx打印模板

parent: 两种打印模板docx和pdf

nav_order: 1
---

>上一次更新11月18日，2025  
>Alex 编写

# docx打印模板
{: .no_toc }  

## 目录  
{: .no_toc .text-delta }  

1. TOC
{:toc}  

## 准备工作

您已经学习了如何创建填表服务和基础的表单设计，现在是时候了解如何将表单打印输出了。

### 前提条件

- 从客户得到的打印模板文件，通常是一个.docx文件。
- 已经创建并发布了这个填表服务。
- 编辑xml模板文件的工具（[在线xml格式化](https://www.jyshare.com/front-end/710/)、[visual studio code搭配xml插件](./visualStudioCode.md)）


## 打印模板文件

客户给到的打印模板文件通常是一个.docx文件，首先您确保已经创建并且发布了这个填表服务。

然后我们要做的就是在客户完成相关审批后，将在线表单中的数据填充到这个打印模板中，生成最终的打印文件。

![打印模板](../images/打印模板/0打印模板.png)  

---  

 1.在线表单对应ID
- 例如：这是我的在线表单，设置的姓名ID为`XM`  

![对应id](../images/打印模板/0对应id.png)  

 2.在`.docx`模板中填上对应ID
>这步操作是为了在后续替换字段时，方便我们找到对应位置。  

![打印模板](../images/打印模板/0文档打印模板教程.png)  

>注意：  
>- 一定要确保在线表单中的ID和打印模板中的ID一致，否则无法正确替换字段。  
>- 保存word文档时，请不要将光标移动到任何ID位置，这可能触发word的书签功能，导致后续替换字段失败。  

## 将docx文件重命名为xml文件
将客户提供的.docx文件后缀名改为xml文件，方便我们后续进行编辑。

![重命名](../images/打印模板/1另存.png)


## 编辑xml文件
使用文本编辑器[在线xml格式化](https://www.jyshare.com/front-end/710/)或者[visual studio code搭配xml插件](./visualStudioCode.md)打开xml文件，找到需要替换的字段位置。  

>这里我推荐使用vscode搭配xml插件，方便我们进行格式化和查找替换操作。  
>使用在线xml主要是方便没有安装visual studio code的用户。  

- 打开网页，选择文件
![选择文件](https://fastly.jsdelivr.net/gh/userAlex110/my-images@main/images/2025/11/24/step-1_1763990247229.png)  

- 格式化xml文件
![格式化xml](https://fastly.jsdelivr.net/gh/userAlex110/my-images@main/images/2025/11/24/step-2_1763990249443.png)  

- 查找对应ID位置，例如`XM`，将其修改为`${XM}`
- 其余ID同理，`${ID}`。
![修改格式](https://fastly.jsdelivr.net/gh/userAlex110/my-images@main/images/2025/11/24/step-4_1763990253214.png)  

- 全部修改完成，点击 *复制* 按钮
- 之后保存复制的内容到xml文件中
![复制内容](https://fastly.jsdelivr.net/gh/userAlex110/my-images@main/images/2025/11/24/step-5_1763990254913.png)  

- 可以用记事本打开xml文件，粘贴保存
<div style="display:flex;gap:12px;align-items:flex-start;">
  <img src="https://fastly.jsdelivr.net/gh/userAlex110/my-images@main/images/2025/11/24/step-6_1763990256706.png" alt="记事本" style="width:49%;height:auto;">
  <img src="https://fastly.jsdelivr.net/gh/userAlex110/my-images@main/images/2025/11/24/step-7_1763990258867.png" alt="保存" style="width:49%;height:auto;">
</div>

## 将xml文件重命名为ftl文件

直接在记事本里 --> 文件 --> 另存为 --> 文件名改为`xxx.ftl`，保存类型选择`所有文件`，编码选择`UTF-8`，点击保存即可。  

![记事本另存](../images/打印模板/记事本另存.png)  


## 上传ftl文件到打印模板

- 接下来请你阅读，[上传打印模板](./上传打印模板.md)
