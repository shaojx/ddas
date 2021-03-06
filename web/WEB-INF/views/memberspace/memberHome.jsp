<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
<%
  String path=request.getContextPath();
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>HomeIndex</title>
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet">
    <link href="<%=path%>/common/bxslider/css/style.css" rel="stylesheet">
    <link href="<%=path%>/business/common/css/common.css" rel="stylesheet"/>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/business/login/language/${local}.js"></script>
    <link rel="stylesheet" href="<%=path%>/common/jquery-confirm/jquery-confirm.min.css">
    <script type="text/javascript" src="<%=path%>/common/jquery-confirm/jquery-confirm.min.js"></script>
    <%--引入自定义样式--%>
    <link href="<%=path%>/business/common/css/leftContent.css" rel="stylesheet"/>
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
    <%--照片--%>
    <script type="text/javascript" src="<%=path%>/common/layer/js/layer.js"></script>
    <script type="text/javascript" src="<%=path%>/business/memberspace/language/${local}.js"></script>
    <script type="text/javascript" src="<%=path%>/business/memberspace/js/memberSpace.js"></script>
    <script type="text/javascript" src="<%=path%>/business/index/index.js"></script>
</head>
<body style="width: 100%;height: 100%;">
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">
    <img src="<%=path%>/common/images/home_bg.png" height="100%" width="100%"/>
</div>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
     <%--   <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>--%>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="<%=path%>/index/gotoIndex"><spring:message code="index" text="首页"></spring:message> </a></li>
                <li id="mySpaceNav"><a href="<%=path%>/myspace/gotoIndex"><spring:message code="mySpace" text="我的空间"></spring:message></a></li>
                <li><a href="javascript:void(0);"id="friendsNavigation"><spring:message code="friends" text="我的好友"></spring:message></a></li>
                <li><a href="javascript:void(0);" id="levelVipNavigation"><spring:message code="upgrade" text="升级"></spring:message></a></li>
                <li><a href="javascript:void(0);" id="payCenterNavigation"><spring:message code="recharge" text="充值"></spring:message></a></li>
                <li><a href="javascript:void(0);" id="giftNavigation"><spring:message code="gift" text="礼物"></spring:message></a></li>
            </ul>
            <%--语言条--%>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<%=path%>/index/gotoIndex?language=zh_CN">
                        <spring:message code="chinese" text="中文"></spring:message>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/index/gotoIndex?language=en_US">
                        <spring:message code="english" text="英文"></spring:message>
                    </a>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li id="logoutBtn"><a href="javascript:void(0)"><spring:message code="logout" text="退出"></spring:message></a></li>
                <li><a href="#"><i class="fa fa-reddit"></i></a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
  <header>

  </header>
  <section>
            <div class="row bg-white">
            <%--left content--%>
            <div class="col-md-2">
                <div class="margin-top-10px">
                    <img alt="120x120" class="img-rounded width120 height120" src="${memberInfo.headPhotoUrl}" id="headPhoto"/>
                    <div style="text-align: center;"><a style="font-size: larger;margin-left: -40px;" href="javascript:void(0);">${memberInfo.userName}</a></div>
                    <div style="height: 30px;margin-top: 10px;">
