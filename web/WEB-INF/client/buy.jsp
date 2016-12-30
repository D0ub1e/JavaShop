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
    
    <title>My JSP 'buy.jsp' starting page</title>
    
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
		
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		
		.cla {
			width: 230px;
			height: 230px;
			float: left;
			margin-right: 30px;
		}
		
		li {
			list-style: none;
			height: 30px;
		}
		
		#buynum {
			width: 30px;
		}
		
		#minus,#plus {
			width: 15px;
		}
		
	</style>
	<script type="text/javascript">
		window.onload = function() {
			var buynum = document.getElementById("buynum");
			
			var n = document.getElementById("n").innerHTML;
			var minus = document.getElementById("minus");
			minus.onclick = function() {
				var num = parseInt(buynum.value);
				if(num > 1) {
					buynum.value = num - 1;
				} 
			};
			var plus = document.getElementById("plus");
			plus.onclick = function() {
				var num = parseInt(buynum.value);
				if(num < n) {
					buynum.value = num + 1;
				}
			};
			buynum.onblur = function() {
				var num = parseInt(this.value);
				if(num > n) {
					alert("最大支持购买" + n + "个!");
					this.value = n;
				}
				
			};
		};
	</script>
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
    		<div class="cla"><img src="<%=request.getContextPath()%>/img/${product.img}" width="200px"></div>
    		<div class="cla">
    			<form action="<%=request.getContextPath()%>/shopCart?method=buy" method="post">
    				<input type="hidden" value="${product.id }" name="id">
	    			<ul>
	    				<li>商品名称：${product.name }</li>
	    				<li>原价:<del>${product.price }</del></li>
	    				<li>折扣价:${(product.price)*(product.discount) }</li>
	    				<li>库存:<span id="n">${product.num }</span></li>
	    				<li>购买数量:
	    					<input type="button" value="-" id="minus">
	    					<input type="text" value="1" name="buynum" id="buynum">
	    					<input type="button" value="+" id="plus">
	    				</li>
	    				<li><input type="submit" value="加入购物车" ></li>
	    			</ul>
    			</form>
    		</div>
    	</div>
    </div>

  </body>
</html>
