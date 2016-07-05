
$(function () {
    //点击左侧导航"相册"
    $("#myPhoto").click(function(){
        $("#content_iframe").attr("src",path+"/userPhoto/gotoIndex");
    });


    /**
     *左侧好友点击事件
     *@return
     *@Author liuchen6
     *@Date 2016/7/4 15:17
     *@since JDK1.7
     */
    $("#myFriend").click(function () {
        $("#content_iframe").attr("src", "/userFriend/myFriend");
    });

});