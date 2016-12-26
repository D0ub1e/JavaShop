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
    <h1 align="center">类别列表</h1>
    <hr>
    <table align="center" width="800px" border="1">
    	<tr>
    		<td>序号</td>
    		<td>类别名称</td>
    		<td>操作</td>
    	</tr>
    	<c:forEach items="${pages.datas }" var="c" varStatus="i">
    		<c:if test="${i.index%2 eq 0 }">
	    		<tr class="odd">
	   				<td>${i.index + 1 }</td>
	    			<td>${c.name }</td>
	    			<td>修改 删除</td>
	    		</tr>
    		</c:if>
    		<c:if test="${i.index%2 ne 0 }">
    			<tr class="even">
	   				<td>${i.index + 1 }</td>
	    			<td>${c.name }</td>
	    			<td>修改 删除</td>
	    		</tr>
    		</c:if>
    			
    	</c:forEach>
    </table>
    <div align="center">一共有[${pages.totalPage }]页,当前第[${pages.pageIndex }]页</div>
    <div align="center">
    	<c:if test="${pages.pageIndex ne 1 }">
    		<a href="<%=request.getContextPath()%>/category?method=list&pageIndex=1">首页</a>
   			<a href="<%=request.getContextPath()%>/category?method=list&pageIndex=${pages.pageIndex - 1}">上一页</a>
    	</c:if>
    	<c:forEach begin="0" end="${pages.totalPage - 1 }" varStatus="i">
    		<c:if test="${(i.index + 1) eq pages.pageIndex  }">${i.index + 1 }</c:if>
    		<c:if test="${(i.index + 1) ne pages.pageIndex  }">
    			<a href="<%=request.getContextPath()%>/category?method=list&pageIndex=${i.index + 1}">${i.index + 1 }</a>
    		</c:if>
    	</c:forEach>
    	<c:if test="${pages.pageIndex ne pages.totalPage }">
    		<a href="<%=request.getContextPath()%>/category?method=list&pageIndex=${pages.pageIndex + 1 }">下一页</a>
   			<a href="<%=request.getContextPath()%>/category?method=list&pageIndex=${pages.totalPage}">尾页</a>
    	</c:if>
    </div>
  </body>
</html>
