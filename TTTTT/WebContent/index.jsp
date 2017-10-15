<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Hello World</title>
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

   <h1>Hello World From struts2</h1>
   <form action="Hello">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="name"/>
      <input type="submit" value="Say Hello"/>
   </form>
</body>

</html>

