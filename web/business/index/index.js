
$(function () {
    //点击左侧导航"相册"
    $("#myPhoto").click(function(){
        $("#content_iframe").attr("src",path+"/userPhoto/gotoIndex");
    });

});