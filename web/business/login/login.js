$(function () {
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
});