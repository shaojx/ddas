$(function () {
    createResetFormValidator();

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
           url:path+"/login/in?remeberme="+$("#remeberme").is(':checked'),
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

    /*//忘记密码
    $("#forgetPwd").click(function () {
        
    });*/

    $("#resetPwdDialog").on("show.bs.modal",function(){
        var userName=$("#userName").val();
       $("#userNameReset").val(userName);
        if(userName){//如果有值 ，先去获取相应的用户的邮箱

        }else{
            //等待输入
        }
    });

    $("#resetPwdDialog").on("hide.bs.modal",function () {
       $("#tipDiv").hide();
    });

    $("#resetPwdBtn").click(function () {
        var bv=$('#resetFrom').data("bootstrapValidator").validate();
        if(bv.isValid()){
            $("#tipDiv").show();
        }else{
        }
    });

    var lastKeyupTime=null;
    var delay=2000;//3s delay
    var timer=null;
    $("#userNameReset").keyup(function () {
        if(lastKeyupTime){
          /*  var time=new Date().getTime();
           if(time-lastKeyupTime>=delay){
               //get email
               alert("fetch")
           }*/
         if(!timer){
             timer=setTimeout(function () {
                 alert("fetch")
                 timer=null;
                 lastKeyupTime=null;
             },delay);
         }
        }else{
            lastKeyupTime=new Date().getTime();
        }
    });

});


function createResetFormValidator(){
    $('#resetFrom').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userNameReset: {
                validators: {
                    notEmpty: true
                }
            },
            emailReset: {
                validators: {
                    notEmpty: true
                }
            }
        }
    });
}