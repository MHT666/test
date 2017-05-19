<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String number = request.getParameter("number");
	boolean flag = false;
	if(flag == false){
		Cookie cookie = new Cookie(name,number);
		cookie.setMaxAge(3000);
		response.addCookie(cookie);
	}
	
	Cookie cookies[] = request.getCookies();	
	if(cookies != null){
		for(Cookie cook : cookies){
			if(cook != null){
				if(cook.getName().equals(name)){
					int num = Integer.parseInt(cook.getValue())+Integer.parseInt(number);
					cook.setValue(num+"");
					cook.setMaxAge(3000);
					flag = true;
					response.addCookie(cook);
				}
			}
		}
	}
	
	response.sendRedirect("select.jsp");
 %>
