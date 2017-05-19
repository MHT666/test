<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'qingqiu.jsp' starting page</title>
    
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
  		request.setCharacterEncoding("UTF-8");
  		out.print(request.getParameter("user")+"<br>");
  		out.print(request.getParameter("sex")+"<br>");
  		String hobbys[] = request.getParameterValues("hobby");
  		for(int i=0;i<hobbys.length;i++){
  			out.print(hobbys[i]+"  ");
  		}
  	 %>
  	 <br/><br/>
  	<%
  		request.setAttribute("user1",request.getParameter("user"));
  		request.setAttribute("sex1",request.getParameter("sex"));
  		request.setAttribute("hobby1",request.getParameter("hobby"));
  		request.getRequestDispatcher("first.jsp").forward(request, response);
  	 %>
  </body>
</html>
