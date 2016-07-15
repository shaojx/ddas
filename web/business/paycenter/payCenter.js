/**
 * Created by Administrator on 2016/7/15.
 */
$(function () {
    //支付按钮点击的操作
    $("#payBtn").click(function () {
        var payMethod = $('input[name="payMethod"]:checked ').val();
        var mount = $("#mount").val();
        alert(payMethod);
        alert(mount);
        //"1"使用paypal支付
        $.ajax({//保存好友信息，主要针对好友分组的改变
            url:path+"/payfor/payPalRedirect",
            type:"POST",
            data:{
                "userId":"1",//写死，冲给自己
                "payMethod":payMethod,
                "mount":mount
            },
            dataType:"json",
            success:function(msg){
                var redirectUrl = msg.msg;
                alert(redirectUrl);
                window.open(redirectUrl);
            }
        })

    })

});
