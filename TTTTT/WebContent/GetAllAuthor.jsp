<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


 <style type="text/css">

  body{
  background:url("image/2.jpg");
 background-repeat:no-repeat;
  background-size:1368px 768px;
 background-position-x:50%;
 window.onResize = function() {resizeImg();};
  }

</style>

  <head>
    <title>信&nbsp息&nbsp界&nbsp面</title>
  </head>

 <body style="text-align:center">
<table align="center" border="1"  cellpadding="0" cellspacing="0" width="500" >

<font color="red" size="4" style="text-align:center"><s:fielderror /></font>

<tr style="background-color:D4D4D4"><td width="170" align="center"> <i><font size=5 color=red> 所&nbsp有&nbsp作&nbsp者&nbsp名&nbsp称&nbsp如&nbsp下</font> </i><br/><br/>

<%List<String> list = (List<String>)session.getAttribute("list");

for (int i = 0; i < list.size(); i++)
	out.print("<tr style=\"background-color:D4D4D4\"><td width=\"170\" align=\"center\"> <i><font size=5 color=red>" + list.get(i));
%>

<tr>

<br/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <td colspan="2" align="center">
 <input type="button" name="btn" value="返 &nbsp&nbsp&nbsp回"
 style="background:url(image/2.jpg);
 border-style:none;
 width:124px;
 height:35px;
 color:yellow; background-repeat:no-repeat;"  onclick="location.href= 'Y.jsp'" >
 </td>
 </tr>

</table>


<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >

<tr style="background-color:cccccc">
 <td colspan="2" align="center">

 </table>





</body>

</html>





