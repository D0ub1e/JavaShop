<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'login.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        #msg {
            color: #aaa;
        }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            var msg = document.getElementById("msg");

            msg.onfocus = function () {
                if (this.value == "用户名/手机号") {
                    this.value = "";
                    this.style.color = "#000";
                }
            };
            msg.onblur = function () {
                if (this.value == "") {
                    this.value = "用户名/手机号";
                    this.style.color = "#aaa";
                }
            };
        };
    </script>
</head>

<body>
<h1 align="center">用户登录</h1>
<hr>
<form action="<%=request.getContextPath()%>/client?method=login" method="post">
    <table align="center">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="msg" value="用户名/手机号" id="msg"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
</body>
</html>
