<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="#"><span class="glyphicon glyphicon-align-justify"></span>基本资料</a></li>
  </ul>


<div class="line">
 <div class="col-sm-9 col-md-3">
    <div class="thumbnail">
      <div class="caption">

<div class="list-group">

 <ul class="nav nav-pills nav-stacked">
 <li ><a href="#" class="list-group-item"><span class="glyphicon glyphicon-send"></span>个人设置</a></li>
 </ul>

 <a href="BasicMessage.html" class="list-group-item active">基本资料</a>
 <a href="Educate.html" class="list-group-item">教育背景</a>
 <a href="Work.html" class="list-group-item">工作信息</a>
 <a href="#" class="list-group-item">头像设置</a>
 <br></br>

 <ul class="nav nav-pills nav-stacked">
 <li ><a href="#" class="list-group-item"><span class="glyphicon glyphicon-star"></span>隐私设置</a></li>
 </ul>

 <a href="BasicMessage.jsp" class="list-group-item" >我在贴吧</a>
 <br></br>
 <img src="image/3.jpg" alt="..." class="img-thumbnail">
</div>

      </div>
    </div>
  </div>
</div>


<div class="line">
 <div class="col-sm-9 col-md-8">
    <div class="thumbnail">
      <div class="caption">

 <div class="list-group">

 <ul class="nav nav-pills nav-stacked">
 <li ><a href="#" class="list-group-item"><span class="glyphicon glyphicon-send"></span>基本资料</a></li>
 </ul>

 <br></br>

<label class="col-md-offset-1">性别：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>

<label class="radio-inline">
  <input type="radio" value="man"> 男
</label>

<label class="radio-inline col-md-offset-2">
  <input type="radio" value="woman"> 女
</label>


<br></br>


<label class="inline col-md-offset-1">出生日期：</label>

<label class="select-inline">
<select class="form-control">
  <option>1996年</option>
  <option>1997年</option>
  <option>1998年</option>
  <option>1999年</option>
  <option>2000年</option>
  <option>2001年</option>
  <option>2002年</option>
  <option>2003年</option>
  <option>2004年</option>
  <option>2005年</option>
  <option>2006年</option>
  <option>2007年</option>
  <option>2008年</option>
  <option>2009年</option>
  <option>2010年</option>
</select>
</label>

<label class="select-inline">
<select class="form-control">
  <option>1月</option>
  <option>2月</option>
  <option>3月</option>
  <option>4月</option>
  <option>5月</option>
  <option>6月</option>
  <option>7月</option>
  <option>8月</option>
  <option>9月</option>
  <option>10月</option>
  <option>11月</option>
  <option>12月</option>
</select>
</label>

<br></br>

<label class="inline  col-md-offset-1">血型：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
<label class="select-inline">
<select class="form-control">
  <option>A型</option>
  <option>B型</option>
  <option>O型</option>
  <option>AB型</option>
</select>
</label>

<br></br>

<label class="inline   col-md-offset-1">出生地：&nbsp&nbsp&nbsp&nbsp</label>
<label class="select-inline">
<input type="text" class="form-control" placeholder="XX省XX市">
</label>


<br></br>

<label class="inline   col-md-offset-1">居住地：&nbsp&nbsp&nbsp&nbsp</label>
<label class="select-inline">
<input type="text" class="form-control" placeholder="XX省XX市">
</label>

<br></br>

<label class="inline   col-md-offset-1">
个人简介：&nbsp

<textarea class="form-control-inline input-lg" rows="3" placeholder="请输入个人简介"></textarea>
</label>

<br></br>

<p>
<label class="inline">&nbsp&nbsp&nbsp&nbsp</label>
<a href="#" class="btn btn-primary btn-lg     col-md-offset-2">保存</a>
</p>

      </div>
    </div>
  </div>
</div>

</body>
</html>