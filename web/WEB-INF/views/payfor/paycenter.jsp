<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Pay Center</title>
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

    <style type="text/css">
        .divRow{
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="#payCenter" data-toggle="tab">充值</a></li>
        </ul>
    </div>

    <div class="row">
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="payCenter">

                <p class="bg-info" style="height: 40px;">
                 <span style="height: 40px;line-height: 40px;" class="inline-block margin-left-5px">
                    金币:0
                </span>
                </p>

                <%--选择充值对象--%>
                <div class="clear-both divRow">
                    <label class="width120">充值对象:</label>
                    <input type="radio" name="toWho" style="">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">充给自己</span>
                    <input type="radio" name="toWho" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">充给好友</span>
                    <select id="myFriends" class="margin-left-10px displayNone">
                        <option>1</option>
                    </select>
                </div>

                <%--充值金额--%>
                <div class="clear-both divRow">
                    <label class="width120">选择充值金额:</label>
                    <input type="radio" name="payValueChoose" style="">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">100<span class="glyphicon glyphicon-usd"></span></span>
                    <input type="radio" name="payValueChoose" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">200<span class="glyphicon glyphicon-usd"></span></span>
                    <input type="radio" name="payValueChoose" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">500<span class="glyphicon glyphicon-usd"></span></span>
                    <input type="radio" name="payValueChoose" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">1000<span class="glyphicon glyphicon-usd"></span></span>
                </div>

                <div class="clear-both divRow">
                    <label class="width120">其他数值:</label>
                    <input type="text"><span>(1金币=1美元)</span>
                </div>

                <div class="clear-both divRow">
                    <label class="width120">支付方式:</label>
                    <span>嵌入页面</span>
                </div>

                <div class="row divRow">
                    <div style="margin-left: 40%;">
                        <button class="btn btn-info" type="button">立即升级</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>