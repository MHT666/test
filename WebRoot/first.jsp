<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'first.jsp' starting page</title>
    
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
  	<%
  		out.print(request.getAttribute("user1"));
  		out.print(request.getAttribute("sex1"));
  		//Enumeration enu = request.getAttributeNames();
  		//while(enu.hasMoreElements()){
  		//	String ele = enu.nextElement().toString();
  		//	String n = request.getAttribute(ele).toString();
  		//	out.print(ele+" "+n);
  		//}
  		response.sendRedirect("http://www.baidu.com");
  	 %>
  </body>
</html>
