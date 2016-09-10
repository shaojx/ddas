<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <script src="<%=path%>/common/jquery/jquery.js"></script>
</head>
<body>
<div>正跳转到支付页面...</div>
<form name="form_starPay" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
    <input type="hidden" name="cmd" value="_xclick">
    <!--input type="hidden" name="business" value="ijfhkjhfjdksg@163.com"-->
    <input type="hidden" name="business" value="felixliu2011-facilitator@outlook.com">
    <input type="hidden" name="item_name" value="Recharge">
    <input type="hidden" name="amount" value="${amount}">
    <input type="hidden" name="currency_code" value="USD">
    <input type="hidden" name="return" value="http://localhost/payfor/paypalProcess1">
    <input type="hidden" name="notify_url" value="http://localhost/payfor/paypalProcess1">
    <input type="hidden" name="invoice" value="">
    <input type="hidden" name="custom" value="${custom}">
    <input type="hidden" name="lc" value="EN">
    <input style="visibility:hidden" type="image" src=" https://www.paypal.com/en_US/i/btn/btn_buynow_LG.gif " border="0" name="submit" alt=" PayPal - The safer, easier way to pay online">
</form>

<form name="cashU_payment_info" action="https://www.payssion.com/payment/create.html" method="post">
    <input type="hidden" name="api_key" value="57a5993533c46c75">
    <input type="hidden" name="api_sig" value="">
    <input type="hidden" name="pm_id" value="">
    <input type="hidden" name="track_id" value="1-1473431258">
    <input type="hidden" name="sub_track_id" value="413-413">
    <input type="hidden" name="description" value="recharge">
    <input type="hidden" name="amount" value="100">
    <input type="hidden" name="currency" value="USD">
    <input type="hidden" name="language" value="en">
    <input type="hidden" name="notify_url" value="http://www.feelcome.com/index.php?c=payssion">
    <input type="hidden" name="success_url" value="http://www.feelcome.com/index.php?c=payssion">
    <input type="hidden" name="redirect_url" value="http://www.feelcome.com/index.php?c=payssion">
    <input style="visibility:hidden" type="submit" value="Submit">
</form>
<script>
    $(function(){
        if("1"=="1"){
            $("form[name='form_starPay']").submit();
        }else{
            $("form[name='cashU_payment_info']").submit();
        }

    })
</script>
</body>
</html>
