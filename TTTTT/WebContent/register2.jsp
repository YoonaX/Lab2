<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<style type="text/css" >
.main td{ height:20px; border:#CCCCCC 1px solid;}
</style>

<body style="text-align:center">
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>
        <i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp输&nbsp入&nbsp作&nbsp者</font> </i><br/>
        <i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp输&nbsp入&nbsp作&nbsp者</font> </i><br/><br/>

<table  width="500" align="center" cellpadding="0" cellspacing="0" border="1" >

<tr style="background-color:cccccc">
 <td colspan="2" align="center">
 <ul class="nav navbar-nav navbar-right">
 <li style="list-style-type:none"  > <a href="###"><i class="fa fa-users"></i><font size=5.5 color="blue">Please enter your name<br/></a></li>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('4.jsp')" value = 更改书籍作者><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('5.jsp')" value = "更改书籍出版社"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('6.jsp')" value = "更改书籍出版日期"><i class="fa fa-users"/>
 
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('7.jsp')" value = "更改书籍价格"><i class="fa fa-users"/>
 </ul>
  </td>
</tr>

 <tr style="background-color:cccccc">
 <td colspan="2" align="center">
 <ul class="nav navbar-nav navbar-right">
 <li style="list-style-type:none"  > <a href="###" onclick="showAtRight('Viewer.jsp')"><i class="fa fa-users"></i><font size=5.5 color="blue">Please enter your name<br/></a></li>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('4.jsp')" value = 更改书籍作者><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍出版社"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍出版日期"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍价格"><i class="fa fa-users"/>
 </ul>
  </td>
</tr>

<tr style="background-color:cccccc">
 <td colspan="2" align="center">
 <ul class="nav navbar-nav navbar-right">
 <li style="list-style-type:none"  > <a href="###" onclick="showAtRight('Viewer.jsp')"><i class="fa fa-users"></i><font size=5.5 color="blue">Please enter your name<br/></a></li>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = 更改书籍作者><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍出版社"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍出版日期"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍价格"><i class="fa fa-users"/>
  </td>
</tr>

<tr style="background-color:cccccc">
 <td colspan="2" align="center">
 <ul class="nav navbar-nav navbar-right">
 <li style="list-style-type:none"  > <a href="###" onclick="showAtRight('Viewer.jsp')"><i class="fa fa-users"></i><font size=5.5 color="blue"  >Please enter your name<br/></a></li>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = 更改书籍作者><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍出版社"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍出版日期"><i class="fa fa-users"/>
 <input style="font-size:13px;color:#FF0000;background-color:#00FF00;" type = "button" onclick="showAtRight('Viewer.jsp')" value = "更改书籍价格"><i class="fa fa-users"/>
 </ul>
  </td>
</tr>


 <tr>
 <td colspan="2" align="center">
 <input type="submit" name="btn" value="查 &nbsp&nbsp&nbsp询"
 style="background:url(image/3.jpg);
 border-style:none;
 width:124px;
 height:35px;
 background-repeat:no-repeat;"  onclick="showAtRight('Authorname.jsp')" >
 </td>
 </tr>



 </table>
 </body>