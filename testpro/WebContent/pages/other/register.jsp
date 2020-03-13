<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%


%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

<style type="text/css">
body {
	background-color: #FFF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../../Images/LGImages/timg.jpg);
}
#register {
	height: 30px;
	width: 250px;
	border: thin solid #FFF;
	background-color: #06F;
}
.text_style {
	height: 25px;
	width: 250px;
}
.style01 {
	font-family: "楷体";
	font-size: 18px;
	color: #36F;
}
</style>
</head>

<body>
<form id="form8" name="form8" method="post" action="../../registerController">
<table width="100%" height="600" border="1" cellpadding="5" cellspacing="0">
  <tr>
    <td><table width="35%" height="383" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td colspan="3" align="center" class="style01">必填</td>
        </tr>
      <tr>
        <td width="23%" class="style01">用户名：</td>
        <td width="58%">
          <input name="name" type="text" class="text_style" id="textfield" size="35" />
		</td>
        <td width="19%">&nbsp;</td>
      </tr>
      <tr>
        <td class="style01">密码：</td>
        <td>
          <input name="password" type="password" class="text_style" id="password" />
        </td>
        <td>&nbsp;</td>
      </tr>
      
      <tr>
        <td class="style01">确认密码：</td>
        <td>
          <input name="passwordconfirm" type="password" class="text_style" id="confirm" size="35" onblur="showpwtip()"/>
        </td>
        <td>&nbsp;<div id="tip" style="color:red;visibility:hidden;">两次密码不一致！！！！</div></td>
      </tr>
      <tr>
        <td class="style01">邮箱：</td>
        <td>
          <input name="mail"  onblur="" type="text" class="text_style" id="mail" size="35" />
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="style01">验证码：</td>
        <td>
          <input name="Verification" type="text" class="text_style" id="Verification" size="35" onblur="Verifi()"/>
        </td>
        <td>&nbsp;<input type="button" onclick="send()"id="getCode"value="获取验证码"></td>
      </tr>
      <tr>
        <td colspan="3" align="center" class="style01">选填</td>
       </tr>
      <tr>
        <td class="style01">性别：</td>
        <td>
          <span class="text_style">
          <select name="sex">
          	<option value="男">男</option>
          	<option value="女">女</option>
          </select>
          
          </span>
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
      <tr align="center">
        <td colspan="3">
          <input type="submit" onfocus="checknull()" name="register" id="register" value="注册" />
          </td>
          <td colspan="3">
          
          </td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>

<script>
	function showpwtip(){
		var pw=document.getElementById("password");
		var conf=document.getElementById("confirm").value;
		var tip=document.getElementById("tip");
		if(pw.value!=conf){
			tip.style.visibility="visible";
			pw.focus();
		}
		
	}
	//发送验证码
	function send(){
		var mail=document.getElementById("mail");
		$.ajax({
			"url":"../../sendEmailController",
			"type":"post",
			"data":"mail="+mail.value,
			"dataType":"text",
			"success":function(){
				alert("一分钟后可以重新获取码");
			},
			"error":function(){
				alert("邮箱不正确！！");
			}
		
			
		});
		
		
		
	}
	//检查空值
	function checknull(){
		var nm=document.getElementById("textfield");
		var pwd=document.getElementById("password");
		var Verification=document.getElementById("Verification");
		if(nm.value==""){
			alert("用户名不能为空！！");
			nm.focus();
			return;
		}
		if(pwd.value==""){
			alert("密码不能为空！！！");
			pwd.focus();
			return;
		}
		
		
	}
</script>

</html>