<%--                        <img src="/common/images/golds_img.jpg">
                        <span style="margin-left: 5px;"><spring:message code="gold" text="金币"></spring:message>:</span>
                        <span style="color:#FF471F">${userInfo.userCoin}</span>--%>
                    </div>
                </div>
            <ul class="nav nav-stacked  nav-pills" id="leftContent">
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="friendHomeBar"><img src="/common/images/space.png"><spring:message code="personalSpace" text="个人空间"></spring:message></a>
                </li>
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="liveHomeBar"><img src="/common/images/live.png"><spring:message code="liveSpace" text="直播间"></spring:message></a>
                </li>
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="addFriendLeftBar"><img src="/common/images/add.gif"><spring:message code="addFriend" text="加为好友"></spring:message></a>
                </li>
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="sendEmailLeftBar" data-toggle="modal" data-backdrop="" autocomplete="off" data-target="#createEmailDialog"><img src="/common/images/mail.gif"><spring:message code="emailTo" text="给他发信"></spring:message></a>
                </li>
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="rechargeLeftBar"><img src="/common/images/chong.gif"><spring:message code="recharge" text="充值"></spring:message></a>
                </li>
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="sendGiftLeftBar" ><img src="/common/images/ico_hy_gift.jpg"><spring:message code="gift" text="礼物"></spring:message></a>
                </li>
                <li>
                    <a href="javascript:void (0);" data-memberid="${memberInfo.userId}" id="levelVipLeftBar"><img src="/common/images/n_left_shengji.jpg"><spring:message code="upgrade" text="升级"></spring:message></a>
                </li>
            </ul>
        </div>
            <%--center --%>
            <div class="col-md-8">
                <div class="carousel slide" id="carousel-188000">
                    <ol class="carousel-indicators">
                        <li class="active" data-slide-to="0" data-target="#carousel-188000">
                        </li>
                        <li data-slide-to="1" data-target="#carousel-188000">
                        </li>
                        <li data-slide-to="2" data-target="#carousel-188000">
                        </li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img alt="" src="/common/images/logo1.jpg" />
                            <div class="carousel-caption">
                                <h4>
                                    First Thumbnail label
                                </h4>
                                <p>
                                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                </p>
                            </div>
                        </div>
                        <div class="item">
                            <img alt="" src="/common/images/logo2.jpg" />
                            <div class="carousel-caption">
                                <h4>
                                    Second Thumbnail label
                                </h4>
                                <p>
                                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                </p>
                            </div>
                        </div>
                        <div class="item">
                            <img alt="" src="/common/images/logo3.jpg" />
                            <div class="carousel-caption">
                                <h4>
                                    Third Thumbnail label
                                </h4>
                                <p>
                                    Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                </p>
                            </div>
                        </div>
                    </div> <a class="left carousel-control" href="#carousel-188000" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-188000" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>

            <%--center panel--%>
            <%--iframe start--%>
            <iframe id="content_iframe" src="<%=path%>/memberspace/getMyspceContent" style="width: 100%;height:900px;overflow: hidden;border: 0;">
            </iframe>
            <%--iframe end--%>
          </div>
            <%--right panel--%>
            <div class="col-md-2 sidebar-gutter">
                <aside>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title"><spring:message code="recommend"></spring:message></h3>
                        <div class="widget-container" id="recommendContentDiv">
                        </div>
                    </div>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title">Recent visitor</h3>
                        <div class="widget-container" id="recentVisitorContentDiv">
                    </div>
                </aside>
            </div>
            </div>
</section>
</div><!-- /.container -->

<%--创建邮件弹出框 --%>

<div class="modal fade" id="createEmailDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <input type="hidden" id="friendId">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabeTitle"><spring:message code="createEmail" text="新建邮件"/></h4>
            </div>
            <div class="modal-body">
                <div role="tabpanel" class="tab-pane active" id="CreateEmail">
                    <textarea rows="5" id="emailContent" style="margin: 0px; height: 300px; width: 550px;"></textarea>
                    <div class="row margin-top-10px">

                    </div>
                </div>
                <p id="vipTip" class="bg-danger" style="height: 30px;line-height: 30px;margin-top: 10px;display: none;">
                    <spring:message code="upgradeTip" text="Tip:已达到今天的发送上限!想使用更多，赶紧"></spring:message>
                    <a href="javascript:void(0);" id="toVip"> <spring:message code="upgradeVip" text="升级为会员"></spring:message></a><spring:message code="upgradeLast" text="吧!"></spring:message>
                </p>
            </div>
            <div class="modal-footer">
                <label class="control-label pull-left margin-left-20px" id="friendLabel">
                    <span class="inline-block" style="height: 30px;line-height: 30px;"><spring:message code="sendTo" text="发送给"/>:</span>
                </label>
                <label id="friendList" class="form-control width120 pull-left margin-left-10px text-center">${memberInfo.userName}</label>
                <button type="button" class="btn btn-default" id="closeModel" data-dismiss="modal"><spring:message code="close" text="关闭"/></button>
                <button type="button" class="btn btn-primary" id="sendEmailBtn"><spring:message code="save" text="保存"/></button>
            </div>
        </div>
    </div>
</div>

<%--访问的用户id--%>
<input type="hidden" id="memberId" name="memberId" data-name="${memberInfo.userName}" value="${memberInfo.userId}">

<script src="<%=path%>/common/bxslider/js/jquery.bxslider.js"></script>
<script src="<%=path%>/common/mooz.scripts.min.js"></script>
<script type="text/javascript" src="<%=path%>/common/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/common/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path%>/common/bootstrap-datetimepicker/js/datePickerLocales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript">
  $('.form_date').datetimepicker({
    language:  'zh-CN',
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
  });
</script>
</body>
</html>
