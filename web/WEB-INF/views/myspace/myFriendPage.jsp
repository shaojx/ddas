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

    <script type="text/javascript">
        var path="<%=path%>";
    </script>
    <script type="text/javascript" src="<%=path%>/business/myfriend/friend.js"></script>
    <script>
        $(function () {
            var element = $('#pageUl');//对应下面ul的ID
            var options = {
                bootstrapMajorVersion: 3,
                currentPage: 1,//当前页面
                numberOfPages: 5,//一页显示几个按钮（在ul里面生成5个li）
                totalPages: 6 //总页数
            }
            element.bootstrapPaginator(options);
        });
        function paging(page) {
            $.ajax({
                type: "GET",
                url: "${ctx}/api/v1/user/1/" + (page - 1) + "/5",
                dataType: "json",
                success: function (msg) {
                    alert("Json数据");
                }
            });
            $.ajax({
                type: "GET",
                url: "${ctx}/api/v1/user/count/1",
                dataType: "json",
                success: function (msg) {
                    var pages = Math.ceil(msg.data / 5);//这里data里面有数据总量
                    var element = $('#pageUl');//对应下面ul的ID
                    var options = {
                        bootstrapMajorVersion: 3,
                        currentPage: page,//当前页面
                        numberOfPages: 5,//一页显示几个按钮（在ul里面生成5个li）
                        totalPages: pages //总页数
                    }
                    element.bootstrapPaginator(options);
                }
            });
        }
    </script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
