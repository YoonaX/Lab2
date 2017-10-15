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

<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >
<body style="text-align:center">
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>
        <%
         String  authorname = (String)session.getAttribute("authorname");
         out.print("<tr style= \"background-color:D4D4D4\"><td colspan=\"2\" align=\"center\"><i><font size=5 color=red>" +"&nbsp&nbsp&nbsp&nbsp"+ authorname + "&nbsp作&nbsp品&nbsp如&nbsp下</font> </i></td></tr>");

        %>

<form action="Delete.action"><br/>


<tr style="background-color:D4D4D4">
 <td colspan="2" align="center">


 <%List<String> list = (List<String>)session.getAttribute("list");
 List<String> list1 = (List<String>)session.getAttribute("list1");
for (int i = 0; i < list.size(); i++)
{
	out.print("<tr style= \"background-color:D4D4D4\"> <td colspan=\"2\" align=\"center\"><ul class=\"nav navbar-nav navbar-right\"><li style=\"list-style-type:none\"  > <a href= Detail?title="+list.get(i)+"&authorname="+authorname+">" + "<i class=\"fa fa-users\"></i><font size=5.5 color=\"blue\">" + list.get(i) + "<br/></a></li>");
	//out.print("<button style=\"font-size:20px;color:#FF0000;background-color:#00FF00;     value = \"删除该书籍\"  <a href=Detail?title="+list.get(i)+"&authorname="+authorname+">" +  "<i class=\"fa fa-users\"/>");

	//out.print("<a href=Delete?title="+list.get(i)+"&authorname="+authorname+"><button type=\"button\" class=\"FONT2\">鍒犻櫎</button></a></td>");

	//out.print("<td align=\"center\"><a href=Delete?title="+list.get(i)+"><button type=\"button\" class=\"FONT2\">鍒犻櫎</button></a></td>");

	//out.print("<td align=\"center\"><a href= 4.jsp?title="+list.get(i)+"><button  type=\"button\" class=\"FONT2\">鍒犻櫎</button></a></td>");

	out.print("<a href=Delete?title="+list.get(i)+"><button   type=\"button\"  style=\"font-size:20px;color:#FF0000;background-color:#00FF00\" >删除该书籍</button></a></td>" +  "<i class=\"fa fa-users\"/>");

	//out.print("<a href= 4.jsp?title="+list.get(i)+"&authorname="+authorname+"><button  style=\"font-size:20px;color:#FF0000;background-color:#00FF00;  type=\"button\">删除该书籍</button></a></td>" +  "<i class=\"fa fa-users\"/>");

	out.print("</ul></td></tr>");
}%>


 <tr>
<br/>
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
</form>




 </body>