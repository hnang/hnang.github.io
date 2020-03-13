<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>铜仁学院学生信息管理系统</title>
	<link rel="stylesheet" type="text/css"href="./static/CSS/main.css">
	<!-- 
	<link rel="Bookmark" href="./Image/t2.ico">
	 -->
	<link rel="Shotcut Icon" href="./Image/t2.ico">
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
<div class="top">
</div>
<div class="Navigation">
	<ul>
	<li><a href="javascript:void(0)" onclick="jump('./Pages/PersonalCenter.jsp')">个人中心</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">查询成绩</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">课程查询</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">活动中心</a></li>
	<li><a href="javascript:void(0)" onclick="jump('./Pages/classes.jsp')">学校班级</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">课程管理</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">学生管理</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">专业查询</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">学校历史</a></li>
	<li><a href="javascript:void(0)" onclick="jump('#')">关于</a></li>
	</ul>
</div>
<div class="mainContent">
<iframe class="myframe" id="ifd" name="ifd" frameborder="0"src="./Pages/classes.jsp"scrolling="no" onload="this.height=ifd.document.body.scrollHeight">

</iframe>
</div>
</body>
<script type="text/javascript"src="./static/JS/main.js"></script>
</html>
