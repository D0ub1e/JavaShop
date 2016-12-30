<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



  <html>
  <head>
	  <meta charset="utf-8">
	  <title>官方在线商城-Smattisan</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="../../assets/css/custom.css">
	  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
	  <script src="../../assets/js/jquery.2.1.1.min.js"></script>
	  <script src="../../assets/js/bootstrap.min.js"></script>
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
  <nav class="navbar" role="navigation">
	  <div class="container-fluid" >
		  <div class="nav-header">

			  <a class="navbar-brand"  href="<%=request.getContextPath()%>/user?method=shop" >锤子科技官方商城</a>
		  </div>

		  <ul class="nav navbar-nav navbar-right" >
			  <li><a href="<%=request.getContextPath()%>/user?method=phone" >Smartisan M1/M1l</a></li>
			  <li><a href="<%=request.getContextPath()%>/user?method=os" >Smartisan OS</a></li>
			  <li><a href="<%= request.getContextPath()%>/user?method=headphone" class="active">耳机</a></li>
			  <li class="dropdown">
				  <a href="#about" class="dropdown-toggle" data-toggle="dropdown">应用下载<b class="caret"></b></a>
				  <ul class="dropdown-menu">
					  <li><a href="#">jmeter</a></li>
					  <li><a href="#">EJB</a></li>
					  <li><a href="#">Jasper Report</a></li>
					  <li class="divider"></li>
					  <li><a href="#">分离的链接</a></li>
					  <li class="divider"></li>
					  <li><a href="#">另一个分离的链接</a></li>
				  </ul>
			  </li>
			  <li><a href="http://bbs.smartisan.com/forum.php">官方论坛</a></li>
			  <li>
				  <c:if test="${loginUser eq null }">
					  <a href="<%=request.getContextPath()%>/user?method=logout" target="_top">
						  <span class="glyphicon glyphicon-log-in"></span>
						  登录或注册
					  </a>
				  </c:if>
				  <c:if test="${loginUser ne null }">
					  <a class="glyphicon glyphicon-user">${loginUser.username }</a>
				  </c:if>

			  </li>
		  </ul>
	  </div>
  </nav>

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
