//用户资料的JS
$(function () {
    //重置相应的select选中
    $("#userInfoForm").find("select").each(function () {
       var _value=$(this).data("value");
        if(_value){
            $(this).find("option[value='"+_value+"']").attr("selected","selected");//selected
        }
    });
    //重置`sex`
    $("#sex").text(mySpaceContent[$("#sexHidden").text()]);
    //时间选择器
    $(".form_date").datetimepicker({
        format: "yyyy-MM-dd",
        autoclose: true,
        todayBtn: true,
        startView: 2,
        minView: 2,
        language:"Constom"
    });
   $("#savingPersonal").click(function () {
       var btn=$(this).button("loading");
       //console.log($("#userInfoForm").serializeArray())
       $.ajax(path+"/userInfo/update",{
           data:$("#userInfoForm").serializeArray(),
           dataType:"json",
           type:"POST",
           success:function (data) {
               if(data&&data.successful){
                   $.confirm({
                       title:"Tip",
                       content:data.msg,
                       autoClose: 'confirm|1000',
                       cancelButton:false,
                       container:"#userInfoForm",
                       confirm:function(){
                           btn.button('reset');//reset button
                       }
                   });
               }
           },
           error:function () {
               btn.button('reset');//reset button
           }
       })
   });
});