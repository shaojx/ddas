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
    <script type="text/javascript" src="<%=path%>/business/common/language/${local}.js"></script>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <link  rel="stylesheet" href="<%=path%>/common/custom-loader/css/sllib.css"/>
    <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
    <%--分页--%>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
        var currentLoginUserId = "<%=request.getAttribute("currentLoginUserId")%>"
    </script>
    <script type="text/javascript" src="<%=path%>/business/index/index.js"></script>
    <script type="text/javascript" src="<%=path%>/business/email/email.js"></script>
    <link  rel="stylesheet" href="<%=path%>/common/custom-loader/css/sllib.css"/>
    <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
    <link href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
   <style type="text/css">
        html,body{
            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#SendEmailBox" id="sendMailTab" data-toggle="tab">发件箱</a></li>
            <li ><a href="#ReceiveEmailBox" id="receiveMailTab" data-toggle="tab">收件箱</a></li>
            <li ><a href="#CreateEmail" data-toggle="tab" id="createEmailTab">新建邮件</a></li>
        </ul>
    </div>

    <div class="row">
        <div class="tab-content margin-top-10px">
            <div role="tabpanel" class="tab-pane active" id="SendEmailBox">
                    <form id="sendEmailListDiv" class="form-horizontal" role="form">
                    </form>
                <div class="col-md-12">
                    <!--分页控件-->
                    <ul class="pagination" id="emailSendPaginationDIV">
                    </ul>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="ReceiveEmailBox">
                <form id="receiveEmailListDiv" class="form-horizontal" role="form">
                </form>
                <div class="col-md-12">
                    <!--分页控件-->
                    <ul class="pagination" id="emailReceivePaginationDIV">
                    </ul>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="CreateEmail">
                <textarea rows="5" id="emailContent" style="margin: 0px; height: 448px; width: 746px;"></textarea>
                <div class="row margin-top-10px">
                    <label class="control-label pull-left margin-left-20px">
                        <span class="inline-block" style="height: 30px;line-height: 30px;">好友名字</span>
                    </label>
                    <select id="friendList" class="form-control width120 pull-left margin-left-10px disabled">
                    </select>
                    <button class="btn btn-info pull-right margin-right-15px" type="button" id="sendEmailBtn">保存</button>
                </div>
            </div>

        </div>
    </div>

    <%--邮件详情的dialog--%>
    <div class="modal fade" id="emailDetailDiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="emailDetailLabel">邮件详情</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="headPhotoForm">
                        <div>
                            <textarea id="replyTxtArea" rows="5" cols="97"></textarea>
                        </div>
                        <div class="margin-top-10px clear-both" >
                           <button type="button" class="btn btn-info float-right" style="margin-bottom: 5px;" id="replyBtn">回复</button>
                        </div>
                    </form>
                    <%--分页显示--%>
                   <div id="contentDiv" class="clear-both">
                       <div class="panel panel-default">
                           <div class="panel-body">
                               <p style="font-style: italic;font-size: 12px;">来自XXX:</p>
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                           </div>
                       </div>
                       <div class="panel panel-default">
                           <div class="panel-body">
                               <p style="font-style: italic;font-size: 12px;">回复给XXX:</p>
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                           </div>
                       </div>
                       <div class="panel panel-default">
                           <div class="panel-body">
                               <p style="font-style: italic;font-size: 12px;">来自XXX:</p>
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                           </div>
                       </div>
                       <div class="panel panel-default">
                           <div class="panel-body">
                               <p style="font-style: italic;font-size: 12px;">回复给XXX:</p>
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                           </div>
                       </div>
                       <div class="panel panel-default">
                           <div class="panel-body">
                               <p style="font-style: italic;font-size: 12px;">来自XXX:</p>
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                               这里面是一些邮内容，回复自amdin
                           </div>
                       </div>
                   </div>
                    <%--分页Div--%>
                    <ul id="emailDetailPagnation"></ul>
                </div>
                <div class="modal-footer" style="display: none;">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="closeHeadPhotoBtn">关闭</button>
                    <button type="button" class="btn btn-primary" data-loading-text="保存中..." id="saveHeadPhotoBtn">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
