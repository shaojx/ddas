
$(function () {
    //点击左侧导航"相册"
    $("#myPhoto").click(function(){
        $("#content_iframe").attr("src",path+"/userPhoto/gotoIndex");
    });
    
    // 左侧好友点击事件
    $("#myFriend").click(function () {
        $("#content_iframe").attr("src", path+"/userFriend/myFriend");
    });
    
    //左侧 升级会员 点击事件 
    $("#levelVip").click(function () {
       $("#content_iframe").attr("src",path+"/vip/gotoVip"); 
    });

});