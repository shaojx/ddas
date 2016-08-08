<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <script src="<%=path%>/common/bootstrapvalidator/js/bootstrapValidator.js" type="text/javascript"></script>
    <link  rel="stylesheet" href="<%=path%>/common/custom-loader/css/sllib.css"/>
    <script type="text/javascript" src="<%=path%>/common/custom-loader/js/loader.js"></script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-datetimepicker/js/datePickerLocales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <%--分页--%>
    <script type="text/javascript" src="<%=path%>/common/bootstrap-paginator/js/bootstrap-paginator.js"></script>
    <%--文件上传JS--%>
    <link href="<%=path%>/common/bootstrap-fileupload/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="<%=path%>/common/bootstrap-fileupload/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=path%>/common/bootstrap-fileupload/js/fileinput_locale_${local}.js" type="text/javascript"></script>
    <!--[if IE]>
    <script src="<%=path%>/common/bootstrap-fileupload/js/html5shiv.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
    <%--引入业务JS --%>
    <script type="text/javascript" src="<%=path%>/business/myspace/mySpaceContent.js"></script>
    <link href="<%=path%>/common/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet"/>
    <script src="<%=path%>/common/bootstrapvalidator/js/bootstrapValidator.min.js" type="text/javascript"></script>
    <script src="<%=path%>/common/bootstrapvalidator/js/language/${local}.js" type="text/javascript"></script>
    <%--datatime picker--%>
    <link href="<%=path%>/common/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path%>/common/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
    <link href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
    <script type="text/javascript" src="<%=path%>/business/myspace/language/${local}.js"></script>
    <script type="text/javascript" src="<%=path%>/business/photo/language/${local}.js"></script>
    <style type="text/css">
        body,html{
            overflow: hidden !important;
            height:100%;
            width:100%;
        }
        .txtDivSpan{
            margin-top: 40px;
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
                <a href="#panel-tabs3" data-toggle="tab" id="logTab">日志</a>
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
                <a href="#panel-tabs7" id="messageTab" data-toggle="tab">留言板</a>
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
                                <div class="col-xs-3 col-md-3 width175">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3 width175">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3 width175">
                                    <div class="thumbnail">
                                        <img src="/common/images/140x140.jpg" alt="140x140">
                                        <div class="caption">
                                            <h4>caption/文字</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3 width175">
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
            <%--个人资料--%>
            <div class="tab-pane " id="panel-tabs1" align="center">
                <p class="bg-info text-info" style="height: 30px;line-height: 30px;">填写完整准确的个人资料，可以让更多的朋友找到您。</p>
                <form class="form-horizontal" role="form">
                   <div>
                      <div id="left"  style="float:left;width: 400px;">
                          <div class="form-group">
                              <label class="col-sm-offset-1 col-sm-2 control-label pull-left"><span class="inline-block width120">用户名</span></label>
                              <label class="col-sm-offset-1 col-sm-2 control-label pull-left"><span class="inline-block">Mariki</span></label>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-offset-1 col-sm-2 control-label pull-left "><span class="inline-block width120">性 别</span></label>
                              <label class="col-sm-offset-1 col-sm-2 control-label pull-left"><span class="inline-block ">女</span></label>
                          </div>
                      </div>
                       <div id="right">
                           <img id="headPhoto" src="<%=path%>${userInfo.headPhotoUrl}" alt="120X120" class="img-rounded"
                                style="width: 100px;height: 100px;">
                            <div style="width:100px;height: 100px;background:rgba(214, 200, 216, 0.8);text-align: center;position: absolute; left: -1000px;cursor: hand;"
                                id="txtDiv_0">
                               <a class="inline-block txtDivSpan" style="cursor:pointer;" id="txtDivSpan_0" data-toggle="modal" data-target="#changeHeadPhoto"
                                  data-backdrop="" >更换头像</a>
                           </div>
                       </div>
                   </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left"><span class="inline-block width120">身 高</span></label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width300 pull-left" id="height" />
                        </div>
                        <label class="col-sm-1 control-label pull-left"><span class="inline-block" style="height: 34px;line-height: 34px;">CM</span></label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left"><span class="inline-block width120">体 重</span></label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width300 pull-left" id="weight" />
                        </div>
                        <label class="col-sm-1 control-label pull-left"><span class="inline-block" style="height:34px;line-height: 34px;">KG</span></label>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left"><span class="inline-block width120">国家地区</span></label>
                        <div class="col-sm-4">
                            <select class="form-control pull-left width300">
                                <option>China</option>
                                <option>U.S.A</option>
                                <option>TaiWan</option>
                                <option>HuoXing</option>
                                <option>Star</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="dtp_input2" class="col-sm-offset-1 col-sm-2 control-label pull-left">
                            <span class="inline-block width120">出生日期</span>
                        </label>
                        <div class="col-sm-5">
                        <%--    <div class="input-append date  form_datetime width300 pull-left" data-date="2013-02-21" id="datetimepicker">
                                <input class="form-control" size="16" type="text" value="" readonly>
                                <span class="add-on"><i class="icon-remove"></i></span>
                                <span class="add-on"><i class="icon-calendar"></i></span>
                            </div>--%>
                           <div  id="datetimepicker" class="input-group date form_date width300 pull-left" data-date="1993-09-16" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                <input class="form-control" size="16" type="text" value="" readonly value="2012-04-19">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                            <input type="hidden" id="dtp_input2" value="" /><br/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left">
                            <span class="inline-block width120">宗 教</span>
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control width300 pull-left" id="religion" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left">
                            <span class="inline-block width120">教 育</span>
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control pull-left width300" id="education" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left">
                            <span class="inline-block width120">交友宣言</span>
                        </label>
                        <div class="col-sm-5">
                            <textarea class="form-control width300 pull-left" id="declaration" rows="3"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left">
                            <span class="inline-block width120">年收入</span>
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control width300 pull-left">
                                <option>50,000-100,000</option>
                                <option>100,000-500,000</option>
                                <option>500,000 Above</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label pull-left">
                            <span class="inline-block width120">婚恋状态</span>
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control width300 pull-left">
                                <option>单身</option>
                                <option>已婚</option>
                                <option>离异</option>
                                <option>恋爱</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8 col-md-8">
                            <button class="btn btn-info" type="button">保 存</button>
                        </div>
                    </div>
                </form>
            </div>
            <%--心情--%>
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
                        <div class="tabbable" id="tabs-295323">
                            <ul class="nav nav-tabs">
                                <li class="active" id="myLogTab">
                                    <a href="#panel-324017" data-toggle="tab">我的日志</a>
                                </li>
                                <li id="friendsLogTab">
                                    <a href="#panel-8940" data-toggle="tab">朋友的日志</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <%--我的日志 start--%>
                        <div class="tab-pane active" id="panel-324017" style="height: 100%;">
                            <%--创建日志 --%>
                            <div class="row" style="margin-top: 5px;margin-bottom: 3px;">
                                <div  style="margin-left:85%;">
                                    <button type="button" id="createMyLog"  class="btn btn-info" data-toggle="modal" data-backdrop="" autocomplete="off" data-target="#createMyLogDialog">
                                        <spring:message code="createLog" text="新建日志"/>
                                    </button>
                                </div>
                            </div>

                            <div id="myLogContentDiv">
                            </div>
                                <%--我的日志分页--%>
                            <ul id="myLogPagnationDiv"></ul>
                        </div>
                        <%--朋友日志  start--%>
                        <div class="tab-pane" id="panel-8940">
                            <div id="myFriendsLogContentDiv">
                            </div>
                            <%--我的日志分页--%>
                            <ul id="myFriendsLogPagnationDiv"></ul>
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
            <div class="tab-pane" id="panel-tabs6">
                <p>
                   群组
                </p>
            </div>
            <div class="tab-pane" id="panel-tabs7">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        Mariki的留言板
                        <div style="margin-left:85%;">
                            <button type="button" id="createMessage" class="btn btn-info" data-toggle="modal" data-backdrop="" autocomplete="off" data-target="#createMessageDialog">
                                留言
                            </button>
                        </div>
                    </div>
                    <ul class="list-group" id="myMessageContentDiv">
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
                    <%--我的留言分页--%>
                    <ul id="myMessagePagnationDiv"></ul>
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
                    <h4 class="modal-title" id="myModalLabel"><spring:message code="newLog" text="新建日志"/></h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="blogForm">
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logTitle" class="col-sm-2 control-label "><span class="inline-block width110">
                                    <spring:message code="logTitle" text="日志标题"/>
                                </span></label>
                                <span class="inline-block width280" style="margin-left: 5px;">
                                    <input  class="form-control" id="logTitle" name="logTitle" placeholder="<spring:message code="logTitle" text="日志标题"/>">
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10 float-left">
                            <label for="logType" class="col-sm-2 control-label"><span class="inline-block width110">
                                <spring:message code="logType" text="日志分类"/>
                            </span></label>
                            <span class="inline-block width280" style="margin-left: 5px;">
                                <select id="logType" class="form-control">
                                </select>
                            </span>
                            </div>
                            <div style="height: 34px;line-height: 34px;" class="pull-left">
                                <a href="javascript:void(0)" id="addTypeHref" class="center"><spring:message code="addLogType" text="添加分类"/></a>
                            </div>
                            <div class="width250 float-left displayNone" id="addTypeDiv">
                                <input class="col-md-2 form-control width110 float-left" id="addTypeInput" placeholder="<spring:message code="typeName" text="分类名称"/>">
                                <button type="button" class="btn btn-primary float-left margin-left-5px" id="addTypeSaveBtn">
                                    <spring:message code="save" text="保存"/>
                                </button>
                                <button type="button" class="btn btn-default float-left margin-left-5px" id="addTypeCloseBtn">
                                    <spring:message code="cancel" text="取消"/>
                                </button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logTags" class="col-sm-2 control-label "><span class="inline-block width110">
                                    <spring:message code="logTags" text="日志标签"/>
                                </span></label>
                                <span class="inline-block width280" style="margin-left: 5px;">
                                    <input  class="form-control" id="logTags" placeholder="<spring:message code="logTags" text="日志标签"/>">
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                 <label for="privilege" class="col-sm-2 control-label"><span class="inline-block width110">
                                     <spring:message code="logPrivilege" text="权 限"/>
                                 </span></label>
                                 <span class="inline-block width280" style="margin-left: 5px;">
                                 <span class="inline-block text-span"><input type="radio" id="privilege" name="privilege" checked="checked" value="0" style="margin-right: 5px;margin-top: 3px;"></span><span class="inline-block text-span">全部人可见</span>
                                 <span class="inline-block text-span margin-left-10px"><input type="radio" id="privilege2" name="privilege" value="1" style="margin-right: 5px;margin-top: 3px;"></span><span class="inline-block text-span">仅自己可见</span>
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logContent" class="col-sm-2 control-label float-left"><span class="inline-block width110">
                                    <spring:message code="logContent" text="日志内容"/>
                                </span></label>
                                <div class="float-left" style="margin-left: 5px;">
                                    <textarea rows="5" id="logContent" name="logContent" class="width280"></textarea>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="closeCreateBlogModelBtn" class="btn btn-default" data-dismiss="modal"><spring:message code="close" text="关闭"/></button>
                    <button type="button" id="saveMyBlogBtn" name="saveMyBlogBtn" class="btn btn-primary"><spring:message code="save" text="保存"/></button>
                </div>
            </div>
        </div>
    </div>

    <%--留言弹出框 --%>
    <div class="modal fade" id="createMessageDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="messageModalLabel">我要留言</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-md-10">
                                <label for="logContent" class="col-sm-2 control-label float-left"><span class="inline-block width110">
                                    留言内容
                                </span></label>
                                <div class="float-left" style="margin-left: 5px;">
                                    <textarea rows="5" id="messageContent" class="width280"></textarea>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="closeCreateMessageModelBtn" class="btn btn-default" data-dismiss="modal"><spring:message code="close" text="关闭"/></button>
                    <button type="button" id="saveMessageBtn" name="saveMyMessageBtn" class="btn btn-primary"><spring:message code="save" text="保存"/></button>
                </div>
            </div>
        </div>
    </div>
<%--日志评论--%>
    <div class="modal fade" id="commentFriendBlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">评论</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal margin-left-20px " id="commentForm">
                        <div class="form-group">
                           <label for="logContent" class="control-label">评论内容</label>
                           <textarea rows="5" name="commentContent" id="commentContent" class="form-control" style="width: 90%;"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="closeCommentBtn" class="btn btn-default" data-dismiss="modal"><spring:message code="close" text="关闭"/></button>
                    <button type="button" id="saveCommentBtn" name="saveMyBlogBtn" data-loading-text="<spring:message code="saving" text="保存中..."/>"  class="btn btn-primary"><spring:message code="save" text="保存"/></button>
                </div>
            </div>
        </div>
    </div>
    <%--更换头像--%>
    <div class="modal fade" id="changeHeadPhoto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="changeHeadPhotoLabel">更换头像</h4>
                </div>
                <div class="modal-body">
                   <form class="form-horizontal" id="headPhotoForm" style="height: 370px;">
                       <div class="form-group" style="margin:5px 15px;">
                           <input type="file" class="file" id="changeHeadPhotoInput" multiple name="headPhoto">
                          <%-- <div id="errorBlock" class="help-block"></div>--%>
                       </div>
                   </form>
                </div>
                <div class="modal-footer" style="display: none;">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="closeHeadPhotoBtn">关闭</button>
                    <button type="button" class="btn btn-primary" data-loading-text="保存中..." id="saveHeadPhotoBtn">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%--用户id--%>
<input id="userId" name="userId" value="${userInfo.userId}">
</body>
</html>
<%--更换头像JS--%>
<script type="text/javascript">
  $(function () {
      //加载头像失败 使用默认的图片
      $("#headPhoto").error(function(){
          $(this).attr("src",path+"/common/images/140x140.jpg");
      });

      $("#changeHeadPhotoInput").fileinput({
          "uploadUrl": path + "/userInfo/changeHeadPhoto",
          'showPreview': true,
          "allowedFileTypes": ['image'],
          'allowedFileExtensions': ['jpg', 'png', 'gif'],
          /*'elErrorContainer': '#errorBlock',*/
          "maxFileCount": 1,
          "maxFileSize": 3 * 1024,//上传限制3M
          uploadExtraData: function () {
              return {
                  "userId": $("#userId").val()
              }
          }
      });
      $('#changeHeadPhotoInput').on('fileuploaded', function (event, data, previewId, index) {
          $("#changeHeadPhotoInput").fileinput("clear");
          $.confirm({
              title: "",
              content: uploadMsg.saveSuccess,
              autoClose: 'confirm|1000',
              cancelButton: false,
              confirm:function () {
                  $("#closeHeadPhotoBtn").click();
              }
          });
          $("#headPhoto").attr("src",path+data.response.imagePath+"?"+new Date().getTime());
      });
  })
</script>
