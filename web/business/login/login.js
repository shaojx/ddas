$(function () {
    //登录 
   $("#loginBtn").click(function () {
       $.ajax({
           url:path+"/login/in",
           data:{
               "userName":$("#userName").val(),
               "password":md5($("#password").val()),
               "remeberme":!!$("#remeberme").attr("checked")
           },
           dataType:"json",
           type:"POST",
           success:function (data) {
               if (data&&data.msg==="success"){
                   window.top.location.href=path+"/index/gotoIndex";//跳转到首页
               }
           }
       })
   });
    //注册
    $("#registerBtn").click(function () {
       window.top.location.href=path+"/login/gotoRegister" 
    });
});