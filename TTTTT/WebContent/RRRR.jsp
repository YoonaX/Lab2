<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<style type="text/css">
	<!--
	.FONT1 {
	font-family: "鍗庢枃鏂伴瓘";
	font-size:50;
	}
	.FONT2 {
	font-family: "鍗庢枃鏂伴瓘";
	font-size:20;
	}
	.FONT3 {
	font-family: "鍗庢枃鏂伴瓘";
	font-size:30;
	color: white;
	}
	-->
	</style>
	<head></head>
	<body style="background:url('image/hit.jpg') no-repeat;background-size:100% 100%;">
	    <h1 style="text-align:center" class="FONT1">浣滃浣滃搧</h1>

	    <h2 style="text-align:center" class="FONT1">
	        <s:property value="username" />浣滃搧锛?
	    </h2>
	    <div style="text-align:center" class="FONT1">涔︾睄鍚嶇О</div>
	    <Br/>
	    <center>
			<table border="2" class="FONT3">
			    <%List<String> list = (List<String>)session.getAttribute("list");
			    String authorname = (String)session.getAttribute("authorname");
			    for (int i = 0; i < list.size(); i++) {
			  		out.print("<td align=\"center\"><a 7href=Detail?title="+list.get(i)+"&authorrname="+authorname+">"+list.get(i)+"</td>");
				}%>
			</table>
			<Br/><Br/>
			<a href=Login><button type="button" align="center" class="FONT2">杩斿洖涓婚〉</button></a>
		</center>
	</body>
</html>