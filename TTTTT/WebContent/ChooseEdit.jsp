<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<style type="text/css">


</style>

<style type="text/css" >
.main td{ height:20px; border:#CCCCCC 1px solid;}
</style>

<body style="text-align:center">
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>


<form action="Delete.action"><br/>
<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >

<tr style="background-color:ccccccc">
 <td colspan="2" align="center">


<%
		//out.print(" <a href= GetNewAuthor?><button  type=\"button\" style=\"font-size:15px;color:#FF0000;background-color:#00FF00;\">  更新书籍作者 </button> </a><i class=\"fa fa-users\"/></br><br/>");
		//out.print(" <a href= GetNewPublisher?><button  type=\"button\" style=\"font-size:15px;color:#FF0000;background-color:#00FF00;\">  更新书籍出版社 </button> </a><i class=\"fa fa-users\"/></br><br/>");
		//out.print(" <a href= GetNewPublishdate?><button  type=\"button\" style=\"font-size:15px;color:#FF0000;background-color:#00FF00;\">  更新书籍出版日期</button> </a><i class=\"fa fa-users\"/></br><br/>");
		//out.print(" <a href= GetNewPrice?><button  type=\"button\" style=\"background:url(image/2.jpg); border-style: width:124px; height:35px;  color:yellow background-repeat:no-repeat\">  更新书籍价格</button> </a><i class=\"fa fa-users\"/></br><br/>");

		out.print(" <a href= GetNewAuthor?><button  type=\"button\" style=\"background:url(image/2.jpg); border-style: width:124px; height:35px;  color:yellow; background-repeat:no-repeat\">  更新书籍作者</button> </a><i class=\"fa fa-users\"/></br><br/>");
		out.print(" <a href= GetNewPublisher?><button  type=\"button\" style=\"background:url(image/2.jpg); border-style: width:124px; height:35px;  color:yellow; background-repeat:no-repeat\">  更新书籍出版社</button> </a><i class=\"fa fa-users\"/></br><br/>");
		out.print(" <a href= GetNewPublishdate?><button  type=\"button\" style=\"background:url(image/2.jpg); border-style: width:124px; height:35px;  color:yellow; background-repeat:no-repeat\">  更新书籍出版日期</button> </a><i class=\"fa fa-users\"/></br><br/>");
		out.print(" <a href= GetNewPrice?><button  type=\"button\" style=\"background:url(image/2.jpg); border-style: width:124px; height:35px;  color:yellow; background-repeat:no-repeat\">  更新书籍价格</button> </a><i class=\"fa fa-users\"/></br><br/>");
%>

</table>
</form>




 </body>