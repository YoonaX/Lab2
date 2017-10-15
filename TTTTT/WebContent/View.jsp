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

<%List<String> list1 = (List<String>)session.getAttribute("list1");


out.print("<i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp书&nbsp本&nbsp信&nbsp息</font> </i><br/>");

out.print("<tr style=\"background-color:cccccc\"><td width=\"170\" align=\"center\">ISBN(PK)</td><td width=\"170\" align=\"center\">Title</td><td width=\"170\" align=\"center\">AuthorID(FK)</td><td width=\"170\" align=\"center\">Publisher</td><td width=\"170\" align=\"center\">PublishDate</td><td width=\"170\" align=\"center\">Price</td></tr>");

out.print("<tr style=\"background-color:cccccc\"><td width=\"170\" align=\"center\">" + list1.get(0) + "</td><td width=\"170\" align=\"center\">" + list1.get(1) + "</td><td width=\"170\" align=\"center\">" + list1.get(2) + "</td><td width=\"170\" align=\"center\">" + list1.get(3) + "</td><td width=\"170\" align=\"center\">" + list1.get(4) + "</td><td width=\"170\" align=\"center\">" + list1.get(5) + "</td>");
%>
</table>

<br/><br/>
<table align="center" border="1"  cellpadding="0" cellspacing="0" width="500" >

<font color="red" size="4" style="text-align:center"><s:fielderror /></font>
<%
List<String> list0 = (List<String>)session.getAttribute("list0");
out.print("<i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp作&nbsp者&nbsp信&nbsp息</font> </i><br/>");

out.print("<tr style=\"background-color:cccccc\"><td width=\"170\" align=\"center\">AuthorID(FK)</td><td width=\"170\" align=\"center\">Name</td><td width=\"170\" align=\"center\">Age</td><td width=\"170\" align=\"center\">Country</td></tr>");

out.print("<tr style=\"background-color:cccccc\"><td width=\"170\" align=\"center\">" + list0.get(0) + "</td><td width=\"170\" align=\"center\">" + list0.get(1) + "</td><td width=\"170\" align=\"center\">" + list0.get(2) + "</td><td width=\"170\" align=\"center\">" + list0.get(3) + "</td>");
%>

</table>










 </table>



<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >

<tr style="background-color:cccccc">
 <td colspan="2" align="center">

 </table>


<tr>

<br/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <td colspan="2" align="center">
 <input type="submit" name="btn" value="返 &nbsp&nbsp&nbsp回"
 style="background:url(image/2.jpg);
 border-style:none;
 width:124px;
 height:35px;
 color:yellow; background-repeat:no-repeat;"  onclick="location.href= 'Edit.jsp'" >
 </td>
 </tr>

</body>

</html>





