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
        <i><font size=6 color=red> 书&nbsp库&nbsp中&nbsp存&nbsp在&nbsp同&nbspISBN&nbsp的&nbsp书&nbsp</font> </i><br/><br/>

        <input style= "font-size:20px; color:yellow;background-color:#E6BD1A;height:40px;width:80px" type="button" onclick="location.href= 'Y.jsp'" value="返回"/ >
	     </form>


</html>

