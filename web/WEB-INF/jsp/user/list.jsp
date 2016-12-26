<%@page import="com.hkwy.model.Page"%>
<%@page import="com.hkwy.model.User"%>
<%@page import="com.hkwy.service.impl.UserService"%>
<%@page import="com.hkwy.service.IUserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  	<%-- <%
  		Page<User> pages = (Page<User>)request.getAttribute("pages");
  		List<User> users = pages.getDatas();
  		User loginUser = (User)session.getAttribute("loginUser");
  	 %>
  	<h1 align="center">用户列表</h1>
  	<hr>
    <table align="center" border="1" width="700px">
    	<tr>
    		<td>ID</td>
    		<td>用户名</td>
    		<td>昵称</td>
    		<td>角色</td>
    		<td>状态</td>
    		<td>操作</td>
    	</tr>
    <%
    	for(User user:users) {
    %>
    		<tr>
    			<td><%=user.getId() %></td>
    			<td><%=user.getUsername() %></td>
    			<td><%=user.getNickname() %></td>
    			<%
    				if(user.getRole() == 1) {
    			%>
    				<td>管理员</td>
    			<%
    				}
    				else if(user.getRole() == 2) {
    			%>
    				<td>用户</td>
    			<%
    				}
    				if(user.getStatus() == 1) {
    					if(loginUser.getRole() == 1) {
    			%>
    						<td><a href="<%=request.getContextPath()%>/user?method=updateStatus&id=<%=user.getId()%>">启用</a></td>
    			<%
    					}
    					else {
    			%>
    						<td>启用</td>
    			<%
    					}
    				}
    				else if(user.getStatus() == 2) {
    					if(loginUser.getRole() == 1) {
    			%>
    						<td><a href="<%=request.getContextPath()%>/user?method=updateStatus&id=<%=user.getId()%>">停用</a></td>
    			<%
    					}
    					else {
    			%>
    						<td>停用</td>
    			<%
    					}
    				}
    			 %>
    			 
    			<td>
    			<%
    				if(loginUser.getRole() == 1) {
    			%>
    					<a href="<%=request.getContextPath()%>/user?method=updateInput&id=<%=user.getId()%>">修改</a>
    			<%
    					if(loginUser.getId() != user.getId()) {
    			%>
    					<a href="<%=request.getContextPath()%>/user?method=delete&id=<%=user.getId()%>">删除</a>
    			<%
    					}
    				}
    				else if(loginUser.getRole() == 2) {
    					if(loginUser.getId() == user.getId()) {
    			%>
    					<a href="<%=request.getContextPath()%>/user?method=updateInput&id=<%=user.getId()%>">修改</a>
    			<%
    					}
    				}
    			 %>
    			</td>
    		</tr>
    <%
    	}
     %>
    </table>
    <div align="center">一共[<%=pages.getTotalPage() %>]页,当前第[<%=pages.getPageIndex() %>]页</div>
    <div align="center">
    <%
   		if(pages.getPageIndex() != 1) {
   	%>
   			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=1">首页</a>
   			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=<%=pages.getPageIndex() - 1%>">上一页</a>
   	<%
   		}
   		for(int i = 1;i <= pages.getTotalPage();i++) {
   			if(pages.getPageIndex() != i) {
   	%>	
   				<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=<%=i%>">[<%=i %>]</a>
   	<%
   			}
   			else {
   	%>
   				<%=i %>
   	<%
   			}
   		}
   		if(pages.getPageIndex() != pages.getTotalPage()) {
   	%>
   			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=<%=pages.getPageIndex() + 1%>">下一页</a>
   			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=<%=pages.getTotalPage()%>">尾页</a>
   	<%
   		}
     %>
    </div> --%>
    <h1 align="center">用户列表</h1>
  	<hr>
    <table align="center" border="1" width="700px">
    	<tr>
    		<td>ID</td>
    		<td>用户名</td>
    		<td>昵称</td>
    		<td>角色</td>
    		<td>状态</td>
    		<td>操作</td>
    	</tr>
    	<c:forEach items="${pages.datas }" var="user">
    		<tr>
    			<td>${user.id }</td>
    			<td>${user.username }</td>
    			<td>${user.nickname }</td>
    			<c:if test="${user.role eq 1 }"><td>管理员</td></c:if>
    			<c:if test="${user.role eq 2 }"><td>用户</td></c:if>
    			<td>
	    			<c:choose>
	    				<c:when test="${loginUser.role eq 1 }">
	    					<c:if test="${user.status eq 1 }"><a href="<%=request.getContextPath()%>/user?method=updateStatus&id=${user.id}">启用</a></c:if>
	    					<c:if test="${user.status eq 2 }"><a href="<%=request.getContextPath()%>/user?method=updateStatus&id=${user.id}">停用</a></c:if>
	    				</c:when>
	    				<c:otherwise>
	    					<c:if test="${user.status eq 1 }">启用</c:if>
	    					<c:if test="${user.status eq 2 }">停用</c:if>
	    				</c:otherwise>
	    			</c:choose>
    			</td>
    			<td>
    				<c:choose>
    					<c:when test="${loginUser.role eq 1 }">
    						<a href="<%=request.getContextPath()%>/user?method=updateInput&id=${user.id}">修改</a>
    						<c:if test="${loginUser.id ne user.id }">
    							<a href="<%=request.getContextPath()%>/user?method=delete&id=${user.id}">删除</a>
    						</c:if>
    					</c:when>
    					<c:otherwise>
    						<c:if test="${loginUser.id ne user.id }">
    							<a href="<%=request.getContextPath()%>/user?method=updateInput&id=${user.id}">修改</a>
    						</c:if>
    					</c:otherwise>
    				</c:choose>
    			</td>
    		</tr>
    	</c:forEach>
    </table>
    <div align="center">一共有[${pages.totalPage }]页,当前第[${pages.pageIndex }]页</div>
    <div align="center">
    	<c:if test="${pages.pageIndex ne 1 }">
    		<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=1">首页</a>
   			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=${pages.pageIndex - 1}">上一页</a>
    	</c:if>
    	<c:forEach begin="0" end="${pages.totalPage - 1 }" varStatus="i">
    		<c:if test="${(i.index + 1) eq pages.pageIndex  }">${i.index + 1 }</c:if>
    		<c:if test="${(i.index + 1) ne pages.pageIndex  }">
    			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=${i.index + 1}">${i.index + 1 }</a>
    		</c:if>
    	</c:forEach>
    	<c:if test="${pages.pageIndex ne pages.totalPage }">
    		<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=${pages.pageIndex + 1 }">下一页</a>
   			<a href="<%=request.getContextPath()%>/user?method=list&pageIndex=${pages.totalPage}">尾页</a>
    	</c:if>
    </div>
  </body>
</html>
