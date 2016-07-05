$(function () {
    //点击"上传照片" 跳转页面
   $("#addPhotoBtn").click(function () {
       $("#content_iframe",window.top.document).attr("src",path+"/userPhoto/gotoUploadPhotoIndex");
   });
});