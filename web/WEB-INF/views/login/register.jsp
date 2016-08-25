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
    <section class="loginBox row-fluid"id=" registerDiv">
        <div class="center-block" style="text-align:center;" id="errorP">
        </div>
        <form  style="margin-left: 20%;" id="myForm">
            <DIV class="form-group width300">
                <label class="control-label">
                    <spring:message code="register.userName" text="用户名"></spring:message>
                </label>
                <input type="text" class="form-control " name="username" placeholder="<spring:message code="register.userName" text="用户名"></spring:message>" id="userName"/>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label"><spring:message code="register.pwd" text="密 码"></spring:message> </label>
                <input type="password" class="form-control" name="password" placeholder="<spring:message code="register.pwd" text="密 码"></spring:message>" id="password"/>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label"><spring:message code="register.confirmPwd" text="确认密码"></spring:message> </label>
                <input type="password" class="form-control" name="repeatPwd" placeholder="<spring:message code="register.repeatPwd" text="重复密码"></spring:message> " id="repeatPwd"/>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label"><spring:message code="register.userSex" text="性别"></spring:message> </label>
                <select id="sex" class="form-control">
                    <option value="Male"><spring:message code="register.male" text="男"></spring:message> </option>
                    <option value="Female"><spring:message code="register.female" text="女"></spring:message> </option>
                </select>
            </DIV>
            <DIV class="form-group width300">
                <label class="control-label"><spring:message code="register.email" text="邮 箱"></spring:message> </label>
                <input type="text" class="form-control" name="email"
                       placeholder="<spring:message code="register.emailAddress" text="邮箱地址"></spring:message>" id="email"/>
            </DIV>
            <div  style="margin-bottom: 20px;">
                <input type="button" value=" <spring:message code="register.regist" text="注册"></spring:message> "
                       class="btn btn-primary form-control width300 margin-top-10px" id="registerBtn">
            </div>
        </form>
    </section>
</div>
</body>
</html>
