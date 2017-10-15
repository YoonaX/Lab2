<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注&nbsp册&nbsp界&nbsp面</title>

  </head>

 <style type="text/css">

  body{
  background:url("image/2.jpg");
 background-repeat:no-repeat;
  background-size:1368px 768px;
 background-position-x:50%;
 window.onResize = function() {resizeImg();};
  }

</style>
 <body style="text-align:center">
<form action="FindByAuthor"><br/>
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>


<%
String Addbook = (String)session.getAttribute("AddBook");
String ChangeAuthor = (String)session.getAttribute("ChangeAuthor");
List<String> Judge = (List<String>)session.getAttribute("Judge");
//if (Addbook.equals("NEW"))
	//out.print("<i><font size=6 color=ffffff> 新&nbsp作&nbsp者&nbsp增&nbsp加&nbsp到&nbsp表&nbsp中</font> </i><br/><br/>");
//if (ChangeAuthor.equals("OK"))
	//out.print("<i><font size=6 color=ffffff> 旧&nbsp作&nbsp者"   + "&nbsp从&nbsp库&nbsp中&nbsp删&nbsp除</font> </i><br/><br/>");
out.print("<i><font size=6 color=ffffff> 修&nbsp改&nbsp成&nbsp功</font> </i><br/><br/>");
%>


<input style= "font-size:20px; color:yellow;background-color:#E6BD1A;height:40px;width:80px" type="button" onclick="location.href= 'Y.jsp'" value="返回"/ ></form>




</html>





