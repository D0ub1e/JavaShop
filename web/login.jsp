<%--
  Created by IntelliJ IDEA.
  User: double
  Date: 16-12-28
  Time: 上午10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login in</title>

    <meta name="description" content="User login page"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/font-awesome/4.2.0/css/font-awesome.min.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="assets/css/ace-part2.min.css"/>
    <![endif]-->
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>

    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-layout light-login">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="ace-icon fa fa-search red"></i>
                            <span class="red">Ace</span>
                            <span class="white" id="id-text2"></span>
                        </h1>
                        <h4 class="blue" id="id-company-text">&copy;双磊科技公司</h4>
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-key blue"></i>
                                        请输入您的信息
                                    </h4>

                                    <div class="space-6"></div>
                                    <!--登陆 form界面-->
                                    <form action="<%=request.getContextPath()%>/user?method=login" method="post">
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control"
                                                                   placeholder="用户名" name="username" minlength="2" required/>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="密码" name="password" minlength="2" required/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <div class="space"></div>

                                            <button type="reset" class="width-35 pull-left btn btn-sm btn-danger">
                                                <span class="bigger-110">重置</span>
                                            </button>
                                                <input type="submit" value="登陆" class="width-35 pull-right btn btn-sm btn-primary">

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>
                                    <%--<div class="social-or-login center">--%>
                                        <%--<span class="bigger-110">第三方登录</span>--%>
                                    <%--</div>--%>

                                    <%--<div class="space-9"></div>--%>

                                    <%--<div class="social-login center">--%>
                                        <%--<a class="btn btn-primary">--%>
                                            <%--<i class="ace-icon fa fa-facebook"></i>--%>
                                        <%--</a>--%>

                                        <%--<a class="btn btn-info">--%>
                                            <%--<i class="ace-icon fa fa-twitter"></i>--%>
                                        <%--</a>--%>

                                        <%--<a class="btn btn-danger">--%>
                                            <%--<i class="ace-icon fa fa-google-plus"></i>--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                </div><!-- /.widget-main -->

                                <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                            <i class="ace-icon fa fa-arrow-left"></i>
                                            忘记密码
                                        </a>
                                    </div>

                                    <div>
                                        <a href="#" data-target="#signup-box" class="user-signup-link">
                                            注册
                                            <i class="ace-icon fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->

                        <div id="forgot-box" class="forgot-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header red lighter bigger">
                                        <i class="ace-icon fa fa-key"></i>
                                        找回密码
                                    </h4>

                                    <div class="space-6"></div>
                                    <p>
                                        输入您的电子邮件和接收指令
                                    </p>

                                    <form>
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control"
                                                                   placeholder="Email" minlength="2" required/>
															<i class="ace-icon fa fa-envelope"></i>
														</span>
                                            </label>

                                            <div class="clearfix">
                                                <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                    <i class="ace-icon fa fa-lightbulb-o"></i>
                                                    <span class="bigger-110">发送邮件</span>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div><!-- /.widget-main -->

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        返回登录
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.forgot-box -->



                        <!-- 注册界面-->
                        <div id="signup-box" class="signup-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="ace-icon fa fa-users blue"></i>
                                        用户注册
                                    </h4>

                                    <div class="space-6"></div>
                                    <p>填写信息: </p>

                                    <form action="<%=request.getContextPath()%>/user?method=add" method="post">

                                    <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="邮箱" name="username" required/>
															<i class="ace-icon fa fa-envelope"  ></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名" name="nickname" minlength="2" required/>
															<i class="ace-icon fa fa-user" ></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="密码" name="password" minlength="5" required/>
                                                                <i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="确认密码" minlength="5" required/>
															<i class="ace-icon fa fa-retweet"></i>
														</span>
                                            </label>

                                            <label class="block">
                                                <input type="checkbox" class="ace"/>
                                                <span class="lbl">
															接受
															<a href="#">用户协议</a>
														</span>
                                            </label>

                                            <div class="space-24"></div>

                                            <div class="clearfix">
                                                <button type="reset" class="width-35 pull-left btn btn-sm">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    <span class="bigger-110">重置</span>
                                                </button>

                                                <input type="submit" value="注册" class="width-35 pull-right btn btn-sm btn-primary">

                                                    <%--<i class="ace-icon fa fa-arrow-right icon-on-right"></i>--%>

                                            </div>
                                        </fieldset>
                                    </form>
                                </div>

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        返回登录
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.signup-box -->
                    </div><!-- /.position-relative -->

                    <!--修改背景图片按钮 -->
                    <div class="navbar-fixed-top align-right">
                        <br/>
                        &nbsp;
                        <a id="btn-login-dark" href="#">Dark</a>
                        &nbsp;
                        <span class="blue">/</span>
                        &nbsp;
                        <a id="btn-login-blur" href="#">Blur</a>
                        &nbsp;
                        <span class="blue">/</span>
                        &nbsp;
                        <a id="btn-login-light" href="#">Light</a>
                        &nbsp; &nbsp; &nbsp;
                    </div>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->
<!-- basic scripts -->
<!--[if !IE]> -->
<script src="assets/js/jquery.2.1.1.min.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<script src="assets/js/jquery.1.11.1.min.js"></script>
<![endif]-->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<!-- 这是个文本验证程序 -->
<script src="WEB-INF/assets/js/jquery.validate.min.js"></script>
<script>
    $.validator.setDefaults({
        submitHandler: function() {
            alert("登陆成功!");
        }
    });
    $().ready(function() {
        $("#commentForm").validate();
    });
</script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $(document).on('click', '.toolbar a[data-target]', function (e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');//hide others
            $(target).addClass('visible');//show target
        });
    });



    // 修改背景的装饰
    jQuery(function ($) {
        $('#btn-login-dark').on('click', function (e) {
            $('body').attr('class', 'login-layout');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-light').on('click', function (e) {
            $('body').attr('class', 'login-layout light-login');
            $('#id-text2').attr('class', 'grey');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-blur').on('click', function (e) {
            $('body').attr('class', 'login-layout blur-login');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'light-blue');

            e.preventDefault();
        });

    });
</script>
<div style="text-align:center;">
    <p>来源:<a href="http://www.mycodes.net/" target="_blank">Soublew</a></p>
</div>
</body>
</html>
