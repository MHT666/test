<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
		function zhuce(){
			var email = "^[\\w_-]+@\\w+\\.[a-zA-Z]+\\.?[a-zA-Z]*$";
			var tel = "^1(3[0-9]|4[57]|5[^4]|7[6-8]|8[0-9])\\d{8}$";
			var emailLogin=document.f.email.value;
			var telLogin = document.f.tel.value;
 			if(document.f.password.value != "123"){
 				alert("密码错误！");
 				return false;
 			}else{
				if(emailLogin.match(email)){
					if(telLogin.match(tel)){
						return true;
						//location.href = "loginPage/main.jsp";
					}else{
						alert("手机号码输入错误！请重新输入！");
						return false;
					}
				}else{
					alert("邮箱输入错误！请重新输入！");
					return false;
				}
			}
		}
	</script>
  </head>
  
  <body>
  	<form action="loginPage/main.jsp" method="post" name="f" onsubmit="return zhuce()">
  	    用户名:<input type="text" name="user" /> <br/><br/> 
	    密码:<input type="password" name="password" /> <br/><br/>
	    性别:<input type="radio" name="sex" value="1" />男
	      <input type="radio" name="sex" value="0" />女 <br/><br/>
	    爱好:<input type="checkbox" name="hobby" value="game"/>游戏 
	      <input type="checkbox" name="hobby" value="happy"/>娱乐
	      <input type="checkbox" name="hobby" value="play"/>玩耍 <br/><br/>
	    邮箱: <input type="text" name="email" /> <br/><br/>
	    手机号:<input type="text" name="tel" /> <br/><br/>
	    <input type="submit" value="注册"/>
	</form>
  </body>
</html>
