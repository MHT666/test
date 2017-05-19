<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String user = request.getParameter("user");
	String password = request.getParameter("password");
	String sex = request.getParameter("sex");
	Object hobbys[] = request.getParameterValues("hobby");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	out.print(user+"---");
	out.print(password+"---");
	out.print(sex+"---");
	for(Object hobby : hobbys){
		out.print(hobby+"---");
	}
	out.print(email+"---");
	out.print(tel+"---");
 %>
