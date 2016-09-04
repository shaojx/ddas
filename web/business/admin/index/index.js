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
});

var mv=new Vue({
    el:"#main-wrapper",
    data:{},
    methods:{},
    ready:function(){
    }
});
