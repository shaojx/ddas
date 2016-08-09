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
    <%--验证JS--%>
    <link type="text/css" href="<%=path%>/common/bootstrapvalidator/css/bootstrapValidator.min.css"/>
    <script src="<%=path%>/common/bootstrapvalidator/js/bootstrapValidator.min.js" type="text/javascript"></script>
    <script src="<%=path%>/common/bootstrapvalidator/js/language/${local}.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%=path%>/common/json2/json2.js"></script>
    <script type="text/javascript" src="<%=path%>/common/md5/md5.min.js"></script>
    <script type="text/javascript" src="<%=path%>/business/login/register.js"></script>
    <script type="text/javascript" src="<%=path%>/business/login/language/${local}.js"></script>
    <%--弹出窗--%>
    <link href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
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
<div class="container-fluid">
    <section class="loginBox row-fluid">
        <div class="center-block" style="text-align:center;" id="errorP">
        </div>
        <form class="form-horizontal" style="margin-left: 20%;" id="myForm">
            <DIV class="form-group width300">
                <label class="control-label">用户名</label>
                <input type="text" class="form-control " name="username" placeholder="用户名" id="userName"/>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label">密 码</label>
                <input type="password" class="form-control" name="password" placeholder="密码" id="password"/>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label">确认密码</label>
                <input type="password" class="form-control" name="repeatPwd" placeholder="重复密码" id="repeatPwd"/>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label">性别</label>
                <select id="sex" class="form-control">
                    <option id="male">男</option>
                    <option id="female">女</option>
                </select>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label">邮 箱</label>
                <input type="text" class="form-control" name="email" placeholder="邮箱地址" id="email"/>
            </DIV>
            <div class="row" style="margin-bottom: 20px;">
                <input type="button" value=" 注册 " class="btn btn-primary form-control width300 margin-top-10px" id="registerBtn">
            </div>
        </form>
    </section>
</div>
</body>
</html>
