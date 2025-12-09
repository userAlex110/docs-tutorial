---
title: pdf打印模板参考

parent: 两种打印模板docx和pdf

nav_order: 3

---

>上一次更新12月9日，2025  
>Alex 
# pdf打印模板参考  


## 目录  
{: .no_toc .text-delta }  

1. TOC
{:toc}  




## 制作PDF打印模板的方法  


制作PDF打印模版，说白了就是做如下几件事：  

- 制做一个html网页；
- 把动态的部分用变量占位；
- 把文件的后缀名html改成ftl。  


## 制作html网页  


关键在于制作html网页，它有很多需要注意的地方：  

1. 由于你只能上传一个打印模版ftl文档，所以这个html文件不能引用外部的css文件，所有样式要不然写到style标签里，要不然写到元素的style属性里；  

2. **所有的中文内容都必须指定字体**，要不然导出的pdf里，没有指定font-family的中文内容不显示。  

    > 仅支持以下五种字体（准确说是四种）：
    > 
    > - SimSun，宋体
    > - NSimSun，新宋体
    > - FangSong，仿宋
    > - SimHei，黑体
    > - KaiTi，楷体  

    > 写样式的时候，**不能写font-family: 宋体; 要写font-family: NSimSun;**
    > 
    > 请注意，**不管是静态的部分，还是用变量占位的动态部分，只要是有可能出现中文，都要指定字体**。所以最好直接定义body的字体，例如：  

    > ```html
    > <html>
    > <head>
    > <style>
    > body {font-family: SimHei; }
    > </style>
    > </head>
    > <body>
    > ...
    > </body>
    > </html>
    > ```  

3. **建议所有的"字体大小"或者"字符缩进"都用pt做单位，而不用px**。px就是pixel，像素，是屏幕上显示数据的最基本的点，而pt就是point，磅，是印刷行业常用单位，等于1/72英寸。例如："font-size:14pt;"表示字体大小四号字，"text-indent:28pt;"表示以四号字的大小，缩进两个字。  

    > 下面是中文字号与pt的对应关系：  

    | 字号 | 磅（pt） |
    |------|----------|
    | 初号 | 42 |
    | 小初 | 36 |
    | 一号 | 26 |
    | 小一 | 24 |
    | 二号 | 22 |
    | 小二 | 18 |
    | 三号 | 16 |
    | 小三 | 15 |
    | 四号 | 14 |
    | 小四 | 12 |
    | 五号 | 10.5 |
    | 小五 | 9 |
    | 六号 | 7.5 |
    | 小六 | 6.5 |
    | 七号 | 5.5 |
    | 八号 | 5 |  

4. 页面里不能用类似空格**&nbsp;**这样的转移字符，以&开头的文字会被认为是个变量，尽量删除html里所有&开头的内容，类似&nbsp;这样的转移字符尽量删掉，用样式实现。**如果非要用不可，可以用其十进制，例如，可以搜索"&nbsp;"替换为"&#160;"**。  

    | 字符 | 十进制（可以用） | 转义字符（不能用） |
    |------|------------------|--------------------|
    | " | &#34; | " |
    | & | &#38; | & |
    | < | &#60; | < |
    | > | &#62; | > |
    | 不断开空格(non-breaking space) | &#160; | &nbsp; |  

5. 有时候我们会遇到"加水印"的需求，这个时候html文件就需要引用图片，还是因为你只能上传一个打印模版ftl文档，所以这个html不能引用外部的图片文件，**所有图片要经过Base64编码写到模版文件里**。所以这个图片不能太大，最好不要超过300K。  

    > 可以搜到很多帮你编码的网站，例如：https://www.sojson.com/image2base64.html。
    > 
    > 附上使用说明：
    > 
    > ```css
    > /* Base64 在CSS中的使用 */
    > .box{
    > background-image: url("data:image/jpg;base64,/9j/4QMZR...");
    > }
    > ```
    > 
    > ```html
    > <!-- Base64 在HTML中的使用 -->
    > <img src="data:image/jpg;base64,/9j/4QMZR..." />
    > <div style='background-image:url("data:image/jpg;base64,/9j/4QMZR...");'></div>
    > ```

