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
        <link rel="stylesheet" href="<%=path%>/business/common/css/common.css">
        <link rel="stylesheet" href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css">
        <link  rel="stylesheet" href="<%=path%>/common/custom-loader/css/sllib.css"/>
        <script src="<%=path%>/common/jquery/jquery.js"></script>
        <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
        <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
        <script type="text/javascript">
            var path = "<%=path%>";
        </script>
        <%--分页的JS--%>
        <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
        <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
        <style type="text/css">
            body,html{
                overflow: hidden !important;
            }
        </style>
        <script src="<%=path%>/business/gift/gift.js"></script>
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
                    <li class="active" id="virtualGiftTab">
                        <a href="#panel-virtualGift" data-toggle="tab" aria-expanded="true">虚拟的礼物</a>
                    </li>
                    <li id="trueGiftTab">
                        <a href="#panel-trueGift" data-toggle="tab" aria-expanded="true">真实的礼物</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-virtualGift">
                        <div class="panel panel-default">
                            <div id="panel-element-virtual-gift" class="panel-collapse in">
                                <div class="panel-body">
                                    <div class="row" id="virtualGiftContentDiv">
                                        <div class="col-xs-3 col-md-3 width175">
                                            <div class="thumbnail">
                                                <img src="/common/images/140x140.jpg" alt="140x140">
                                                <div class="caption" style="text-align: center">
                                                    <h5>礼物名</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3 width175">
                                            <div class="thumbnail">
                                                <img src="/common/images/140x140.jpg" alt="140x140">
                                                <div class="caption" style="text-align: center">
                                                    <h5>礼物名</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3 width175">
                                            <div class="thumbnail">
                                                <img src="/common/images/140x140.jpg" alt="140x140">
                                                <div class="caption" style="text-align: center">
                                                    <h5>礼物名</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3 width175">
                                            <div class="thumbnail">
                                                <img src="/common/images/140x140.jpg" alt="140x140">
                                                <div class="caption" style="text-align: center">
                                                    <h5>礼物名</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3 width175">
                                            <div class="thumbnail">
                                                <img src="/common/images/140x140.jpg" alt="140x140">
                                                <div class="caption" style="text-align: center">
                                                    <h5>礼物名</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3 width175">
                                            <div class="thumbnail">
                                                <img src="/common/images/140x140.jpg" alt="140x140">
                                                <div class="caption" style="text-align: center">
                                                    <h5>礼物名</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="pagination" id="virtualGiftPaginationDiv"></ul>
                    </div>
                    <div class="tab-pane" id="panel-trueGift">
                        <div class="panel panel-default">
                            <div id="panel-element-true-gift" class="panel-collapse in">
                                <div class="panel-body">
                                    <div class="row" id="trueGiftContentDiv">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="pagination" id="trueGiftPaginationDiv"></ul>
                    </div>
                </div>
                <%--送礼物给好友的弹出框 --%>
                <div class="modal fade" id="sendGiftDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">礼物详情</h4>
                            </div>
                            <div class="modal-body">
                                <div class="panel panel-default">
                                    <div class="panel-collapse in">
                                        <div class="panel-body">
                                            <div class="row clearfix">
                                                <div class="width350 float-left">
                                                    <div class="thumbnail" id="giftId">
                                                        <img src="/business/gift/images/watch1.jpg" alt="350x350">
                                                        <div class="caption" style="text-align: center">
                                                            <h5>电子表</h5>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="width300 float-left margin-left-10px">
                                                    <form class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label class="col-sm-2 control-label"><img src="/common/images/dollerX30.png" class="doller">10</label>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">数量</label>
                                                            <div class="col-sm-2">
                                                                <input type="email" class="form-control" id="inputEmail3" />
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
        </div>
    </div>
</div>
</body>
</html>
