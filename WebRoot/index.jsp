<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>	
  	<h1>JSP基本语法</h1><br/>
  	<table>
  	<%
  		for(int i=1;i<10;i++){
  	 %>
  	 <tr>
  	<%
  			for(int j=1;j<=i;j++){
  				out.println("<td>"+j+"*"+i+"="+i*j+"</td>");
  			}
  	 %>
  	 </tr>
  	<%
  		}
  	 %>
  	</table>	 
  	<hr/>
  	<%!
  		int jc(int n){
  			if(n==1){
  				return 1;
  			}
  			return n*jc(n-1);
  		}
  	 %>
  	<%=jc(5) %>
  	<hr/>
  	<%@include file="static.jsp" %>
  	<jsp:include page="dong.jsp"></jsp:include>
  	<hr/>
  	<h1>JSP隐式对象</h1><br/>
  	<!-- JSP隐式对象 -->
  	<form action="qingqiu.jsp" method="post">
  		用户名:<input type="text" name="user" /><br/>
  		性别:<input type="radio" name="sex" value="1" />男
  			<input type="radio" name="sex" value="0" />女<br/>
  		爱好:<input type="checkbox" name="hobby" value="eat" />吃饭
  			<input type="checkbox" name="hobby" value="sleep" />睡觉<br/>
  		<input type="submit" value="提交" />
  	</form>
  </body>
</html>
