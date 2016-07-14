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
            <li class="active"><a href="#SendEmailBox" data-toggle="tab">发件箱</a></li>
            <li ><a href="#ReceiveEmailBox" data-toggle="tab">收件箱</a></li>
            <li ><a href="#CreateEmail" data-toggle="tab">新建邮件</a></li>
        </ul>
    </div>

    <div class="row">
        <div class="tab-content margin-top-10px">
            <div role="tabpanel" class="tab-pane active" id="SendEmailBox">
                    <form class="form-horizontal" role="form">
                        <div class="panel panel-default ">
                            <img src="/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                            <span class="inline-block" style="text-overflow:ellipsis;margin-top:10px;font-size: 13px;width: 90%;">
                                你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！
                        </span>
                            <div class="margin-left-10px"><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">时间：2016-06-26-14:40:52</div></div>
                        </div>
                    </form>
            </div>

            <div role="tabpanel" class="tab-pane" id="ReceiveEmailBox">
                <form class="form-horizontal" role="form">
                    <div class="panel panel-default ">
                        <img src="/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <span class="inline-block" style="text-overflow:ellipsis;margin-top:10px;font-size: 13px;width: 90%;">
                                你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！你好a！
                        </span>
                        <div class="margin-left-10px"><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">时间：2016-06-26-14:40:52</div></div>
                    </div>
                </form>
            </div>

            <div role="tabpanel" class="tab-pane" id="CreateEmail">
                <textarea rows="5" id="emailContent" style="margin: 0px; height: 448px; width: 746px;"></textarea>
                <div class="row margin-top-10px">
                    <label class="control-label pull-left margin-left-20px">
                        <span class="inline-block" style="height: 30px;line-height: 30px;">好友名字</span>
                    </label>
                    <select id="friendList" class="form-control width120 pull-left margin-left-10px">
                    </select>
                    <button class="btn btn-info pull-right margin-right-15px" type="button" id="sendEmailBtn">保存</button>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
