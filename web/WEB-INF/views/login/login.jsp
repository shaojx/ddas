<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Login</title>
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
    <script type="text/javascript" src="<%=path%>/business/login/login.js"></script>

    <link type="text/css" href="<%=path%>/common/bootstrapvalidator/css/bootstrapValidator.min.css"/>
    <script src="<%=path%>/common/bootstrapvalidator/js/bootstrapValidator.min.js" type="text/javascript"></script>
    <script src="<%=path%>/common/bootstrapvalidator/js/language/${local}.js" type="text/javascript"></script>

    <style type="text/css">
        #errorP{
            font-size: 13px;
            color: red;
            height:25px;
            line-height: 25px;
            /*margin-left: 25%;*/
            MARGIN-RIGHT: auto;
            MARGIN-LEFT: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <section class="loginBox row-fluid">
        <div class="center-block" style="text-align:center;" id="errorP">
        </div>
        <form class="form-horizontal" style="margin-top: 10px;margin-left: 25px;" id="myForm">
            <DIV class="form-group width350">
                <input type="text" class="form-control center-block" name="username" placeholder="用户名" id="userName" required/>
            </DIV>
            <DIV class="form-group width350">
                <input type="password" class="form-control center-block" name="password" placeholder="密码" id="password" required/>
            </DIV>
            <DIV class="form-group width350">
                <input type="checkbox" style="vertical-align: middle;" id="remeberme" checked="checked"/>
                <span class="inline-block" style="vertical-align: middle;">下次自动登录</span>
            </DIV>
            <div class="form-group width350" style="margin-bottom: 20px;">
                <input type="button" value=" 登录 " class="btn btn-primary form-control  center-block" id="loginBtn">
                <div class="row">
                    <span class="col-md-offset-4 col-md-4 margin-top-10px">没有帐号?<a href="javascript:void(0);" id="registerBtn">注 册</a></span>
                </div>
            </div>
        </form>
    </section>
</div>
</body>
</html>
