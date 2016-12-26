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
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			font-size: 12px;
		}
		
		#up {
			height: 80px;
			background: #333;
		}
		
		#up span {
			font-size: 40px;
			position: relative;
			top: 14px;
			left: 50px;
			color: #fff;
		}
		
		#down {
			height: 20px;
			background: #aaa;
			text-align: right;
		}
		
		#down span {
			position: relative;
			top: 4px;
			right: 50px;
			color: #111;
		}
		
		#down span a:link,#down span a:VISITED {
			color: #fff;
			text-decoration: none;
			font-weight: bold;
		}
		
		#down span a:hover {
			color: #ddd;
			text-decoration: underline;
			font-weight: bold;
		}
	</style>
  </head>
  
  <body>
  	<%
  		User loginUser = (User)session.getAttribute("loginUser");
  	 %>
    <div id="up">
    	<span>欢迎登录后台管理系统</span>
    </div>
    <div id="down">
    	<span>欢迎[<a href="#"><%=loginUser.getNickname() %></a>]<a href="<%=request.getContextPath()%>/user?method=logout" target="_top">退出</a>&nbsp;&nbsp;2016年12月6日</span>
    </div>
  </body>
</html>
