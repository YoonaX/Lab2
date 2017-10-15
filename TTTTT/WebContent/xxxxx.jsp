<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

 <script type="text/javascript">
function Tosubmit()
{
	 document.getElementById("find").submit();
}
</script>
<body style="text-align:center">
<form action="FindAuthor.action" id = "find"><br/>
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>

<table align="center" cellpadding="0" cellspacing="0" border="1">
 <tr>
 <td colspan="2" align="center">
 <i><font size=5 color=red> 请&nbsp输&nbsp入&nbsp作&nbsp者&nbsp信&nbsp息</font> </i>
 </td>
 </tr>

<tr>
<td align="right"><label title="请输入作者名：" >  作&nbsp者&nbsp名：</label></td>
<td><input type="text" size="40"  name="authorname"></td>
</tr>

 <tr>
 <td colspan="2" align="center">
 <input type="submit" name="btn" value="查 &nbsp&nbsp&nbsp询"
 style="background:url(image/3.jpg);
 border-style:none;
 width:124px;
 height:35px;
 background-repeat:no-repeat;">
 </td>
 </tr>
 <tr cols="2"></tr>

 </table>
 </form>
 </body>