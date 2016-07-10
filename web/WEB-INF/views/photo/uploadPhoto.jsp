<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UploadPhoto</title>
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <link href="<%=path%>/business/common/css/common.css" rel="stylesheet">

    <%--文件上传JS--%>
    <link rel="stylesheet" type="text/css" href="<%=path%>/common/bootstrap-fileupload/css/default.css">
    <link href="<%=path%>/common/bootstrap-fileupload/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="<%=path%>/common/bootstrap-fileupload/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=path%>/common/bootstrap-fileupload/js/fileinput_locale_zh.js" type="text/javascript"></script>

    <!--[if IE]>
        <script src="<%=path%>/common/bootstrap-fileupload/js/html5shiv.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>

    <%--引入自定义JS--%>
    <script type="text/javascript" src="<%=path%>/business/photo/uploadPhoto.js"></script>
    <style type="text/css">
        /*取消bootstrap row margin-left:-15px; margin-right:-15px;*/
        div.row {
            margin: 0;
        }
    </style>
</head>
<body>
<div class="htmleaf-container">
  <div class="row"><p class="bg-info text-info" style="height: 40px;line-height: 40px;margin-top: 5px;">上传照片</p></div>
  <div class="container">
   <div class="row">
        <form class="form-horizontal" enctype="multipart/form-data">
              <div class="form-group">
                  <label class="col-xs-2 col-md-2" name="photoGroupLabel" for="photoGroup" style="padding-left:0!important;">选择相册</label>
                  <select class="col-xs-4 col-md-6" id="photoGroup" name="photoGroup">
                      <option>默认分组</option>
                      <option>默认分组</option>
                      <option>默认分组</option>
                      <option>默认分组</option>
                      <option>默认分组</option>
                  </select>
              </div>
            <div class="form-group">
                <label class="control-label" name="upload">上传照片</label>
                <input type="file" class="file" multiple id="myfiles" name="myfiles"/>
            </div>
        </form>
    </div>
  </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        $(".file-drop-zone").height("55%");
    });
    $("#myfiles").fileinput({
        uploadUrl:path+"/fileUpload/fileUpload",
        maxFileCount:4,
        allowedFileTypes: ['image'],
        allowedFileExtensions:["png","jpeg","jpg","bmp","gif"],
        maxFileSize:3*1024,//上传限制3M
        uploadExtraData:{
            "photoGroupId":"123"
        }
    });

    $('#myfiles').on('filebatchuploadsuccess', function(event, file, previewId, index, reader) {
      alert("DDDDDDDDDDDDDD");
    });
</script>
</html>
