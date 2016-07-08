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
</head>
<body>
<div class="container">
    <section class="loginBox row-fluid">
        <form class="form-horizontal margin-left-10px" style="margin-top: 25px;">
            <DIV class="form-group">
                <input type="text" class="form-control width300 center-block" name="username" placeholder="用户名" id="userName"/>
            </DIV>
            <DIV class="form-group">
                <input type="text" class="form-control width300 center-block" name="password" placeholder="密码" id="password"/>
            </DIV>
            <DIV class="form-group">
                <div class="row">
                 <div class="center-block width300">
                     <label>
                         <input type="checkbox" name="rememberme" style="vertical-align: middle;" id="remeberme"/>
                         <span class="inline-block" style="vertical-align: middle;">下次自动登录</span>
                     </label>
                 </div>
                </div>
                <div class="row">
                    <input type="button" value=" 登录 " class="btn btn-primary form-control width300 center-block" id="loginBtn">
                </div>
                <div class="row">
                    <span class="col-md-offset-4 col-md-4">没有帐号?<a href="javascript:void(0);" id="registerBtn">注 册</a></span>
                </div>

            </DIV>
        </form>
       <%-- <div class="tabbable" id="tabs-634549">
         <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#panel-60560" data-toggle="tab">帐号登录</a>
                </li>
                <li class="active">
                    <a href="#panel-549981" data-toggle="tab">二维码登录</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane" id="panel-60560">
                    <DIV><input type="text" name="username" placeholder="用户名"/></DIV>
                    <DIV>
                        <input type="text" name="password" placeholder="密码"/>
                    </DIV>
                    <DIV class="span6"><label><input type="checkbox" name="rememberme" />下次自动登录</label></DIV>
                    <DIV class="span1"><input type="button" value=" 登录 " class="btn btn-primary"></DIV>
                </div>
                <div class="tab-pane active" id="panel-549981">

                </div>
            </div>
        </div>--%>
    </section>
</div>
</body>
</html>
