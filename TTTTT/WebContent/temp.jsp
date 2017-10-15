<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>三种弹出对话框的用法实例</title>
<script language="javascript">
function ale()
{//这个基本没有什么说的，就是弹出一个提醒的对话框
    alert("我敢保证，你现在用的是演示一");
}
function firm()
{//利用对话框返回的值 （true 或者 false）
    if(confirm("你确信要转去 天轰穿的博客？"))
    {//如果是true ，那么就把页面转向thcjp.cnblogs.com
        location.href="http://thcjp.cnblogs.com";
    }
    else
    {//否则说明下了，赫赫
        alert("你按了取消，那就是返回false");
    }
}
function prom()
{
    var name=prompt("请输入您的名字","");//将输入的内容赋给变量 name ，
    //这里需要注意的是，prompt有两个参数，前面是提示的话，后面是当对话框出来后，在对话框里的默认值
    if(name)//如果返回的有内容
    {
        alert("欢迎您："+ name)
    }
}
</script>
</head>

<body>
<p>对话框有三种</p>
<p>1：只是提醒，不能对脚本产生任何改变；</p>
<p>2：一般用于确认，返回 true 或者 false ，所以可以轻松用于 ifelse判断 </p>
<p>3： 一个带输入的对话框，可以返回用户填入的字符串，常见于某些留言本或者论坛输入内容那里的 插入UBB格式图片 </p>
<p>下面我们分别演示：</p>
<p>演示一：提醒 对话框</p>
<p>
  <input type="submit" name="Submit" value="提交" onclick="ale()" />
</p>
<p>演示二 ：确认对话框 </p>
<p>
  <input type="submit" name="Submit2" value="提交" onclick="firm()" />
</p>
<p>演示三 ：要求用户输入，然后给个结果</p>
<p>
  <input type="submit" name="Submit3" value="提交" onclick="prom()" />
</p>
</body>
</html>

<table border="2" class="FONT3">
 <%List<String> list = (List<String>)session.getAttribute("list");
   String username = (String)session.getAttribute("username");
   for (int i = 0; i < list.size(); i++) {
 		out.print("<td align=\"center\"><a href=Detail?title="+list.get(i)+"&username="+username+">"+list.get(i)+"</td>");
}%>
</table>
