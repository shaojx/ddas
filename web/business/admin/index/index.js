/*admin 首页的js*/
var loader=null;//加载条
$(document).ready(function () {
 $(".navigation").pjax("a","#content-wrapper",{
       timeout:4000,
       fragment:"body"
   });

    /*加载Loading*/
    $(document).on('pjax:send', function() {

    });
    $(document).on('pjax:complete', function() {
        if(loader){
            loader.stop();
        }
    });
    /*添加选中的样式*/
    $(".navigation").find("li").click(function () {
        $(".navigation").find("li").removeClass("active");
        $(this).addClass("active");
        loader=SLLib.loader({
            ele:"#content-wrapper",
            spinner:"spinner2",
            height:"700px",
            width:$("#content-wrapper").width()+30,
            reposition:true
        });
        loader.start();
    })
    /*click userInfos li*/
    $("#userInfos").click();

    //监听相应的样式
    $(".custom").closest("a").mouseover(function () {
        var classes=$(this).find(".custom").attr("class").split(" ");
        var className=null;
        for(var index in classes){
            if(classes[index].indexOf("fa-")!=-1){
                className=classes[index];
            }
            if(classes[index].indexOf("-b")!=-1
                ||classes[index].indexOf("-w")!=-1){//if this `li` has been selected,skip
                return;
            }
        }
        if(className){
            $(this).find(".custom").removeClass(className).addClass(className+"-w");
        }
    }).mouseleave(function () {
        var classes=$(this).find(".custom").attr("class").split(" ");
        var className=null;
        for(var index in classes){
            if(classes[index].indexOf("-w")!=-1){
                className=classes[index];
            }
        }
        if(className){
            var _oriClassName=className.substr(0,className.length()-2);
            $(this).find(".custom").removeClass(className).addClass(_oriClassName);
        }
    }).click(function () {
        var classes=$(this).find(".custom").attr("class").split(" ");
        var className=null;
        for(var index in classes){
            if(classes[index].indexOf("-w")!=-1){
                className=classes[index];
            }
        }
        if(className){
            var _oriClassName=className.substr(0,className.length-2);
            $(this).find(".custom").removeClass(_oriClassName+"-w").addClass(_oriClassName+"-b");
        }
    });

    $(".navigation").find("li").click(function () {
        var classes=$(".navigation").find(".custom").attr("class").split(" ");
        var className=null;
        for(var index in classes){
            if(classes[index].indexOf("-b")!=-1){
                className=classes[index];
            }
        }
        if(className){
            var _oriClassName=className.substr(0,className.length-2);
            $(this).siblings("li").find(".custom").removeClass(_oriClassName+"-b").addClass(_oriClassName);
        }
    });
});
var mv=new Vue({
    el:"#main-wrapper",
    data:{},
    methods:{
        //退出
        logOut:function () {
            $.confirm({
                theme: 'black',
                confirmButtonClass: 'btn-info',
                cancelButtonClass: 'btn-danger',
                title:false,
                content:"确认退出吗?",
                confirm: function(){
                    $.ajax({
                        url:path+"/admin/out",
                        type:"POST",
                        data:{},
                        dataType:"json",
                        success:function(){
                            window.top.location.href=path+"/admin/gotoLoginPage";//跳转登陆页
                        }
                    })
                }
            })
        }
    },
    ready:function(){
    }
});
