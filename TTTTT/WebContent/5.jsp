<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修&nbsp改&nbsp界&nbsp面</title>

  </head>

 <style type="text/css">

  body{
  background:url("image/3.jpg");
 background-repeat:no-repeat;
  background-size:1368px 768px;
 background-position-x:50%;
 window.onResize = function() {resizeImg();};
  }

</style>
 <body style="text-align:center">
<form action="ChangePublisher.action"><br/>
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>
         <table align="center" border="1"  cellpadding="0" cellspacing="0" width="500" >
       <td align="right"><i><font size=5 color=red> 输入出版社信息</font> </i><br/></td></tr>

            <tr style="background-color:cccccc">
                <td width="170">Title:</td>
                <td><input type="text" name="title"/>&nbsp&nbsp书名存在</td>
            </tr>
            <tr style="background-color:cccccc">
                <td width="170">Publisher:</td>
                <td><input type="text" name="publisher" ID = "S3" />&nbsp&nbsp出版商不为空</td>
            </tr>

	     <i><font size=6 color=ffffff>&nbsp&nbsp</font></i>
  <td colspan="2" align="center">
			 <input type="submit" name="btn" value="确&nbsp&nbsp&nbsp定"
			 style="background:url(image/2.jpg);
			 border-style:none;
			 width:124px;
			 height:35px;
			 color:yellow;
			 background-repeat:no-repeat;"
			 >

		 <tr>
			 <td colspan="2" align="center">
			 <input type="button" name="btn" value="返 &nbsp&nbsp&nbsp回"
			 style="background:url(image/2.jpg);
			 border-style:none;
			 width:124px;
			 height:35px;
			 color:yellow;
			 background-repeat:no-repeat;"

			 onclick = "location.href= 'Y.jsp'";
			 >
 </table>
        </br>

	     </form>

</html>





