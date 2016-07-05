<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
    String path=request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Photo Index</title>
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet">
    <link href="<%=path%>/common/bxslider/css/style.css" rel="stylesheet">
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <link href="<%=path%>/business/common/css/common.css" rel="stylesheet">
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>

    <%--引入自定义样式--%>
    <link type="text/css" href="<%=path%>/business/photo/photo.css" rel="stylesheet"/>
    <script type="text/javascript" src="<%=path%>/business/photo/photo.js"></script>
    <style type="text/css">
        html,body{
            overflow: hidden!important;
        }
    </style>
</head>
<body>
<div class="container">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#myPhoto">我的相册</a></li>
        <li><a data-toggle="tab" href="#myFriendPhoto">好友相册</a></li>
    </ul>
    <div class="tab-content">
        <div id="myPhoto" class="tab-pane fade in active">
            <%--新建相册与上传照片--%>
            <div class="row margin-top-10px">
                <button type="button" class="btn btn-info pull-right" style="margin-right: 17px;" id="addPhotoBtn">上传照片</button>
                <button type="button" class="btn btn-info pull-right margin-right-10px">新建相册</button>
            </div>
            <div class="panel panel-default" style="margin-top:10px;">
                <div class="panel-body">
                    <div class="row">
                        <div class="photo pull-left">
                            <img src="<%=path%>/common/images/album_logo.jpg" class="img"/>
                        </div>
                        <%--相册信息--%>
                        <div id="photoInfoDiv" class="pull-left">
                            <span class="center-block">My</span>
                            <span class="center-block">标签：</span>
                            <span class="center-block">照片数量：1</span>
                            <span class="center-block">更新于：2016-06-26 13:39:10</span>
                            <span class="center-block">创建于：2016-06-26 13:38:45</span>
                            <span class="center-block"><a href="javascript:void(0);">编辑相册</a>  <a
                                    href="javascript:void(0);">删除相册</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="myFriendPhoto" class="tab-pane fade">
            <div class="panel panel-default" style="margin-top:10px;">
                <div class="panel-body">
                    <div class="row">
                        <div class="photo pull-left">
                            <img src="<%=path%>/common/images/album_logo.jpg" class="img"/>
                        </div>
                        <%--相册信息--%>
                        <div id="photoInfoDiv" class="pull-left">
                            <span class="center-block">My</span>
                            <span class="center-block">标签：</span>
                            <span class="center-block">照片数量：1</span>
                            <span class="center-block">更新于：2016-06-26 13:39:10</span>
                            <span class="center-block">创建于：2016-06-26 13:38:45</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="photo pull-left">
                            <img src="<%=path%>/common/images/album_logo.jpg" class="img"/>
                        </div>
                        <%--相册信息--%>
                        <div id="photoInfoDiv" class="pull-left">
                            <span class="center-block">My</span>
                            <span class="center-block">标签：</span>
                            <span class="center-block">照片数量：1</span>
                            <span class="center-block">更新于：2016-06-26 13:39:10</span>
                            <span class="center-block">创建于：2016-06-26 13:38:45</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
