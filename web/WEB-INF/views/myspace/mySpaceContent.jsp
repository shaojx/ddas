<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
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
    <%--引入业务JS --%>
    <script type="text/javascript" src="<%=path%>/business/myspace/mySpaceContent.js"></script>
    <style type="text/css">
        div.row{
            margin-left: 0;
        }
        body,html{
            overflow: hidden !important;
        }
    </style>
</head>
<body>
<div class="container">
<div class="row">
    <div class="tabbable" id="tabs-262840">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#panel-tabs0" data-toggle="tab">个人主页</a>
            </li>
            <li>
                <a href="#panel-tabs1" data-toggle="tab">用户资料</a>
            </li>
            <li>
                <a href="#panel-tabs2" data-toggle="tab">心情</a>
            </li>
            <li>
                <a href="#panel-tabs3" data-toggle="tab">日志</a>
            </li>
            <li>
                <a href="#panel-tabs4" data-toggle="tab">相册</a>
            </li>
            <li>
                <a href="#panel-tabs5" data-toggle="tab">分享</a>
            </li>
            <li>
                <a href="#panel-tabs6" data-toggle="tab">群组</a>
            </li>
            <li>
                <a href="#panel-tabs7" data-toggle="tab">留言板</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="panel-tabs0">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-1331">最近照片</a>
                    </div>
                    <div id="panel-element-1331" class="panel-collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-1233">最新日志</a>
                    </div>
                    <div id="panel-element-1233" class="panel-collapse in">
                        <div class="panel-body">
                            日志标题是这里
                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-1152">最新留言</a>
                    </div>
                    <div id="panel-element-1152" class="panel-collapse in">
                        <div class="panel-body">
                            留言内容在这里
                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">By：Mate&nbsp;&nbsp;&nbsp;Time:&nbsp;&nbsp;2016/06/26</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane " id="panel-tabs1" align="center">
                <div id="tips " style="margin: 15px auto"><span class="label label-default" >填写完整准确的个人资料，可以让更多的朋友找到您。</span></div>
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">用户名</label>
                        <label class="col-sm-offset-1 col-sm-2 control-label">Mariki</label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">性别</label>
                        <label class="col-sm-offset-1 col-sm-2 control-label">女</label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">身高</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="height" />
                        </div>
                        <label class="col-sm-1 control-label">CM</label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">体重</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="weight" />
                        </div>
                        <label class="col-sm-1 control-label">KG</label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">国家地区</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>China</option>
                                <option>U.S.A</option>
                                <option>TaiWan</option>
                                <option>HuoXing</option>
                                <option>Star</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="dtp_input2" class="col-sm-offset-1 col-sm-2 control-label">出生日期</label>
                        <div class="col-sm-5">
                            <div class="input-group date form_date" data-date="1993-09-16T05:25:07Z" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value="" /><br/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">宗教</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="religion" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">教育</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="education" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">交友宣言</label>
                        <div class="col-sm-5">
                            <textarea class="form-control" id="declaration" rows="3"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">年收入</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>50,000-100,000</option>
                                <option>100,000-500,000</option>
                                <option>500,000 Above</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">婚恋状态</label>
                        <div class="col-sm-4">
                            <select class="form-control">
                                <option>单身</option>
                                <option>已婚</option>
                                <option>离异</option>
                                <option>恋爱</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="tab-pane " id="panel-tabs2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">最近照片</a>
                    </div>
                    <div id="panel-element-115111" class="panel-collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-3">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">最新日志</a>
                    </div>
                    <div id="panel-element-115231" class="panel-collapse in">
                        <div class="panel-body">
                            日志标题是这里
                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">最新留言</a>
                    </div>
                    <div id="panel-element-115232" class="panel-collapse in">
                        <div class="panel-body">
                            留言内容在这里
                            <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">By：Mate&nbsp;&nbsp;&nbsp;Time:&nbsp;&nbsp;2016/06/26</div>
                        </div>
                    </div>
                </div>
            </div>

            <%--日志 start--%>
            <div class="tab-pane " id="panel-tabs3">
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
                        <%--我的日志 start--%>
                        <div class="tab-pane active" id="panel-324017">
                            <%--创建日志 --%>
                            <div class="row" style="margin-top: 5px;margin-bottom: 3px;">
                                <div  style="margin-left:85%;">
                                    <button type="button" id="createMyLog"  class="btn btn-info" data-toggle="modal" data-backdrop="" autocomplete="off" data-target="#createMyLogDialog">
                                        新建日志
                                    </button>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">日志分类之我的日志</a>
                                </div>
                                <div id="panel-element-113" class="panel-collapse in">
                                    <div class="panel-body">
                                        我的日志标题是这里
                                        <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                                    </div>
                                </div>
                            </div>
                          <%--  <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">日志分类之我的什么鬼</a>
                                </div>
                                <div id="panel-element-116" class="panel-collapse in">
                                    <div class="panel-body">
                                        我的日志标题是这里吗？是的
                                        <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                        <%--朋友日志  start--%>
                        <div class="tab-pane" id="panel-8940">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">日志分类之我的日志</a>
                                </div>
                                <div id="panel-element-112" class="panel-collapse in">
                                    <div class="panel-body">
                                        朋友的日志标题是这里
                                        <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="panel-tabs4">

                <div class="media">
                    <a href="#" class="pull-left"><img src="/common/images/140x140.jpg" alt='' class="img-thumbnail"/></a>
                    <div class="media-body" style="padding-top: 10px">
                        <h4 class="media-heading">
                            <a>相册封面</a>
                        </h4>
                        <div >标签：</div>
                        <div >照片数量：12</div>
                        <div >更新于：2016-06-02 15:50:08</div>
                        <div >创建于：2016-04-18 14:09:48</div>
                    </div>
                </div>

            </div>
            <div class="tab-pane" id="panel-tabs5">
                <p>
                    分享暂时不做
                </p>
            </div>
            <div class="tab-pane" id="panel-tabs7">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        Mariki的留言板
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">留言时间：2016-06-26-14:40:52</div></div>
                            <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                        </li>
                        <li class="list-group-item">
                            <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">留言时间：2016-06-26-14:40:52</div></div>
                            <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                        </li>
                        <li class="list-group-item">
                            <div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">留言时间：2016-06-26-14:40:52</div></div>
                            <div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">你好a！</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
    <%--创建日志弹出框 --%>
