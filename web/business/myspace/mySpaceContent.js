/**
 * 我的空间 业务JS
 */
$(function () {

/* 有Error   //时间选择器
    $(".form_date").datetimepicker({
        format: "yyyy-MM-dd",
        autoclose: true,
        todayBtn: true,
        startView: 2,
        minView: 2
    });*/
    //创建日志
    /*$("#createMyLog").modal("show");*/

    //我的头像鼠标事件
    createHaedPhotoLisenter();
    //保存我的头像的监听事件
    createSaveHeadPhotoListener();


});
/**
 * 保存头像的监听事件
 */
function createSaveHeadPhotoListener() {
    $("#saveHeadPhotoBtn").click(function () {
        var btn=$(this).button("loading");
        $btn.button('reset');
    });
}
/**
 * 创建"我的头像" 一系列的监听事件
 */
function createHaedPhotoLisenter() {
    $("#right").mouseenter(function () {
        var div=$(this);
        var position=div.find("#headPhoto").position();
        $(this).find("#txtDiv_0").css({
            "left":position.left,
            "top":position.top
        })
    }).mouseleave(function () {
        $(this).find("#txtDiv_0").css({
            "left":"-1000px"
        })
    });

  /*  $("#right").find("#txtDivSpan_0").click(function () {
    });*/
}

function getLatestContent() {
    getLatestPhoto();
}

function getLatestPhoto() {
    var url=path+"/userPhoto/getLatestPhoto";
    $.ajax({
        url:url,
        type:"POST",
        data:data,
        dataType:"json",
        success:function(data){
            initLatestPhoto(data);
        }
    })
    
}

function initLatestPhoto(data) {
    $("#latestPhotoContentDiv").empty();
    var latesPhotoDivTemplete='<div class="col-xs-3 col-md-3 width175">'+
        '<div class="thumbnail">'+
        '<img src="photoUrl" alt="140x140" class="width150 height150">'+
        '<div class="caption">'+
        '<h4>photoGroupName</h4>'+
        '<h5>createdTime</h5>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list=data.dataList;
    for(var index in list){
        var _data=list[index];
        var _replace=latesPhotoDivTemplete.replace(/photoUrl/g,_data.photoUrl).replace(/photoGroupName/g,_data.photoGroupName)
            .replace(/createdTime/g, _data.createdTime);
        $("#latestPhotoContentDiv").append(_replace);
    }
}