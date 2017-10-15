<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注&nbsp册&nbsp界&nbsp面</title>

  </head>


 <body style="text-align:center">
<form action="JudgeBook"><br/>
        <font color="red" size="4" style="text-align:center"><s:fielderror /></font>
        <table align="center" border="1"  cellpadding="0" cellspacing="0" width="500" >

         <tr>
 <td colspan="2" align="center">
 <i><font size=5 color=red> 请&nbsp输&nbsp入&nbsp所&nbsp有&nbsp信&nbsp息</font> </i>
 </td>
 </tr>

            <tr style="background-color:cccccc">
                <td width="150">AuthorName:</td>
                <td><input type="text" name="authorname"/>&nbsp&nbsp姓名不为空</td>
            </tr>
            <tr style="background-color:cccccc">
                <td width="170">AuthorAge:</td>
                <td><input type="text" name="authorage"/>&nbsp&nbsp年龄为整数</td>
            </tr>
            <tr style="background-color:cccccc">
                <td width="170">AuthorCountry:</td>
                <td><input type="text" name="authorcountry"/>&nbsp&nbsp国家不为空</td>
            </tr>

             <tr style="background-color:cccccc">
                <td width="170">BookISBN:</td>
                <td><input type="text" name="isbn"/></br>10或13纯数字ISBN,没有- &nbsp&nbsp&nbsp格式： 1111111111&nbsp或&nbsp1111111111111</td>
            </tr>
             <tr style="background-color:cccccc">
                <td width="170">BookTitle:</td>
                <td><input type="text" name="title"/>&nbsp&nbsp书名不为空</td>
            </tr>
             <tr style="background-color:cccccc">
                <td width="170">BookPublisher:</td>
                <td><input type="text" name="publisher"/>&nbsp&nbsp出版社不为空</td>
            </tr>
             <tr style="background-color:cccccc" >
                <td width="170">BookPublishDate:</td>
                <td><input type="text" name="publishdate"/>&nbsp&nbsp(无空格):1997/1/1</td>
            </tr>
             <tr style="background-color:cccccc">
                <td width="170">BookPublishPrice:</td>
                <td><input type="text" name="price"/>&nbsp&nbsp价格为整数</td>
            </tr>

        </br>
	     <i><font size=6 color=ffffff> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font></i>

	     <td colspan="2" align="center"> <i><font size=5 color=red> <input type="submit" name="btn" value="确 &nbsp&nbsp&nbsp定" style="background:url(image/2.jpg); border-style:none;width:124px;
         height:35px; color:yellow; background-repeat:no-repeat; value="确定"/ ></font> </i></td></tr>

 </form>
</table>
</html>