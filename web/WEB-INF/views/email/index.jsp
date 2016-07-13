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
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
    <script type="text/javascript" src="<%=path%>/business/index/index.js"></script>
    <script type="text/javascript" src="<%=path%>/business/email/email.js"></script>
<%--    <style type="text/css">
       .panel-body input[type="radio"] {
            margin-left: 40%;
        }
        .innerDiv{
            height: 90px;
            width: 206px;
        }
        html,body{
            overflow: hidden;
        }
    </style>--%>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="#SendEmailBox" data-toggle="tab">发件箱</a></li>
            <li role="presentation"><a href="#ReceiveEmailBox" data-toggle="tab">收件箱</a></li>
            <li role="presentation"><a href="#CreateEmail" data-toggle="tab">新建邮件</a></li>
        </ul>
    </div>

    <div class="row">
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="SendEmailBox">
                <%--面板--%>
                <div class="panel panel-default" style="height: 250px;">
                    <form class="form-horizontal" role="form">
                        <div class="panel panel-default ">
                            <img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                            <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">时间：2016-06-26-14:40:52</div></div>
                            <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                        </div>
                        <div class="panel panel-default ">
                            <img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                            <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">时间：2016-06-26-14:40:52</div></div>
                            <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                        </div>
                    </form>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane clear-both" id="ReceiveEmailBox">
                <form class="form-horizontal" role="form">
                    <div class="panel panel-default ">
                        <img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">时间：2016-06-26-14:40:52</div></div>
                        <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                    </div>
                    <div class="panel panel-default ">
                        <img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">时间：2016-06-26-14:40:52</div></div>
                        <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                    </div>
                </form>
            </div>

            <div role="tabpanel" class="tab-pane clear-both" id="CreateEmail">
                <textarea rows="5" id="emailContent" style="margin: 0px; height: 448px; width: 746px;"></textarea>

                <form class="form-horizontal margin-top-10px"  role="form">
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-1 control-label pull-left">
                            <span class="inline-block width120">好友名字</span>
                        </label>
                        <div class="col-sm-4">
                            <select id="friendList" class="form-control width120 pull-left">
                                <option>add</option>
                                <option>aa</option>
                            </select>
                        </div>
                        <div class="pull-right margin-right-15px">
                            <button class="btn-info" id="sendEmailBtn">提交</button>
                        </div>
                    </div>
                </form>


            </div>

        </div>
    </div>
</div>
</body>
</html>
