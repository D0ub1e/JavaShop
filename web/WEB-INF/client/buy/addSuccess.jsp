<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addSuccess.jsp' starting page</title>
    
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
		
		#header {
			height: 40px;
			background: #f5f5f5
		}
		
		#c_header {
			height: 40px;
			width: 1000px;
			position: absolute;
			left: 50%;
			margin-left: -500px;
		}
	</style>
  </head>
  
  <body>
    <div id="header">
    	<div id="c_header">
    		<c:if test="${loginClient eq null }">
    			<a href="<%=request.getContextPath()%>/client?method=loginInput">登录</a>|
    			<a href="<%=request.getContextPath()%>/client?method=create">注册</a>
    		</c:if>
    		<c:if test="${loginClient ne null }">
    			<a>${loginClient.username }</a>
    		</c:if>
    	</div>
    </div>
    <div id="con">
    	<div id="c_con">
    		<h1>添加成功</h1>
    		<a href="<%=request.getContextPath()%>/index.html">继续购买</a>
    		<a href="<%=request.getContextPath()%>/shopCart?method=clear">去结算</a>
    	</div>
    </div>
  </body>
</html>
