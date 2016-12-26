<%@page import="com.hkwy.model.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		td {
			text-align: center;
		}
	</style>
  </head>
  
  <body>
  	<%
  		User user = (User)request.getAttribute("user");
  	 %>
    <h1 align="center">用户修改</h1>
    <hr>
    <form action="<%=request.getContextPath() %>/user?method=update" method="post">
    	<!-- 隐藏表单域,该表单域不会在页面上显示,但是会随着表单一起提交 -->
    	<input type="hidden" name="id" value="<%=user.getId()%>">
    	<table align="center" width="400px">
    		<tr>
    			<td>用户名</td>
    			<td><%=user.getUsername() %></td>
    		</tr>
    		<tr>
    			<td>密码</td>
    			<td><input type="password" name="password"></td>
    		</tr>
    		<tr>
    			<td>昵称</td>
    			<td><input type="text" name="nickname" value="<%=user.getNickname()%>"></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit" value="确定"><input type="reset" value="清空"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
