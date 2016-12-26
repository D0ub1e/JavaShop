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
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
    <h1 align="center">添加商品</h1>
    <hr>
    <form action="<%=request.getContextPath()%>/product?method=upload" method="post" enctype="multipart/form-data">
    	<table align="center">
    		<tr>
    			<td>商品名称</td>
    			<td><input type="text" name="name"></td>
    		</tr>
    		<tr>
    			<td>商品价格</td>
    			<td><input type="text" name="price"></td>
    		</tr>
    		<tr>
    			<td>商品数量</td>
    			<td><input type="text" name="num"></td>
    		</tr>
    		<tr>
    			<td>商品描述</td>
    			<td><textarea rows="3" cols="22" name="disc"></textarea></td>
    		</tr>
    		<tr>
    			<td>商品折扣</td>
    			<td><input type="text" name="discount"></td>
    		</tr>
    		<tr>
    			<td>商品图片</td>
    			<td><input type="file" name="img"></td>
    		</tr>
    		<tr>
    			<td>选择类别</td>
    			<td>
    				<select name="category">
    					<option>请选择类别</option>
    					<c:forEach items="${categories }" var="c">
    						<option value="${c.id }">${c.name }</option>
    					</c:forEach>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="提交"></td>
    			<td><input type="reset" value="重输"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
