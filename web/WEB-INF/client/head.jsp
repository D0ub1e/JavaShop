<%--
  Created by IntelliJ IDEA.
  User: double
  Date: 16-12-28
  Time: 下午6:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>官方在线商城-Smattisan</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../assets/css/custom.css">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">

    <script src="../../assets/js/jquery.2.1.1.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar" role="navigation">
    <div class="container-fluid" >
    <div class="nav-header">

                <a class="navbar-brand"  href="<%=request.getContextPath()%>/user?method=shop" target="context" >锤子科技官方商城</a>
    </div>

                <ul class="nav navbar-nav navbar-right" >
                    <li><a href="#services" class="active">Smartisan M1/M1l</a></li>
                    <li><a href="#work">Smartisan</a></li>
                    <li><a href="#blog">欢喜云</a></li>

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
                    <li><a href="#contact">官方论坛</a></li>
                    <li>
                        <c:if test="${loginUser eq null }">
                        <a href="<%=request.getContextPath()%>/user?method=logout" target="_top">
                            <span class="glyphicon glyphicon-log-in"></span>
                            登录或注册
                        </a>
                        </c:if>
                        <c:if test="${loginUser ne null }">
                            <span class="glyphicon glyphicon-user"></span>
                            <a>${loginUser.username }</a>
                        </c:if>

                    </li>
                </ul>
            </div>
</nav>

</body>
</html>
