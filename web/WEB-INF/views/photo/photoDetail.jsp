<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
    String path=request.getContextPath();
    String groupId=(String)request.getAttribute("groupId");
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Photo Detail</title>
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet">
    <link href="<%=path%>/common/bxslider/css/style.css" rel="stylesheet">
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
    <link href="<%=path%>/business/common/css/common.css" rel="stylesheet">
    <%--图片轮播--%>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script src="<%=path%>/common/layer/js/layer.min.js"></script>

    <%--分页的JS--%>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
        var groupId = "<%=groupId%>";
    </script>

    <script type="text/javascript" src="<%=path%>/business/photo/photoDetail.js"></script>
    <style type="text/css">
        .row img{
            margin-left: 25px;
            margin-top: 25px;
        }
        #txtDiv span{
            margin-top: 60px;
        }
    </style>
</head>
<body>
<p class="bg-info" style="height: 30px;line-height: 30px;">照片详情</p>
<div class="container-fluid">
    <div class="row" id="photoDiv">
        <img src="<%=path%>/common/images/140x140.jpg" alt="140x140" class="img-rounded">
        <img src="<%=path%>/common/images/140x140.jpg" alt="" class="img-rounded">
        <img src="<%=path%>/common/images/140x140.jpg" alt="" class="img-rounded">
        <img src="<%=path%>/common/images/140x140.jpg" alt="" class="img-rounded">
        <img src="<%=path%>/common/images/140x140.jpg" alt="" class="img-rounded">
    </div>
    <%--分页插件--%>
    <ul class="pagination" id="photoPaginationDiv"></ul>
</div>

<%--设置封面的div--%>
<div style="width:140px;height: 140px;background:pink;text-align: center;position: absolute; left: -1000px;"
     id="txtDiv">
    <span class="inline-block">设置为封面</span>
</div>

<%--<div id="imgs" class="imgs">
    <img src="<%=path%>/common/images/layer/1.jpg" layer-pname="站长素材 - 1">
    <img src="<%=path%>/common/images/layer/2.jpg" layer-pname="站长素材 - 2">
    <img src="<%=path%>/common/images/layer/3.jpg" layer-pname="站长素材 - 3">
    <img src="<%=path%>/common/images/layer/4.jpg" layer-pname="站长素材 - 4">
</div>--%>
<script>
</script>
<input type="hidden" value="${groupId}" id="groupId"/>
</body>
</html>
