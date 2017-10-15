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


<br/>
<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >
<%
List<String> list11 = (List<String>)session.getAttribute("list11");
List<String> list1 = (List<String>)session.getAttribute("list1");
if (list11.size() == 0)
	out.print("<tr style=\"background-color:D4D4D4\"><td colspan=\"2\" align=\"center\"><i><font size=5 color=red> &nbsp书&nbsp馆&nbsp未&nbsp存&nbsp储&nbsp图&nbsp书</font> </i></td></tr>");
    //out.print("<i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp书&nbsp馆&nbsp未&nbsp存&nbsp储&nbsp图&nbsp书</font> </i><br/><br/>");
else
	out.print("<tr style=\"background-color:D4D4D4\"><td colspan=\"2\" align=\"center\"><i><font size=5 color=red> &nbsp&nbsp&nbsp&nbsp&nbsp书&nbsp馆&nbsp所&nbsp有&nbsp图&nbsp书&nbsp如&nbsp下</font> </i></td></tr>");
	//out.print("<i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp书&nbsp馆&nbsp所&nbsp有&nbsp图&nbsp书&nbsp如&nbsp下</font> </i><br/><br/>");
%>



<tr style="background-color:cccccc">
 <td colspan="2" align="center">

<%

if (list11.size() > 0)
{
	for (int i = 0; i < list11.size(); i++)
	{
		out.print("<tr style= \"background-color:D4D4D4\"> <td colspan=\"2\" align=\"center\"><ul class=\"nav navbar-nav navbar-right\"><li style=\"list-style-type:none\"  > <a >" + "<i class=\"fa fa-users\"></i><font size=5.5 color=\"blue\">" + list11.get(i) + "<br/></a></li>");
		//out.print("<tr style= \"background-color:cccccc\"> <td colspan=\"2\" align=\"center\"><ul class=\"nav navbar-nav navbar-right\"><li style=\"list-style-type:none\"  > <a href=\"###\" onclick=\"location.href= 'Viewer.jsp'\"><i class=\"fa fa-users\"></i><font size=5.5 color=\"blue\">" + list.get(i) + "<br/></a></li>");

		//out.print(" <a href= GetNewAuthor?title="+list11.get(i)+"><button  type=\"button\" style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\">  更新书籍作者 </button> </a><i class=\"fa fa-users\"/>");
		//out.print(" <a href= GetNewPublisher?title="+list11.get(i)+"><button  type=\"button\" style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\">  更新书籍出版社 </button> </a><i class=\"fa fa-users\"/>");
		//out.print(" <a href= GetNewPublishdate?title="+list11.get(i)+"><button  type=\"button\" style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\">  更新书籍出版日期</button> </a><i class=\"fa fa-users\"/>");
		//out.print(" <a href= GetNewPrice?title="+list11.get(i)+"><button  type=\"button\" style=\"font-size:13px;color:#FF0000;background-color:#00FF00;\">  更新书籍价格</button> </a><i class=\"fa fa-users\"/>");
	}
}
%>


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


 </body>