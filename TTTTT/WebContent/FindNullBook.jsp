<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
        <i><font size=6 color=red> 未&nbsp收&nbsp藏</font> </i><br/><br/>

         <%
         String  authorname = (String)session.getAttribute("authorname");
         out.print("<i><font size=6 color=red> &nbsp" +  authorname +"</font> </i><br/>");
        %>

        <i><font size=6 color=red> 的&nbsp作&nbsp品</font> </i><br/><br/>
        <input style= "font-size:20px; color:yellow;background-color:#E6BD1A;height:40px;width:80px" type="button" onclick="location.href= 'Y.jsp'" value="返回"/ >
	     </form>

</html>





