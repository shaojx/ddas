var userPhotoGroupCondition = {
    pageNo:1
};//查询条件初始化
$(function () {
    //文件上传
    $("#myfiles").fileinput({
        uploadUrl:path+"/fileUpload/fileUpload"
    });
    $("#myfiles").on('fileloaded', function(event, file, previewId, index, reader) {
       //todo 文件上传回调
    });

    userPhotoGroupCondition = {
        pageNo:1
    };//查询条件初始化
    getMyPhotoGroupData(userPhotoGroupCondition);
});

/**
 * 获取我的相册数据
 * @param pageNo 分页
 */
function getMyPhotoGroupData(condition){
    $("#myPhotoGroupContentDiv").html("");//清空数据
    if(condition.pageNo){
        $.ajax({
            url:path+"/userPhotoGroup/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":condition.pageNo,
                "pageSize":1000
            },
            dataType:"json",
            success:function(data){
                initMyPhotoGroupOptionData(data);
            }
        })
    }
}

/**
 * 初始化我的相册分组的数据
 * @param data
 */
function initMyPhotoGroupOptionData(data) {
    var photoGroupSelect=$("#photoGroup");
    photoGroupSelect.empty();
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var option = "<option data-groupId="+_data.groupId+">"+_data.groupName+"</option>";
        photoGroupSelect.prepend(option);
    }
}