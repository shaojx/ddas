<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path=request.getContextPath();
%>
<head>
    <title>IndexContent</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet">
    <%-- <link href="<%=path%>/common/bxslider/css/style.css" rel="stylesheet">--%>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <link rel="stylesheet" href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css">
    <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
    <%--分页的JS--%>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
    <script type="text/javascript" src="<%=path%>/business/index/indexContent.js"></script>
    <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        div.row{
            margin-left: 0;
            margin-right: 5px;
        }
        body,html{
            overflow: hidden !important;
        }
    </style>
</head>
<body>
<div class="row">
        <div class="tabbable" id="tabs-262840">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#panel-tabs1" data-toggle="tab">用户列表</a>
                </li>
                <li>
                    <a href="#panel-tabs2" data-toggle="tab">日志</a>
                </li>
                <li>
                    <a href="#panel-tabs3" data-toggle="tab">相册</a>
                </li>
                <li>
                    <a href="#panel-tabs4" data-toggle="tab">分享</a>
                </li>
            </ul>
            <div class="tab-content" id="tab-content">
                <div class="tab-pane active" id="panel-tabs1">
                    <div id="userListContentDiv">
                        <div class="col-xs-3 col-md-3">
                            <div class="imageDiv">
                                <img alt="140x140" src="<%=path%>/common/images/140x140.jpg" class="img-thumbnail"/>
                                <p>
                                    Name <a class="btn" href="#">加好友</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                                <div class="imageDiv">
                                    <img alt="140x140" src="<%=path%>/common/images/140x140.jpg" class="img-thumbnail"/>
                                    <p>
                                        Name <a class="btn" href="#">加好友</a>
                                    </p>
                                </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            <div class="imageDiv">
                                <img alt="140x140" src="<%=path%>/common/images/140x140.jpg" class="img-thumbnail"/>
                                <p>
                                    Name <a class="btn" href="#">加好友</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            <div class="imageDiv">
                                <img alt="140x140" src="<%=path%>/common/images/140x140.jpg" class="img-thumbnail"/>
                                <p>
                                    Name <a class="btn" href="#">加好友</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            <div class="imageDiv">
                                <img alt="140x140" src="<%=path%>/common/images/140x140.jpg" class="img-thumbnail"/>
                                <p>
                                    Name <a class="btn" href="#">加好友</a>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            <div class="imageDiv">
                                <img alt="140x140" src="<%=path%>/common/images/140x140.jpg" class="img-thumbnail"/>
                                <p>
                                    Name <a class="btn" href="#">加好友</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix" style="clear: both;">
                        <div class="col-md-12">
                            <!--分页控件-->
                            <ul class="pagination" id="userListPaginationDIV">
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="tab-pane " id="panel-tabs2">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="tabbable" style="width: 500px" id="tabs-295323">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#panel-324017" data-toggle="tab">我的日志</a>
                                    </li>
                                    <li>
                                        <a href="#panel-8940" data-toggle="tab">朋友的日志</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="panel-324017">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153"
                                           href="#panel-element-115285">日志分类之我的日志</a>
                                    </div>
                                    <div id="panel-element-113" class="panel-collapse in">
                                        <div class="panel-body">
                                            我的日志标题是这里
                                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">
                                                标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153"
                                           href="#panel-element-115285">日志分类之我的什么鬼</a>
                                    </div>
                                    <div id="panel-element-116" class="panel-collapse in">
                                        <div class="panel-body">
                                            我的日志标题是这里吗？是的
                                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">
                                                标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-8940">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153"
                                           href="#panel-element-115285">日志分类之我的日志</a>
                                    </div>
                                    <div id="panel-element-112" class="panel-collapse in">
                                        <div class="panel-body">
                                            朋友的日志标题是这里
                                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">
                                                标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="panel-tabs3">

                    <div class="media">
                        <a href="#" class="pull-left"><img src="/common/images/140x140.jpg" alt=''
                                                           class="img-thumbnail"/></a>
                        <div class="media-body " style="padding-top: 10px">
                            <h4 class="media-heading">
                                <a>相册封面</a>
                            </h4>
                            <div>标签：</div>
                            <div>照片数量：12</div>
                            <div>更新于：2016-06-02 15:50:08</div>
                            <div>创建于：2016-04-18 14:09:48</div>
                        </div>
                    </div>

                </div>
                <div class="tab-pane" id="panel-tabs4">
                    <p>
                        分享暂时不做
                    </p>
                </div>
            </div>
        </div>
</div>
</body>
</html>
