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
    <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
        var loginUserId = "<%=request.getAttribute("loginUserId")%>"
    </script>
    <%--引入业务的JS--%>
    <script src="<%=path%>/business/paycenter/payCenter.js"></script>
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
            <li role="presentation" class="active"><a href="#payCenter" data-toggle="tab"><spring:message code="recharge" text="充值"/></a></li>
        </ul>
    </div>

    <div class="row">
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="payCenter">

                <p class="bg-info" style="height: 40px;">
                 <span style="height: 40px;line-height: 40px;" class="inline-block margin-left-5px">
                    <spring:message code="gold" text="金币"/>:${userInfo.userCoin}
                </span>
                </p>

                <%--选择充值对象--%>
                <div class="clear-both divRow">
                    <label class="width120"><spring:message code="rechargeTo" text="充值对象"/>:</label>
                    <input type="radio" id="toMe" name="toWho" value="${loginUserId}" checked="checked" style="">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;"><spring:message code="myself" text="冲给自己"/></span>
                    <input type="radio" id="toFriend" name="toWho" value="" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;"><spring:message code="chargeToFriend" text="冲给好友"/></span>
                    <select id="friendList" class="margin-left-10px displayNone">
                    </select>
                </div>

                <%--充值金额--%>
                <div class="clear-both divRow">
                    <label class="width120"><spring:message code="amount" text="选择充值金额"/>:</label>
                    <input type="radio" name="payValueChoose" checked="checked" value="100" style="">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">100</span><img src="<%=path%>/common/images/dollerX30.png" class="doller"></img>
                    <input type="radio" name="payValueChoose" value="200" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">200</span><img src="<%=path%>/common/images/dollerX30.png" class="doller"></img>
                    <input type="radio" name="payValueChoose" value="500" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">500</span><img src="<%=path%>/common/images/dollerX30.png" class="doller"></img>
                    <input type="radio" name="payValueChoose" value="1000" style="margin-left: 20px; ">
                    <span class="inline-block"
                          style="height: 30px;line-height: 30px;">1000</span><img src="<%=path%>/common/images/dollerX30.png" class="doller"></img>
                </div>

                <div class="clear-both divRow">
                    <label class="width120"><spring:message code="otherAmount" text="其他金额"/>:</label>
                    <input type="text" id="mount"><span>(1<spring:message code="gold" text="金币"/> = 1<spring:message code="dollar" text="美元"/>)</span>
                </div>

                <div class="clear-both divRow">
                    <label class="width120"><spring:message code="payMethod" text="支付方式"/>:</label>
                    <span><input type="radio" name="payMethod" checked="checked" value="1"><img class="width200" src="/common/images/papy.jpg"></span>
                </div>

                <div class="row divRow">
                    <div style="margin-left: 40%;">
                        <button class="btn btn-info" type="button" id="payBtn"><spring:message code="submitCharge" text="立即充值"/></button>
                    </div>
                </div>
                <form id="payForm" action="/payfor/payPalRedirect1" method="post" target="_blank">
                    <input type="hidden" id="payMethod1" name="payMethod1">
                    <input type="hidden" id="userId1" name="userId1">
                    <input type="hidden" id="mount1" name="mount1">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
