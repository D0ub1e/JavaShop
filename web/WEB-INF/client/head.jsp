<%--
  Created by IntelliJ IDEA.
  User: double
  Date: 16-12-28
  Time: 下午6:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
<body>
<nav class="navbar nav-justified">
    <div class="nav-header">
            <div class="navbar-brand"><img src="img/02.ico" /></div>
                <ul class="nav navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/user?method=shop" class="current" target="context">在线商城</a></li>
                    <li><a href="#services">Smartisan M1/M1l</a></li>
                    <li><a href="#work">Smartisan</a></li>
                    <li><a href="#blog">欢喜云</a></li>
                    <li><a href="#about">应用下载</a></li>
                    <li><a href="#contact">官方论坛</a></li>
                    <li><c:if test="${loginUser eq null }">
                        <a href="<%=request.getContextPath()%>/user?method=logout" target="_top" >登录或注册</a>
                    </c:if>
                        <c:if test="${loginUser ne null }">
                            <a>${loginUser.username }</a>
                        </c:if>
                    </li>
                </ul>

        </div>
    </div>
</nav>

</body>
</html>
