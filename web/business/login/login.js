$(function () {
    $('#myForm').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                validators: {
                    notEmpty: true
                }
            },
            password: {
                validators: {
                    notEmpty:true
                }
            }
        }
    });
    //登录 
   $("#loginBtn").click(function () {
       var bv=$('#myForm').data("bootstrapValidator").validate();
        if(!bv.isValid()){
            return ;
        }

       $.ajax({
           url:path+"/login/in?remeberme="+!!$("#remeberme").attr("checked"),
           data:JSON.stringify({
               "userName":$("#userName").val(),
               "userPwd":md5($("#password").val())
           }),
           dataType:"json",
           type:"POST",
           contentType:"application/json",
           success:function (data) {
               if (data&&data.msg==="success"){
                   window.top.location.href=path+"/index/gotoIndex";//跳转到首页
               }else{
                   if(data&&data.msg){//登录失败
                       $("#errorP").html("").html(data.msg);
                   }
               }
           }
       })
   });
    //注册
    $("#registerBtn").click(function () {
       window.top.location.href=path+"/login/gotoRegister" 
    });
});