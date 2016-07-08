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
    <link href="<%=path%>/business/login/register.css" rel="stylesheet">
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
        <form class="form-horizontal" style="margin-left: 20%;">
            <DIV class="form-group">
                <label class="control-label">用户名</label>
                <input type="text" class="form-control width300" name="username" placeholder="用户名" id="userName"/>
            </DIV>
            <DIV class="form-group">
                <label class="control-label">密 码</label>
                <input type="text" class="form-control width300" name="password" placeholder="密码" id="password"/>
            </DIV>
            <DIV class="form-group">
                <label class="control-label">确认密码</label>
                <input type="text" class="form-control width300" name="password" placeholder="重复密码" id="repeatPwd"/>
            </DIV>
            <DIV class="form-group">
                <label class="control-label">邮 箱</label>
                <input type="text" class="form-control width300" name="password" placeholder="邮箱地址" id="email"/>
            </DIV>
            <div class="row">
                <input type="button" value=" 注册 " class="btn btn-primary form-control width300 margin-top-10px" id="registerBtn">
            </div>
        </form>
    </section>
</div>
</body>
</html>
