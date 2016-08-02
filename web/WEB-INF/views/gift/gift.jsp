<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/2
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
        <%
    String path=request.getContextPath();
%>
    <head>
        <title>Blog</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap core CSS -->
        <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
        <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet">
        <%-- <link href="<%=path%>/common/bxslider/css/style.css" rel="stylesheet">--%>
        <script src="<%=path%>/common/jquery/jquery.js"></script>
        <link rel="stylesheet" href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css">
        <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
        <link  rel="stylesheet" href="<%=path%>/common/custom-loader/css/sllib.css"/>
        <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
        <script type="text/javascript">
            var path = "<%=path%>";
        </script>
        <%--分页的JS--%>
        <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
        <script type="text/javascript" src="<%=path%>/business/blog/blog.js"></script>
        <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
        <style type="text/css">
            body,html{
                overflow: hidden !important;
            }
        </style>
    </head>
<body>
<%--日志 start--%>
<div class="tab-pane " id="panel-tabs2">
    <div class="panel panel-warning">
        <div class="panel-heading">
            <div class="tabbable" id="tabs-295323">
                <ul class="nav nav-tabs">
                    <li class="active" id="giftTab">
                    <a href="#panel-gift" data-toggle="tab">礼物</a>
                    </li>
                    <li id="receiveGiftTab">
                        <a href="#panel-receive-gift" data-toggle="tab">收到的礼物</a>
                    </li>
                    <li id="sendGiftTab">
                        <a href="#panel-send-gift" data-toggle="tab">送出的礼物</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-content">

            <div class="tab-pane active" id="panel-gift" style="height: 100%;">
                <ul class="nav nav-tabs">
                    <li class="active" id="virtualGift">
                        <a href="#panel-virtualGift" data-toggle="tab" aria-expanded="true">虚拟的礼物</a>
                    </li>
                    <li id="trueGift">
                        <a href="#panel-trueGift" data-toggle="tab" aria-expanded="true">真实的礼物</a>
                    </li>
                </ul>
            </div>

            <div class="tab-pane" id="panel-receive-gift">
<%--                <div id="myFriendsLogContentDiv">
                </div>
                <ul id="myFriendsLogPagnationDiv"></ul>--%>
            </div>

            <div class="tab-pane" id="panel-send-gift">
<%--                <div id="myFriendsLogContentDiv">
                </div>
                <ul id="myFriendsLogPagnationDiv"></ul>--%>
            </div>

            <div class="tab-pane" id="panel-virtualGift">
<%--                <div id="myFriendsLogContentDiv">
                </div>
                <ul id="myFriendsLogPagnationDiv"></ul>--%>
            </div>

            <div class="tab-pane" id="panel-trueGift">
<%--                <div id="myFriendsLogContentDiv">
                </div>
                <ul id="myFriendsLogPagnationDiv"></ul>--%>
            </div>
        </div>
    </div>
</div>
</body>
</html>