6. 可以通过@page指令设置纸张大小，纸张方向，页边距等，示例：

    > ```css
    > @page{size:A4;margin:2.54cm 3.18cm;}
    > /*A4纸，纵向打印（默认），上下页边距2.54cm，左右页边距3.18cm。*/
    > 
    > @page{size:A3 landscape;margin:2.54cm 3.28cm;}
    > /*A3纸，横向打印，上下页边距2.54cm，左右页边距3.28cm。*/
    > ```
    > 
    > ```html
    > <html>
    > <head>
    > <style>
    > @page{size:A4;margin:2.54cm 3.18cm;}
    > </style>
    > </head>
    > <body>
    > ...
    > </body>
    > </html>
    > ```  

7. \@page指令还可以设置页码和页头等信息，示例：  

    > ```css
    > @page{
    > @bottom-center {content: "第 " counter(page) " 页";font-family: SimHei;}
    > @top-right {content: "No.${FK_ID}";}
    > }
    > ```  

    ![页码和页头](../images/打印模板/pdf模板/图片0.png/)  

    想在更多位置放置内容，请参考下图：  
    ![更多位置](../images/打印模板/pdf模板/图片1.jpg)  

    > ```html
    > <html>
    > <head>
    > <style>
    > @page{
    > size:A4;margin:2.54cm 3.18cm;
    > @bottom-center {content: "第 " counter(page) " 页";font-family: SimHei;}
    > @top-right {content: "No.${FK_ID}";}
    > }
    > </style>
    > </head>
    > <body>
    > ...
    > </body>
    > </html>
    > ```  

8. 如何解决"英文字母或数字过长一直不换行"的问题？   

    ![超长](../images/打印模板/pdf模板/图片2.jpg)

    解决方法：  

    使用CSS样式`word-wrap:break-word; word-break:break-all;` 即可。  

    > ```html
    > <html>
    > <head>
    > <style>
    > body {word-wrap:break-word; word-break:break-all;}
    > </style>
    > </head>
    > <body>
    > ...
    > </body>
    > </html>
    > ```  

    解决后效果：  

    ![解决超长](../images/打印模板/pdf模板/图片3.jpg)

9. 如何设置"表格的一行不跨页"？  

    解决方法：设置tr的样式禁止表格的一行显示在两页里。  

    ```css
    tr {page-break-inside:avoid; page-break-after:auto;}
    ```  

    > ```html
    > <html>
    > <head>
    > <style>
    > tr {page-break-inside:avoid; page-break-after:auto;}
    > </style>
    > </head>
    > <body>
    > ...
    > </body>
    > </html>
    > ```  

10. 如果你编写html的能力不是很强，可以先使用在线富文本编辑器UEditor的可视化编辑功能，把文档做个大概。  

    网址是：<https://ueditor.baidu.com/website/onlinedemo.html>  

    ![UEditor](../images/打印模板/pdf模板/图片4.jpg)  

    点"HTML"按钮进入"源码"编辑模式，先把内容复制出来，

    ![](../images/打印模板/pdf模板/图片5.jpg)

    然后粘贴到如下内容的body标签里，

    > ```html
    > <html>
    > <head>
    > <style type="text/css">
    > @page{size:A4;margin:2.54cm 3.18cm;}
    > body {font-family: SimHei; word-wrap:break-word; word-break:break-all;}
    > tr {page-break-inside:avoid; page-break-after:auto;}
    > </style>
    > </head>
    > <body>
    > <!-- 代码复制到这里 -->
    > </body>
    > </html>
    > ```

    > 之后再编辑这个html，会轻松很多。  


### 把html中动态的部分用变量占位  

这部分主要是要知道有哪些变量，还有freemarker的语法。  

1. 正常参数：`\${F表字段名（大写）}`，例如：姓名字段，表单控件的ID如果是XM的话，这里的变量就是`\${XM}`；还有`\${FK_ID}`是申请编号，也就是流程实例ID，所有的表单都有这个变量。  

2. "下拉菜单"和"输入联想"类型字段参数，`\${F表字段名（大写）}`输出的是"选项值"，如果想输出"选项文本"，可以在参数后面加"**_TEXT**"。  

    > 例如：`\${BM_TEXT}` //下拉菜单"部门"的部门名称。  

3. Grid字段参数，需要用list命令遍历，示例：  

    > ```html
    > <#list grid_0 as personItem>
    > <#if personItem_index%2==1>
    > <tr class="nthTr">
    > </#if>
    > <#if personItem_index%2==0>
    > <tr>
    > </#if>
    > <td>${personItem.XH}</td>
    > <td>${personItem.XM}</td>
    > <td>${personItem.CJ}</td>
    > </tr>
    > </#list>
    > ```  