</head>
<body>
<div class="row">
    <div class="tabbable" id="tabs-my-friend">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#panel-tabs0" data-toggle="tab">好友列表</a>
            </li>
            <li>
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
                            <input type="text" class="form-control input-sm" placeholder="请输入搜索内容">
                             <span class="input-group-btn">
                                 <button class="btn btn-default input-sm" type="button">搜索</button>
                             </span>
                        </div>
                    </div>
                </form>
                <%--列表内容--%>
                <div class="row clear-both" style="margin-top:10px;">
                    <div class="panel panel-default width350 pull-left">
                        <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div class="inline-block center" style="height: 50px;">
                            <div style="width: 270px;">
                                <span class="text-muted inline-block" style="margin-top: 5px;">name</span>
                               <span class="glyphicon glyphicon-remove pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                                <span class="glyphicon glyphicon-envelope pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                            </div>
                            <div class="width250" style="margin-top: 10px;">
                                <select class="form-control width80 input-sm">
                                    <option>China</option>
                                    <option>U.S.A</option>
                                    <option>TaiWan</option>
                                    <option>HuoXing</option>
                                    <option>Star</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default width350 pull-left" style="margin-left: 10px;">
                        <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div class="inline-block center" style="height: 50px;">
                            <div style="width: 270px;">
                                <span class="text-muted inline-block" style="margin-top: 5px;">name</span>
                                <%-- <button type="button" class="close pull-right" >x</button>--%>
                                <span class="glyphicon glyphicon-remove pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                                <span class="glyphicon glyphicon-envelope pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                            </div>
                            <div class="width250" style="margin-top: 10px;">
                                <select class="form-control width80 input-sm">
                                    <option>China</option>
                                    <option>U.S.A</option>
                                    <option>TaiWan</option>
                                    <option>HuoXing</option>
                                    <option>Star</option>
                                </select>
                            </div>
                        </div>
                  </div>
                </div>
                <div class="row clear-both" style="margin-top:10px;">
                    <div class="panel panel-default width350 pull-left">
                        <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div class="inline-block center" style="height: 50px;">
                            <div style="width: 270px;">
                                <span class="text-muted inline-block" style="margin-top: 5px;">name</span>
                                <span class="glyphicon glyphicon-remove pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                                <span class="glyphicon glyphicon-envelope pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                            </div>
                            <div class="width250" style="margin-top: 10px;">
                                <select class="form-control width80 input-sm">
                                    <option>China</option>
                                    <option>U.S.A</option>
                                    <option>TaiWan</option>
                                    <option>HuoXing</option>
                                    <option>Star</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default width350 pull-left" style="margin-left: 10px;">
                        <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div class="inline-block center" style="height: 50px;">
                            <div style="width: 270px;">
                                <span class="text-muted inline-block" style="margin-top: 5px;">name</span>
                                <%-- <button type="button" class="close pull-right" >x</button>--%>
                                <span class="glyphicon glyphicon-remove pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                                <span class="glyphicon glyphicon-envelope pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>
                            </div>
                            <div class="width250" style="margin-top: 10px;">
                                <select class="form-control width80 input-sm">
                                    <option>China</option>
                                    <option>U.S.A</option>
                                    <option>TaiWan</option>
                                    <option>HuoXing</option>
                                    <option>Star</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <%--分页--%>
                <div class="row clearfix" style="clear: both;">
                    <div class="col-md-12">
                        <!--分页控件-->
                        <ul class="pagination">
                            <li>
                                <a href="#">Prev</a>
                            </li>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <%--好友申请--%>
            <div class="tab-pane " id="panel-tabs1" align="center">
                <div class="row"  style="margin-top:10px;">
                    <div class="panel panel-default width350 pull-left margin-left-10px">
                    <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                    <div class="inline-block center" style="height: 50px;">
                        <div style="width: 270px;">
                            <span class="text-muted inline-block pull-left margin-left-10px" style="margin-top: 5px;">name</span>
                            <span class="pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void(0)">拒绝</a>
                            </span>
                            <span class="pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void (0)">同意</a>
                            </span>
                        </div>
                        <div class="width250 clear-both">
                            <select class="form-control width80 input-sm pull-left" style="margin-top: 10px;">
                                <option>China</option>
                                <option>U.S.A</option>
                                <option>TaiWan</option>
                                <option>HuoXing</option>
                                <option>Star</option>
                            </select>
                        </div>
                    </div>
                </div>
                    <div class="panel panel-default width350 pull-left margin-left-10px">
                    <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                    <div class="inline-block center" style="height: 50px;">
                        <div style="width: 270px;">
                            <span class="text-muted inline-block pull-left margin-left-10px" style="margin-top: 5px;">name</span>
                            <span class="pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void(0)">拒绝</a>
                            </span>
                            <span class="pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void (0)">同意</a>
                            </span>
                        </div>
                        <div class="width250 clear-both">
                            <select class="form-control width80 input-sm pull-left" style="margin-top: 10px;">
                                <option>China</option>
                                <option>U.S.A</option>
                                <option>TaiWan</option>
                                <option>HuoXing</option>
                                <option>Star</option>
                            </select>
                        </div>
                    </div>
                </div>
                </div>
                <div class="row"  style="margin-top:10px;">
                    <div class="panel panel-default width350 pull-left margin-left-10px">
                        <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div class="inline-block center" style="height: 50px;">
                            <div style="width: 270px;">
                                <span class="text-muted inline-block pull-left margin-left-10px" style="margin-top: 5px;">name</span>
                            <span class="pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void(0)">拒绝</a>
                            </span>
                            <span class="pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void (0)">同意</a>
                            </span>
                            </div>
                            <div class="width250 clear-both">
                                <select class="form-control width80 input-sm pull-left" style="margin-top: 10px;">
                                    <option>China</option>
                                    <option>U.S.A</option>
                                    <option>TaiWan</option>
                                    <option>HuoXing</option>
                                    <option>Star</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default width350 pull-left margin-left-10px">
                        <img src="<%=path%>/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">
                        <div class="inline-block center" style="height: 50px;">
                            <div style="width: 270px;">
                                <span class="text-muted inline-block pull-left margin-left-10px" style="margin-top: 5px;">name</span>
                            <span class="pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void(0)">拒绝</a>
                            </span>
                            <span class="pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;">
                                <a href="javascript:void (0)">同意</a>
                            </span>
                            </div>
                            <div class="width250 clear-both">
                                <select class="form-control width80 input-sm pull-left" style="margin-top: 10px;">
                                    <option>China</option>
                                    <option>U.S.A</option>
                                    <option>TaiWan</option>
                                    <option>HuoXing</option>
                                    <option>Star</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <%--分页--%>
                <div class="row pull-left">
                    <div class="col-md-12">
                        <!--分页控件-->
                        <ul class="pagination">
                            <li>
                                <a href="#">Prev</a>
                            </li>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="tab-pane " id="panel-tabs2">
            </div>
            <div class="tab-pane " id="panel-tabs3">
                <div class="row">
                    <button class="btn btn-group-sm btn-info pull-right" style="margin-right: 35px;margin-top: 5px;margin-bottom: 5px;">添加分类</button>
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