<div class="modal fade" id="createMyLogDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">新建日志</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logTitle" class="col-sm-2 control-label "><span class="inline-block width120">日志标题</span></label>
                                <span class="inline-block width280" style="margin-left: 5px;">
                                    <input  class="form-control" id="logTitle" placeholder="日志标题">
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10 float-left">
                            <label for="logType" class="col-sm-2 control-label"><span class="inline-block width120">日志分类</span></label>
                            <span class="inline-block width280" style="margin-left: 5px;">
                                <select id="logType" class="form-control">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </span>
                            </div>
                            <div style="height: 34px;line-height: 34px;">
                                <a href="javascript:void(0)" id="addTypeHref" class="center">添加分类</a>
                            </div>
                            <div class="width250 float-left display">
                                <input class="col-md-2 form-control width120 float-left" id="addTypeInput" placeholder="分类名称">
                                <button type="button" class="btn btn-primary float-left margin-left-5px">保存</button>
                                <button type="button" class="btn btn-default float-left margin-left-5px">取消</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logTags" class="col-sm-2 control-label "><span class="inline-block width120">日志标签</span></label>
                                <span class="inline-block width280" style="margin-left: 5px;">
                                    <input  class="form-control" id="logTags" placeholder="日志标签">
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                 <label for="privilege" class="col-sm-2 control-label"><span class="inline-block width120">权 限</span></label>
                                 <span class="inline-block width280" style="margin-left: 5px;">
                                 <span class="inline-block text-span"><input type="radio" id="privilege" name="privilege" style="margin-right: 5px;margin-top: 3px;"></span><span class="inline-block text-span">全部人可见</span>
                                 <span class="inline-block text-span margin-left-10px"><input type="radio" id="privilege2" name="privilege" style="margin-right: 5px;margin-top: 3px;"></span><span class="inline-block text-span">仅自己可见</span>
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logContent" class="col-sm-2 control-label float-left"><span class="inline-block width120">日志内容</span></label>
                                <div class="float-left" style="margin-left: 5px;">
                                    <textarea rows="5" id="logContent" class="width280"></textarea>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
