<%--
  Created by IntelliJ IDEA.
  User: double2
  Date: 2016/12/30
  Time: 下午9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin user Examples</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="../../assets/css/custom.css">
    <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

                <!-- content start -->
                <div class="admin-content">
                    <div class="admin-content-body">
                        <div class="am-cf am-padding am-padding-bottom-0">
                            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">商品资料</strong> / <small>Product information</small></div>
                        </div>

            <hr/>

            <div class="am-g">
                <form action="<%=request.getContextPath()%>/product?method=upload" method="post">
                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-bd">
                            <div class="am-g">
                                <div class="am-u-md-4">
                                    <img class="am-img-circle am-img-thumbnail" src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/200/h/200/q/80" alt=""/>
                                </div>
                                <div class="am-u-md-8">
                                    <form class="am-form">
                                        <div class="am-form-group">
                                            <input type="file" name="img">
                                            <p class="am-form-help">请选择要上传的文件...</p>
                                            <button type="button" class="am-btn am-btn-primary am-btn-xs">保存</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 这是一个面板-->
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-bd">
                            <div class="user-info">
                                <p>等级信息</p>
                                <div class="am-progress am-progress-sm">
                                    <div class="am-progress-bar" style="width: 60%"></div>
                                </div>
                                <p class="user-info-order">当前等级：<strong>LV8</strong> 活跃天数：<strong>587</strong> 距离下一级别：<strong>160</strong></p>
                            </div>
                            <div class="user-info">
                                <p>信用信息</p>
                                <div class="am-progress am-progress-sm">
                                    <div class="am-progress-bar am-progress-bar-success" style="width: 80%"></div>
                                </div>
                                <p class="user-info-order">信用等级：正常当前 信用积分：<strong>80</strong></p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                    <form class="am-form am-form-horizontal">
                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">商品名称 / Name</label>
                            <div class="am-u-sm-9">
                                <input type="text"  name="name">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">商品价格 / price</label>
                            <div class="am-u-sm-9">
                                <input type="text"  name="price">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">商品数量/num</label>
                            <div class="am-u-sm-9">
                                <input type="tel"  name="num">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label  class="am-u-sm-3 am-form-label">商品类别/categories</label>
                            <div class="am-u-sm-9">
                                <select name="category">
                                    <option>请选择类别</option>
                                    <c:forEach items="${categories}" var="c">
                                        <option value="${c.id}">${c.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label  class="am-u-sm-3 am-form-label">折扣/discount</label>
                            <div class="am-u-sm-9">
                                <input type="text"  name="discount">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
                            <div class="am-u-sm-9">
                                <textarea class="" rows="5" id="user-intro" placeholder="输入个人简介" name="disc"></textarea>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-3">
                                <input  value="提交" type="submit">
                                <input value="重新" type="reset">
                            </div>
                        </div>
                    </form>
                </div>



<footer>
    <hr >
<p class="am-padding-left"><strong>Copyright © 2016, Smartisan Digital Co., Ltd. All Rights Reserved.北京锤子数码科技有限公司</strong></p>
</footer>
    </div>
    <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>


</body>
</html>

