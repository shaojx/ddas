<%--
  Created by IntelliJ IDEA.
  User: Liuchen
  Date: 2016/6/28
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html><html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path=request.getContextPath();
%>
<head>
    <title>my friend</title>
    <title>Myspace</title>
    <meta charset="UTF-8">
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet"/>
    <link href="<%=path%>/business/common/css/common.css" rel="stylesheet"/>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
    <%--分页的JS--%>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
    <style type="text/css">
        div.row{
            margin-left: 0;
        }
        body,html{
            overflow: hidden !important;
        }
    </style>
    <%--引入业务JS --%>
    <script type="text/javascript" src="<%=path%>/business/myspace/mySpaceContent.js"></script>
    <link href="<%=path%>/common/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <%--引入自定义样式--%>
    <link href="<%=path%>/business/common/css/friendList.css"/>
    <%--引入自定义JS--%>
    <script type="text/javascript" src="<%=path%>/business/common/js/header.js"></script>
    <script type="text/javascript" src="<%=path%>/business/myfriend/friend.js"></script>
</head>
<body>
<div class="row">
    <div class="tabbable" id="tabs-my-friend">
        <ul class="nav nav-tabs">
            <li class="active" id="myFriendTab">
                <a href="#panel-tabs0" data-toggle="tab">好友列表</a>
            </li>
            <li id="myFriendApplyTab">
                <a href="#panel-tabs1" data-toggle="tab">好友申请</a>
            </li>
            <li>
                <a href="#panel-tabs2" data-toggle="tab">好友邀请</a>
            </li>
            <li>
                <a href="#panel-tabs3" data-toggle="tab">分组管理</a>
            </li>
        </ul>
        <div class="tab-content">
            <%--我的好友列表--%>
            <div class="tab-pane active" id="panel-tabs0">
                <form class="form-horizontal" role="form">
                    <div class="col-md-6 form-group pull-left" style="margin-top: 10px;">
                        <select class="form-control width80 input-sm">
                            <option>China</option>
                            <option>U.S.A</option>
                            <option>TaiWan</option>
                            <option>HuoXing</option>
                            <option>Star</option>
                        </select>
                    </div>
                    <div class="col-md-6  pull-left" style="margin-top: 10px;">
                        <div class="input-group width250" >
                            <input type="text" id="searchName" class="form-control input-sm" placeholder="请输入搜索内容">
                             <span class="input-group-btn">
                                 <button class="btn btn-default input-sm" id="searchFriend" type="button">搜索</button>
                             </span>
                        </div>
                    </div>
                </form>
                <%--列表内容--%>
                <div class="row clear-both" id="myFriendContentDiv" style="margin-top:10px;">
                </div>
                <%--分页--%>
                <div class="row clearfix" style="clear: both;">
                    <div class="col-md-12">
                        <!--分页控件-->
                        <ul class="pagination" id="myFriendPaginationDIV">
                        </ul>
                    </div>
                </div>
            </div>
            <%--好友申请--%>
            <div class="tab-pane " id="panel-tabs1" align="center">
                <div class="row" id="myFriendApplyContentDiv"  style="margin-top:10px;">
                </div>
                <%--分页--%>
                <div class="row pull-left">
                    <div class="col-md-12">
                        <!--分页控件-->
                        <ul class="pagination" id="myFriendPaginationApplyDIV">
                        </ul>
                    </div>
                </div>
            </div>

            <div class="tab-pane " id="panel-tabs2">
            </div>
            <div class="tab-pane " id="panel-tabs3">
                <div class="row">
                    <button class="btn btn-group-sm btn-info pull-right" data-toggle="modal" data-backdrop="" autocomplete="off" data-target="#createMyFriendGroupDialog" style="margin-right: 35px;margin-top: 5px;margin-bottom: 5px;">添加分类</button>
                </div>

                <%--创建分组弹出框 --%>
                <div class="modal fade" id="createMyFriendGroupDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">新建好友分组</h4>
                            </div>
                            <div class="modal-body">
                                <input class="col-md-2 form-control width250" id="userFriendGroupName" placeholder="好友类别">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" id="saveMyFriendGroup">保存</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th><input type="checkbox" class="checkbox" name="types_checkbox"> </th>
                            <th>分类名称</th>
                            <th>创建时间</th>
                            <th>操 作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row"><input type="checkbox" class="checkbox" name="types_checkbox"></th>
                            <td>默认分组</td>
                            <td>2016-7-1 23:00:15</td>
                            <td><span class="text-muted" style="font-style: italic;">默认分组不允许修改与删除!</span> </td>
                        </tr>
                        <tr>
                            <th scope="row"><input type="checkbox" class="checkbox" name="types_checkbox"></th>
                            <td>自定义分组1</td>
                            <td>2016-7-1 23:00:15</td>
                            <td><a href="#">编辑</a> | <a href="#">删除</a></td>
                        </tr>
                        <tr>
                            <th scope="row"><input type="checkbox" class="checkbox" name="types_checkbox"></th>
                            <td>自定义分组2</td>
                            <td>2016-7-1 23:00:15</td>
                            <td><a href="#">编辑</a> | <a href="#">删除</a></td>
                        </tr>
                        </tbody>
                    </table>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
