<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(./Images/LGImages/timg%20(2).jpg);
	background-image: url(./Images/LGImages/timg.jpg);
}
.style01 {
	font-family: "楷体";
	font-size: 36px;
	color: #06F;
}
.text_style {
	height: 30px;
	width: 250px;
}
#bujutable {
}
.style02 {
	color: #06F;
}
#login {
	height: 30px;
	width: 250px;
	background-color: #06F;
	border: thin solid #FFF;
}
</style>


</head>

<body>

<table width="100%" height="647" border="1" cellpadding="5" cellspacing="0" id="bujutable">
  <tr>
    <td height="600"><table width="33%" height="312" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="#FFFFFF">
      <caption class="style01">
        	欢迎登录美食部落
      </caption>
      <tr>
        <td><table width="82%" height="230" border="0" align="center" cellpadding="5" cellspacing="0">
          <tr align="center">
            <td colspan="2" class="style02">账号登录</td>
            </tr>
          <tr>
            <td width="17%" class="style02">账号：</td>
            <td width="83%"><form id="form1" name="form1" method="post" action="">
              <input name="name" type="text" class="text_style" id="name" size="35" />
            </form></td>
          </tr>
          <tr>
            <td class="style02">密码：</td>
            <td><form id="form2" name="form2" method="post" action="">
              <input name="password" type="password" class="text_style" id="password" size="35" />
            </form></td>
          </tr>
          <tr>
            <td colspan="2"><span class="style02">
            <input type="checkbox" name="CheckboxGroup1" value="复选框" id="CheckboxGroup1" />记住密码 </span></td>
            </tr>
          <tr>
            <td colspan="2"><form id="form3" name="form3" method="post" action="">
              <div align="center">
               <input onkey=""type="button" name="login" id="login"  onclick="lc()"value="登录" />
              </div>
            </form></td>
            </tr>
          <tr>
            <td height="58" colspan="2"><table width="80%" border="0" align="center" cellpadding="5" cellspacing="0">
              <tr>
                <td width="50%"><div align="center" class="style02"><a href="./pages/other/forget.jsp">忘记密码</a></div></td>
                <td width="50%"><div align="center" class="style02"><a href="./pages/other/register.jsp">申请账号</a></div></td>
              </tr>
            </table>
              <div align="center"></div></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
<script>
function lc(){
	var name,password;
	
	name=document.getElementById("name").value;
	password=document.getElementById("password").value;
	isRemember=document.getElementById("CheckboxGroup1").checked;
	location.href="./loginController?name="+name+"&password="+password+"&isRemember="+isRemember;
}
document.onkeydown=function(){
	if(event.keyCode=="13"){
		lc();
	}
}
</script>
</html>