<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Admin</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/common/pixel-admin/css/pixel-admin.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/common/pixel-admin/css/widgets.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/common/pixel-admin/css/rtl.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/common/pixel-admin/css/themes.min.css" rel="stylesheet" type="text/css">
    <%--jquery--%>
    <script src="<%=path%>/common/jquery/jquery.min.js" type="text/javascript"></script>
    <%--bootstrap--%>
    <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <%--pjax--%>
    <script src="<%=path%>/common/pjax/jquery.pjax.js" type="text/javascript"></script>
    <%--vue--%>
    <script src="<%=path%>/common/vue/vue.min.js" type="text/javascript"></script>
    <%--vue-resource--%>
    <script src="<%=path%>/common/vue/resource/vue-resource.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>

</head>
<body>
<div id="recordInfoDiv">
    <div class="page-header">
        <div class="row">
            <%--头部的字体--%>
            <h1 class="col-xs-12 col-sm-4 text-center text-left-sm"><i class="fa fa-dashboard page-header-icon"></i>
                &nbsp;&nbsp;充值记录统计信息
            </h1>
            <div class="col-xs-12 col-sm-8">
                <div class="row">
                    <hr class="visible-xs no-grid-gutter-h">
                    <!-- Margin -->
                    <div class="visible-xs clearfix form-group-margin"></div>
                    <!-- Search field -->
                    <form action="" class="pull-right col-xs-12 col-sm-6">
                        <div class="input-group no-margin">
                                <span class="input-group-addon"
                                      style="border:none;background: #fff;background: rgba(0,0,0,.05);"><i
                                        class="fa fa-search"></i></span>
                            <input type="text" placeholder="Search..." class="form-control no-padding-hr"
                                   style="border:none;background: #fff;background: rgba(0,0,0,.05);">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%--user table--%>
    <div class="row">
        <div class="panel panel-dark panel-light-green">
            <div class="panel-heading">
                <span class="panel-title"><i class="panel-title-icon fa fa-smile-o"></i>用户信息</span>
                <div class="panel-heading-controls">
                    <ul class="pagination pagination-xs">
                        <li><a href="#">«</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Username</th>
                    <th>Full Name</th>
                    <th>E-mail</th>
                    <th></th>
                </tr>
                </thead>
                <tbody class="valign-middle">
                <tr>
                    <td>1</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/2.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#"
                                                                                            title="">@rjang</a>
                    </td>
                    <td>Robert Jang</td>
                    <td>rjang@example.com</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/3.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#" title="">@mbortz</a>
                    </td>
                    <td>Michelle Bortz</td>
                    <td>mbortz@example.com</td>
                    <td></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/4.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#" title="">@towens</a>
                    </td>
                    <td>Timothy Owens</td>
                    <td>towens@example.com</td>
                    <td></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/5.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#" title="">@dsteiner</a>
                    </td>
                    <td>Denise Steiner</td>
                    <td>dsteiner@example.com</td>
                    <td></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/2.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#"
                                                                                            title="">@rjang</a>
                    </td>
                    <td>Robert Jang</td>
                    <td>rjang@example.com</td>
                    <td></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/3.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#" title="">@mbortz</a>
                    </td>
                    <td>Michelle Bortz</td>
                    <td>mbortz@example.com</td>
                    <td></td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>
                        <img src="<%=path%>/common/pixel-admin/demo/avatars/4.jpg" alt=""
                             style="width:26px;height:26px;" class="rounded">&nbsp;&nbsp;<a href="#" title="">@towens</a>
                    </td>
                    <td>Timothy Owens</td>
                    <td>towens@example.com</td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=path%>/business/admin/recordsInfos/recordsInfos.js"></script>
</body>
</html>
