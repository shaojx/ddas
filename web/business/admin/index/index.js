/*admin 首页的js*/
$(document).ready(function () {
  $(".navigation").pjax("a","#content-wrapper",{
       timeout:4000,
      fragment:"body"
   });
    $(".navigation").find("li").click(function () {
        $(".navigation").find("li").removeClass("active");
        $(this).addClass("active");
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
