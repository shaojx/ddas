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

    <link href="<%=path%>/common/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/css/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/css/jquery.bxslider.css" rel="stylesheet">
    <link href="<%=path%>/common/css/style.css" rel="stylesheet">
    <link href="<%=path%>/common/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path%>/common/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <script src="<%=path%>/common/js/jquery/jquery.js"></script>
    <%--引入自定义样式--%>
    <link href="<%=path%>/business/common/css/leftContent.css"/>
    <link href="<%=path%>/business/common/css/friendList.css"/>
    <%--引入自定义JS--%>
    <script type="text/javascript" src="<%=path%>/business/common/js/header.js"></script>

    <script type="text/javascript">
        var path="<%=path%>";
    </script>
    <script type="text/javascript" src="<%=path%>/business/myspace/index.js"></script>
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
    <script type="text/javascript" src="<%=path%>/common/js/bootstrap-paginator.js"></script>
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
            <div class="tab-pane active" id="panel-tabs0">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="searchCondition"/>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" class="btn btn-default">搜索</button>
                        </div>
                    </div>
                    <div class="friend_list" id="itemContainer">
                        <div style="width:70px;height:70px;border:1px #f0f0f0 solid;float:left;margin:10px 2.3%;" >
                            <div class="touxiang" style="width:59px;height:59px;padding-top:5px;margin-left:5px;float:left;"><img src="<%=path%>/common/images/people.gif" style="width:100%;height:100%;"></div>
                            <div class="xinxi" ><div class="username">moqiu</div><div><select rel="22" class="zubie" userid="48" value="22"><option value="0">默认分组</option><option value="22">Work</option> </select></div></div>
                            <div style="float:left;margin-left:27px;margin-top:5px;"><a href="/index.php?s=member&amp;c=member_center&amp;a=xinjianyoujian&amp;id=48" target="kuangjia" class="xiaozhitiao" style="cursor:pointer;"></a><a class="del" rel="48" style="cursor:pointer;"></a></div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="friend_xinxi">
                            <div class="touxiang"><img src="<%=path%>/common/images/people.gif"></div>
                            <div class="xinxi" style="float:left;margin-left:15px;"><div class="username" style="margin:10px 0;font-weight:700;color:#5e635c;">shelly</div><div><select rel="0" class="zubie" userid="122" value="0"><option value="0">默认分组</option><option value="22">Work</option> </select></div></div>
                            <div style="float:left;margin-left:27px;margin-top:5px;"><a href="/index.php?s=member&amp;c=member_center&amp;a=xinjianyoujian&amp;id=122" target="kuangjia" class="xiaozhitiao" style="cursor:pointer;"></a><a class="del" rel="122" style="cursor:pointer;"></a></div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="friend_xinxi">
                            <div class="touxiang"><img src="<%=path%>/common/images/people.gif"></div>
                            <div class="xinxi"><div class="username">ahteck</div><div><select rel="0" class="zubie" userid="141" value="0"><option value="0">默认分组</option><option value="22">Work</option> </select></div></div>
                            <div style="float:left;margin-left:27px;margin-top:5px;"><a href="/index.php?s=member&amp;c=member_center&amp;a=xinjianyoujian&amp;id=141" target="kuangjia" class="xiaozhitiao" style="cursor:pointer;"></a><a class="del" rel="141" style="cursor:pointer;"></a></div>
                            <div style="clear:both"></div>
                        </div>
                        <div class="friend_xinxi">
                            <div class="touxiang"><img src="<%=path%>/common/images/people.gif"></div>
                            <div class="xinxi"><div class="username">liyanran511904</div><div><select rel="0" class="zubie" userid="22" value="0"><option value="0">默认分组</option><option value="22">Work</option> </select></div></div>
                            <div style="float:left;margin-left:27px;margin-top:5px;"><a href="/index.php?s=member&amp;c=member_center&amp;a=xinjianyoujian&amp;id=22" target="kuangjia" class="xiaozhitiao" style="cursor:pointer;"></a><a class="del" rel="22" style="cursor:pointer;"></a></div>
                            <div style="clear:both"></div>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                    <div class="row clearfix" style="clear: both;">
                        <div class="col-md-12">
                            <!--分页控件-->
                            <ul class="pagination" id="pageUl">
                            </ul>
                        </div>
                    </div>
                </form>
            </div>
            <div class="tab-pane " id="panel-tabs1" align="center">
            </div>
            <div class="tab-pane " id="panel-tabs2">
            </div>
            <div class="tab-pane " id="panel-tabs3">
            </div>
        </div>
    </div>
</div>
</body>
</html>
