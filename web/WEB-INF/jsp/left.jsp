<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
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
			background: #aaa;
		}
		
		div {
			border: 1px #ddd dotted;
		}
		
		div h3 {
			height: 30px;
			cursor: pointer;
		}
		
		div h3.h {
			border-top: 1px #666 solid;
		}
		
		div h3 span {
			font-size: 18px;
			position: relative;
			top: 6px;
			left: 30px;
		}
		

		
		div ul li{
			height: 30px;
			list-style: none;
		}
		
		div ul li a {
			position: relative;
			top: 10px;
			left: 40px;
		}
		
		div ul li a:link,div ul li a:visited {
			color: #333;
			text-decoration: none;
		}
		
		div ul li a:hover {
			color: #222;
			text-decoration: underline;
			font-weight: bold;
		}
	</style>
  </head>
  
  <body>
    <div>
    	<h3><span>用户管理</span></h3>
    	<ul>
    		<li><a href="<%=request.getContextPath() %>/user?method=addInput" target="content">添加用户</a></li>
    		<li><a href="<%=request.getContextPath() %>/user?method=list" target="content">用户列表</a></li>
    	</ul>
    	<h3 class="h"><span>商品管理</span></h3>
    	<ul class="b">
    		<li><a href="<%=request.getContextPath()%>/product?method=addInput" target="content">添加商品</a></li>
    		<li><a href="<%=request.getContextPath()%>/product?method=list" target="content">商品列表</a></li>
    	</ul>
    	<h3 class="h"><span>类别管理</span></h3>
    	<ul class="b">
    		<li><a href="<%=request.getContextPath()%>/category?method=addInput" target="content">添加类别</a></li>
    		<li><a href="<%=request.getContextPath()%>/category?method=list" target="content">类别列表</a></li>
    	</ul>
    	<h3 class="h"><span>物流管理</span></h3>
    	<ul class="b">
    		<li><a href="#">添加用户</a></li>
    		<li><a href="#">用户列表</a></li>
    		<li><a href="#">用户权限</a></li>
    		<li><a href="#">管理角色</a></li>
    	</ul>
    </div>
  </body>
</html>
