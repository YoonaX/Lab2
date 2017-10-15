<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<style type="text/css">

  body{
  background:url("image/2.jpg");
 background-repeat:no-repeat;
  background-size:1368px 768px;
 background-position-x:50%;
 window.onResize = function() {resizeImg();};
  }

</style>

<style type="text/css" >
.main td{ height:20px; border:#CCCCCC 1px solid;}
</style>

<body style="text-align:center">
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>

<%
String AddBook = (String)session.getAttribute("AddBook");
List<String> list = (List<String>)session.getAttribute("list");
if (AddBook.equals("NEW"))
    out.print("<i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp新&nbsp的&nbsp作&nbsp者&nbsp已&nbsp经&nbsp加&nbsp入</font> </i><br/><br/>");

out.print("<i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp书&nbsp籍&nbsp信&nbsp息&nbsp和&nbsp作&nbsp者&nbsp信&nbsp息&nbsp如&nbsp下</font> </i><br/><br/>");
%>

<form action="Delete.action"><br/>
<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >

<tr style="background-color:cccccc">
 <td colspan="2" align="center">


<%

if (list.size() > 0)
{
	for (int i = 0; i < list.size(); i++)
	{
		out.print("<tr style= \"background-color:cccccc\"> <td colspan=\"2\" align=\"center\"><ul class=\"nav navbar-nav navbar-right\"><li style=\"list-style-type:none\"  > <a href=\"###\" onclick=\"location.href= 'Viewer.jsp'\"><i class=\"fa fa-users\"></i><font size=5.5 color=\"blue\">" + list.get(i) + "<br/></a></li>");
		out.print(" <input style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\" type = \"button\" onclick=\"location.href = '4.jsp'\" value = 更改书籍作者><i class=\"fa fa-users\"/>");
		out.print("<input style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\" type = \"button\" onclick=\"location.href = '5.jsp'\" value = 更改书籍出版社><i class=\"fa fa-users\"/>");
		out.print("<input style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\" type = \"button\" onclick=\"location.href = '6.jsp'\" value = 更改书籍出版日期><i class=\"fa fa-users\"/>");
		out.print("<input style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\" type = \"button\" onclick=\"location.href = '7.jsp'\" value = 更改书籍价格><i class=\"fa fa-users\"/>");
	}
}
%>

 </table>
</form>


 <tr>
<br/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <td colspan="2" align="center">
 <input type="submit" name="btn" value="返 &nbsp&nbsp&nbsp回"
 style="background:url(image/2.jpg);
 border-style:none;
 width:124px;
 height:35px;
 color:yellow; background-repeat:no-repeat;"  onclick="location.href= 'Y.jsp'" >
 </td>
 </tr>

 </body>