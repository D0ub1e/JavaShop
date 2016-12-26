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
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
    <h1 align="center">商品列表</h1>
    <hr>
    <table align="center" width="800px" border="1">
    	<tr>
    		<td>ID</td>
    		<td>商品名称</td>
    		<td>商品价格</td>
    		<td>商品库存</td>
    		<td>销量</td>
    		<td>描述</td>
    		<td>折扣</td>
    		<td>图片</td>
    		<td>状态</td>
    		<td>操作</td>
    	</tr>
    	<c:forEach items="${pages.datas }" var="p">
    		<tr>
    			<td>${p.id }</td>
    			<td>${p.name }</td>
    			<td>${p.price }</td>
    			<td>${p.num }</td>
    			<td>${p.total }</td>
    			<td>${p.disc }</td>
    			<td>${p.discount }</td>
    			<td><img src="<%=request.getContextPath()%>/img/${p.img}" width="200px"/></td>
    			<td>
    				<c:if test="${p.status eq 1 }"><a>上架</a></c:if>
    				<c:if test="${p.status eq 2 }">下架</c:if>
    			</td>
    			<td>修改 删除</td>
    		</tr>
    	</c:forEach>
    </table>
    <div align="center">一共有[${pages.totalPage }]页,当前第[${pages.pageIndex }]页</div>
    <div align="center">
    	<c:if test="${pages.pageIndex ne 1 }">
    		<a href="<%=request.getContextPath()%>/product?method=list&pageIndex=1">首页</a>
   			<a href="<%=request.getContextPath()%>/product?method=list&pageIndex=${pages.pageIndex - 1}">上一页</a>
    	</c:if>
    	<c:forEach begin="0" end="${pages.totalPage - 1 }" varStatus="i">
    		<c:if test="${(i.index + 1) eq pages.pageIndex  }">${i.index + 1 }</c:if>
    		<c:if test="${(i.index + 1) ne pages.pageIndex  }">
    			<a href="<%=request.getContextPath()%>/product?method=list&pageIndex=${i.index + 1}">${i.index + 1 }</a>
    		</c:if>
    	</c:forEach>
    	<c:if test="${pages.pageIndex ne pages.totalPage }">
    		<a href="<%=request.getContextPath()%>/product?method=list&pageIndex=${pages.pageIndex + 1 }">下一页</a>
   			<a href="<%=request.getContextPath()%>/product?method=list&pageIndex=${pages.totalPage}">尾页</a>
    	</c:if>
    </div>
  </body>
</html>
