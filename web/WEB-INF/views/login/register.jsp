<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Register</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="<%=path%>/common/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="<%=path%>/business/common/css/common.css" rel="stylesheet"/>
    <link href="<%=path%>/business/login/login.css" rel="stylesheet">
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
    <script type="text/javascript" src="<%=path%>/common/md5/md5.min.js"></script>
    <script type="text/javascript" src="<%=path%>/business/login/register.js"></script>
</head>
<body>
<div class="container-fluid">
    <section class="loginBox row-fluid">
        <form class="form-horizontal margin-left-10px" style="margin-top: 25px;">
            <DIV class="form-group">
                <input type="text" class="form-control width300" name="username" placeholder="用户名" id="userName"/>
            </DIV>
            <DIV class="form-group">
                <input type="text" class="form-control width300" name="password" placeholder="密码" id="password"/>
            </DIV>
            <DIV class="form-group">
                <div class="row">
                    <label class="col-md-5">
                        <input type="checkbox" class="control-label" name="rememberme" style="vertical-align: middle;"
                               id="remeberme"/>
                        <span class="inline-block" style="vertical-align: middle;">下次自动登录</span>
                    </label>
                    <input type="button" value=" 登录 " class="btn btn-primary col-md-offset-2" id="loginBtn">
                </div>
                <div class="row">
                    <span class="col-lg-offset-6 col-md-2">没有帐号?<a href="javascript:void(0);">注 册</a></span>
                </div>
            </DIV>
        </form>
    </section>
</div>
</body>
</html>
