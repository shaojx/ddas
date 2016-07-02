/**
 * 我的空间 业务JS
 */
$(function () {
    //创建日志
    /*$("#createMyLog").modal("show");*/

    //添加分类
    $("#addTypeHref").click(function () {
        $(this).hide();
        $("#addTypeDiv").show();
    });
    //取消---日志分类
    $("#addTypeCloseBtn").click(function () {
        $("#addTypeDiv").hide();
        $("#addTypeHref").show();
    });
    //保存----日志分类
    $("#addTypeSaveBtn").click(function () {
        alert("Saving.....");
    });

});
