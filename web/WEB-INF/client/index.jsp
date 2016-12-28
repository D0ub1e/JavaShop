<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>官方在线商城-Smattisan</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="hudd">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="css/font/fontello.css" type="text/css" media="screen"/>
	<link href="css/styles.css" rel="stylesheet" media="screen">
	<link href="css/media-queries.css" rel="stylesheet" media="screen">
	<link rel="shortcut icon" href="img/icons/favicon.ico">
	<link rel="apple-touch-icon" href="img/icons/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/icons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/icons/apple-touch-icon-114x114.png">
</head>
<frameset rows="10%,75%,15%" >
	<frame src="<%=request.getContextPath() %>/user?method=head"
		   scrolling="no" frameborder="0" noresize="noresize" name="head" />
	<frame src="<%=request.getContextPath() %>/user?method=shop"
		   scrolling="no" frameborder="0" noresize="noresize" name="context" />
	<frame src="<%=request.getContextPath() %>/user?method=foot"
		   scrolling="no" frameborder="0" noresize="noresize" />
</frameset>
</html>