4. 日期类型字段的参数，也是`\${F表字段名（大写）}`，默认输出格式为：yyyy-mm-dd。  

    > 如果想单独输出年月日时分秒，可以在参数后面加"**_格式**"。例如：`\${F表字段名（大写）_yyyy}` //某一日期字段的四位年。
    > 
    > 全部格式有：  

    | 格式 | 说明 |
    |------|------|
    | yyyy | 四位年 |
    | yy | 两位年 |
    | mm | 两位月 |
    | dd | 两位日 |
    | hh | 两位时（24小时） |
    | mi | 两位分 |
    | ss | 两位秒 |
    | yyyy_CN | 中文写法年（例：二〇二一） |
    | mm_CN | 中文写法月（例：十二） |
    | dd_CN | 中文写法日（例：二十四） |  

5. 办理详情（各节点办理结果、办理意见等）参数，需要用list命名遍历，示例：  

    > ```html
    > <#list APPROVE_HISTORY as history>
    > <#if history_index%2==1>
    > <tr class="nthTr">
    > </#if>
    > <#if history_index%2==0>
    > <tr>
    > </#if>
    > <td>${history.approve_name}</td> <!--任务环节-->
    > <td>${history.approve_person}</td> <!--办理人-->
    > <td>${history.approve_opinion}</td> <!--办理意见-->
    > <td>${history.approve_result}</td> <!--办理结果-->
    > <td>${history.approve_date}</td> <!--办理时间-->
    > </tr>
    > </#list>
    > ```  

6. 各节点最后一个办理详情参数：  

    ```html
    ${节点名称_LAST.approve_person} <!--某节点的最终办理人-->
    ${节点名称_LAST.approve_opinion} <!--某节点的最终办理意见-->
    ${节点名称_LAST.approve_result} <!--某节点的最终办理结果-->
    ${节点名称_LAST.approve_date} <!--某节点的最终办理时间-->
    ${节点名称_LAST.SIGNATURE_SRC} <!--某节点的最终办理人手写签名-->
    ```  

7. 其它默认参数  

    ```html
    ${FK_ID} <!--申请编号-->
    ${CURRENT_USER_ID} <!--当前操作人ID-->
    ${CURRENT_USER_NAME} <!--当前操作人姓名-->
    ${CURRENT_USER_UNIT} <!--当前操作人部门-->
    ${CREATE_USER_ID} <!--服务发起人ID-->
    ${CREATE_USER_NAME} <!--服务发起人姓名-->
    ${CREATE_USER_UNIT} <!--服务发起人部门-->
    ${SYSDATE} <!--当前日期，默认输出格式为：yyyy-mm-dd，如果想单独输出年月日时分秒，可以在参数后面加"\_格式"。-->
    ${START_DATE} <!--是申请时间，默认输出格式为：yyyy-mm-dd，如果想单独输出年月日时分秒，可以在参数后面加"\_格式"。-->
    ```  

8. 再讲一个显示审批日期+5天的高级需求  

    我遇到一个需求：国际处在审批之后有5天的公示期，导出的pdf里要显示公示的截止日期。  

    这就需要现在国际处审批的日期转成date，然后转成long，然后+5天的毫秒数，然后再转成date，在转成yyyy-mm-dd字符号，代码如下：  

    ```html
    ${(国际处审批_LAST.approve_date?date?long + 5 * 86400000)?number_to_date?string.iso}
    ```  

9. 显示上传附件图片的需求  

    > 场景多为上传的图片用作要导出批件的头像
    > 
    > 需要在指定区域加一个图片标签，图片路径为`\${上传控件id}`
    > 
    > 例：
    > 
    > ```html
    > <img style="height:180;width:120" src="${uploader_0}" />
    > ```  

**PS：freemarker指令参考：**  

<http://freemarker.foofun.cn/ref_directive_if.html>

### 把文件的后缀名html改成ftl。  

不再赘述

### 例子  

如果你看了上边的教程，做出来的效果还是不好看，那就参考一下清华大学的压缩包里的《境外专家短期来访审批表.ftl》吧，我认为这个导出的效果还可以，你可以拿着这个作为模板进行修改。
