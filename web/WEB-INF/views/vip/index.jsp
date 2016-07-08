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
    <style type="text/css">
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
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="#levelVip" data-toggle="tab">在线升级</a></li>
            <li role="presentation"><a href="#vipDocument" data-toggle="tab">升级说明</a></li>
        </ul>
    </div>

    <div class="row">
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="levelVip">

                <p class="bg-info" style="height: 40px;">
                 <span style="height: 40px;line-height: 40px;" class="inline-block margin-left-5px">
                    金币:0
                </span></p>

                <%--面板--%>
                <div class="panel panel-default" style="height: 250px;">
                    <div class="panel-heading">高级会员</div>

                    <div class="clear-both">
                        <div class="panel-body width185 pull-left innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay a month $20.00</span>
                                <span class=center-block" style="display: block;">
                                    <input type="radio" name="vipType">
                                </span>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body width185 pull-left margin-left-30px innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay 3 month $50.00</span>
                                <span class=center-block" style="display: block;">
                                    <input type="radio" name="vipType">
                                </span>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body width185 pull-left margin-left-30px innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay 6 month $90.00</span>
                                <span class=center-block" style="display: block;">
                                    <input type="radio" name="vipType">
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear-both">
                        <div class="panel-body width185 pull-left innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay 12 month $150.00</span>
                                     <span class=center-block" style="display: block;">
                                         <input type="radio" name="vipType">
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <%--VIP面板--%>
                <div class="panel panel-default" style="height: 250px;">
                    <div class="panel-heading">VIP</div>

                    <div class="clear-both">
                        <div class="panel-body width185 pull-left innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay a month $99.00</span>
                                <span class=center-block" style="display: block;">
                                    <input type="radio" name="vipType">
                                </span>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body width185 pull-left margin-left-30px innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay 3 month $269.00</span>
                                <span class=center-block" style="display: block;">
                                    <input type="radio" name="vipType">
                                </span>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body width185 pull-left margin-left-30px innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay 6 month $489.00</span>
                                <span class=center-block" style="display: block;">
                                    <input type="radio" name="vipType">
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear-both">
                        <div class="panel-body width185 pull-left innerDiv">
                            <div class="panel panel-default width185">
                                <div class="panel-body">
                                    <span style="display: block;">Pay 12 month $899.00</span>
                                     <span class=center-block" style="display: block;">
                                         <input type="radio" name="vipType">
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <%--选择充值对象--%>
                <div class="clear-both">
                    <label class="width80">充值对象:</label>
                    <input type="radio" name="toWho" style="vertical-align: middle;">
                    <span class="inline-block" style="vertical-align: middle;height: 30px;line-height: 30px;">充给自己</span>
                    <input type="radio" name="toWho" style="margin-left: 20px; vertical-align: middle;">
                    <span class="inline-block" style="vertical-align: middle;height: 30px;line-height: 30px;">充给好友</span>
                    <select id="myFriends" class="margin-left-10px displayNone">
                        <option>1</option>
                    </select>
                </div>
                <div class="row">
                    <div style="margin-left: 40%;">
                        <button class="btn btn-info" type="button">立即升级</button>
                    </div>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane clear-both" id="vipDocument">
              升级说明
            </div>

        </div>
    </div>
</div>
</body>
</html>
