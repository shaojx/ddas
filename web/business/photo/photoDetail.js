/**
 * 照片详情
 */
$(function () {
    $(".row img").mouseover(function(event){
        var position=$(this).position();
        $("#txtDiv").css({
            "left":position.left+25,
            "top":position.top+25
        }).mouseout(function () {
            $("#txtDiv").css({
                "left":-1000
            });
        });
    });
})
