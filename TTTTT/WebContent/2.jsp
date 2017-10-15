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
<form action="Hello1.action"><br/>
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>
        <i><font size=6 color=ffffff> 注&nbsp册&nbsp界&nbsp面</font> </i><br/><br/>
        <table align="center" border="1"  cellpadding="0" cellspacing="0" width="500" >

            <tr style="background-color:cccccc">
                <td width="170">&nbsp&nbsp用&nbsp户&nbsp名:</td>
                <td><input type="text" name="username"/>&nbsp &nbsp用户名不为空</td>
            </tr>
            <tr style="background-color:cccccc">
                <td width="170">&nbsp&nbsp密&nbsp码:</td>
                <td><input type="password" name="password"/>&nbsp&nbsp密码长度大于6位</td>
            </tr>
            <tr style="background-color:cccccc">
                <td width="170">&nbsp&nbsp重&nbsp复&nbsp密&nbsp码:</td>
                <td><input type="password" name="repassword"/>&nbsp&nbsp密码长度大于6位</td>
            </tr>
        </table>
	     <input style= "color:yellow;background-color:#E6BD1A;height:30px;width:60px" type="submit" value="注册"/ >
	     <input style= "color:yellow;background-color:#E6BD1A;height:30px;width:60px" type="button" onclick="location.href= 'X.jsp'" value="返回"/ >
	     </form>

</html>





