<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Setting</title>


  <style type="text/css">

  body{
  background:url("image/2.jpg");
 background-repeat:no-repeat;
  background-size:1368px 768px;
 background-position-x:50%;
 window.onResize = function() {resizeImg();};
  }

</style>

</head>
<body>
 <form action="login.action"><br/>
<table style="width:897px; background:#cccccc; margin:0 auto;">
<tr >

    <td width="1700" valign="top">
    	<center><div style = "color: blue"><h1>图&nbsp书&nbsp馆&nbsp系&nbsp统&nbsp登&nbsp录&nbsp界&nbsp面</h1><br></div>
    	    <table  align="center" bgcolor="#11EE69">
		<tr>

		</tr>
		<tr>
			<td>
				  <table cellspacing="5" cellpadding="3">


					<tr><td style = "color: blue">USER NAME:</td><td> <input type="text" name="username" id="username"/></td></tr>
					<tr><td style = "color: blue">PASSWORD:</td><td> <input type="password" name="password" id="password"/></td></tr>


					<tr><td></td><td><input style= "color:yellow;background-color:#E6BD1A;height:30px;width:60px" type="submit" value="登录"/>


                   <INPUT style= "color:yellow;background-color:#E6BD1A;height:30px;width:60px"  TYPE="button" onclick="location.href= '2.jsp'" VALUE="注册"></td></tr>

					<s:if test="hasFieldErrors()">
					<script language="JavaScript">
			        var msg = "注册成功";
					alert(msg);
				    </script>
					</s:if>

					<s:if test="hasActionErrors()">
					<script language="JavaScript">
			        var msg = "用户名与账号不正确，请确认后重新尝试！";
					alert(msg);
				    </script>
					</s:if>

			</td>

		</tr>
	</table>
		</center>
	</table>
</form>
	</body>
</html>