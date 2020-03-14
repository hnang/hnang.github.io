<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./static/js/jquery-3.4.1.min.js"></script>
<link rel="styleSheet"  href="./static/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>
<script src="./static/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
<title>Insert title here</title>

</head>
<body>
<div >
	本网站第<span id="minitip"></span>次浏览
</div>

<button type="button" onclick="goTest()" class="btn btn-success">（成功）Success</button>
<a href="./testServlet">goTest</a>
</body>
<script type="text/javascript">
$(document).ready(function(){
	 $.ajax({
		url:"http://areyouok.ticp.vip/testServlet",
		type:"post",
		//data:"",
		success:function(data){
			$("#minitip").html(data.visitCount);
		},
		error:function(){
			alert("失败");
		},
		dataType:"json"
	}); 
});
function goTest(){
	location.href="/testServlet";
}

</script>

</html>