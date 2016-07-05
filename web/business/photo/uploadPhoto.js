$(function () {
    //文件上传
    $("#myfiles").fileinput({
        uploadUrl:path+"/fileUpload/fileUpload"
    });
    $("#myfiles").on('fileloaded', function(event, file, previewId, index, reader) {
       //todo 文件上传回调
    });

});