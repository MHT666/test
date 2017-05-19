<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'select.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function buy(name,number){
			location.href = "goShopping/buy.jsp?name="+name+"&number="+number;
		}
		
	</script>

  </head>
  
  <body>
  <form action="goShopping/success.jsp" method="get">
    <table border=1 style="text-align: center;">
    	<tr>
    		<td>
    			商品
    		</td>
    		<td>
    			数量
    		</td>
    		<td>
    			操作
    		</td>
    	</tr>
    	
    	<tr>
    		<td>
    			哈哈hahah
    		</td>
    		<td>
    			<input type="text" name="haha" />
    		</td>
    		<td>
    			<input type="button" value="购买" onclick="buy('haha',haha.value)" />
    		</td>
    	</tr>
    	
    	<tr>
    		<td>
    			嘿嘿hbeiehei
    		</td>
    		<td>
    			<input type="text" name="heihei" />
    		</td>
    		<td>
    			<input type="button" value="购买" onclick="buy('heihei',heihei.value)" />
    		</td>
    	</tr>
    	
    	<tr>
	    		<td colspan="3">
	    			<input type="submit" value="提交" />
	    		</td>
	    	</tr>
    </table>
   </form>
  </body>
</html>
