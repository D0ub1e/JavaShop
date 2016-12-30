<%--
  Created by IntelliJ IDEA.
  User: double
  Date: 16-12-28
  Time: 下午7:23
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

            <a class="navbar-brand"  href="<%=request.getContextPath()%>/user?method=shop" >锤子科技官方商城</a>
        </div>

        <ul class="nav navbar-nav navbar-right" >
            <li><a href="<%=request.getContextPath()%>/user?method=phone" >Smartisan M1/M1l</a></li>
            <li><a href="<%=request.getContextPath()%>/user?method=os" >Smartisan OS</a></li>
            <li><a href="<%=request.getContextPath()%>/product?method=find&msg=headphone">耳机</a></li>

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
                <a class="glyphicon glyphicon-user">&nbsp;${loginUser.username }</a>
                </c:if>
            </li>
        </ul>
    </div>
</nav>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标  ol是值标签定义有序列表-->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/img/big-slider/slide1.png" alt="First slide">
            <div class="carousel-caption">标题 1</div>
        </div>
        <div class="item">
            <img src="/img/big-slider/slide2.png" alt="Second slide">
            <div class="carousel-caption">标题 3</div>
        </div>
        <div class="item">
            <img src="/img/big-slider/slide3.png" alt="Third slide">
            <div class="carousel-caption">标题 2</div>
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;</a>
</div>

<!--缩略图 -->
<div class="row">
    <div class="col-sm-9 col-md-4">
        <a href="#" class="thumbnail">
            <img src="/img/blog/blog1.png"
            >
        </a>
    </div>
    <div class="col-sm-9 col-md-4">
        <a href="#" class="thumbnail">
            <img src="/img/blog/blog1.png"
            >
        </a>
    </div>
    <div class="col-sm-9 col-md-4">
        <a href="#" class="thumbnail">
            <img src="/img/blog/blog1.png"
            >
        </a>
    </div>

</div>
<div class="container ">
    <!-- 介绍说明的文档-->
    <div class="jumbotron ">
        <h1>官方精选
            <small>Smartisan M1</small>
        </h1>
        <p>这是一个超大屏幕（Jumbotron）的实例。</p>
        <div class="media-body">
            <h3 class="media-heading">媒体标题</h3>
            这是一些示例文本。这是一些示例文本。
            这是一些示例文本。这是一些示例文本。
            这是一些示例文本。这是一些示例文本。
            这是一些示例文本。这是一些示例文本。
            这是一些示例文本。这是一些示例文本。
        </div>
        <p><a class="btn btn-primary btn-lg" role="button">
            点击购买</a>
        </p>
    </div>

</div>


</body>
</html>
