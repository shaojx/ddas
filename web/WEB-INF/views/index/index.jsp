<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<%
    String path=request.getContextPath();
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Index</title>
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
    <script type="text/javascript" src="<%=path%>/common/layer/js/layer.js"></script>
    <script type="text/javascript" src="<%=path%>/business/index/language/${local}.js"></script>
    <script type="text/javascript" src="<%=path%>/business/index/index.js"></script>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="<%=path%>/index/gotoIndex"><spring:message code="index" text="首页"></spring:message> </a></li>
                <li><a href="<%=path%>/myspace/gotoIndex"><spring:message code="mySpace" text="我的空间"></spring:message></a></li>
                <li><a href="#contact"><spring:message code="friends" text="我的好友"></spring:message></a></li>
                <li><a href="#contact"><spring:message code="upgrade" text="升级"></spring:message></a></li>
                <li><a href="about.html"><spring:message code="recharge" text="充值"></spring:message></a></li>
                <li><a href="about.html"><spring:message code="gift" text="礼物"></spring:message></a></li>
            </ul>
            <%--语言条--%>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<%=path%>/index/gotoIndex?language=zh_CN">中 文</a></li>
                <li><a href="<%=path%>/index/gotoIndex?language=en_US">英 文</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="logoutBtn"><a href="javascript:void(0)"><spring:message code="logout" text="退出"></spring:message></a></li>
                <li><a href="#"><i class="fa fa-reddit"></i></a></li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" id="searchUserName" class="form-control" placeholder=<spring:message code="search" text="搜索"></spring:message>>
                </div>
                <button type="button" id="searchUserBtn" class="btn btn-default"><spring:message code="search" text="搜索"></spring:message></button>
            </form>


        </div>
        <!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <header>

    </header>
    <section>
        <div class="row">
            <%--left content--%>
            <div class="col-md-2">
                <div>
                    <img alt="120x120" class="img-rounded width120 height120" src="${userInfo.headPhotoUrl}" id="headPhoto"/>
                    <div style="text-align: center;"><a style="font-size: larger;margin-left: -40px;" href="javascript:void(0);">${userInfo.userName}</a></div>
                    <div style="height: 30px;margin-top: 10px;">
                        <img src="/common/images/golds_img.jpg">
                        <span style="margin-left: 5px;"><spring:message code="gold" text="金币"></spring:message>:</span>
                        <span style="color:#FF471F">${userInfo.userCoin}</span>
                    </div>
                </div>

                <ul class="nav nav-stacked  nav-pills" id="leftContent">
                    <li>
                        <a href="javascript:void (0);" id="payCenter"><img src="/common/images/golds_img.jpg"><spring:message code="recharge" text="充值"></spring:message></a>
                    </li>
                    <li>
                        <a href="javascript:void (0);" id="levelVip"><img src="/common/images/n_left_shengji.jpg"><spring:message code="upgrade" text="升级"></spring:message></a>
                    </li>
                    <li>
                        <a href="javascript:void (0);" id="emailBox"><img src="/common/images/mail.gif"><spring:message code="email" text="邮件"></spring:message>(0)</a>
                    </li>
                    <li>
                        <a href="javascript:void (0);" id="gift" ><img src="/common/images/n_left_gift.jpg"><spring:message code="gift" text="礼物"></spring:message>(0)</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" id="myFriend"><img src="/common/images/friends.gif"><spring:message code="myFriend" text="我的好友"></spring:message></a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" id="myPhoto"><img src="/common/images/album.png"><spring:message code="album" text="相册"></spring:message></a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" id="myBlog"><img src="/common/images/n_left_rizhi.jpg"><spring:message code="blog" text=""></spring:message></a>
                    </li>
                    <%--                <li>
                                        <a href="#"><img src="/common/images/n_left_fenxiang.jpg">分享(目前没用)</a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="/common/images/n_left_mood.jpg">打招呼(3)</a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="/common/images/n_left_game.jpg">游戏开发ing</a>
                                    </li>--%>

                </ul>
            </div>

            <%--center content--%>
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

                <%--iframe start--%>
                <iframe id="content_iframe" src="<%=path%>/index/indexContent" style="width: 100%;height:900px;overflow: hidden;border: 0;">
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
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                    <!-- sidebar-widget -->
                    <div class="sidebar-widget">
                        <h3 class="sidebar-title"><spring:message code="recentVisitor"></spring:message></h3>
                        <div class="widget-container">
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                            <article class="widget-post">
                                <div class="post-image">
                                    <a href="post.html"><img src="/common/images/90x60-1.jpg" alt=""></a>
                                </div>
                                <div class="post-body">
                                    <h2><a href="post.html">Name...</a></h2>
                                    <div class="post-meta">
                                      <span><div><a href="#" class="dazhaohu" rel="54"><img
                                              src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54"
                                                                                                 class="hy"><img
                                              src="/common/images/addfriends.gif"></a></div></span>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </section>
</div><!-- /.container -->

<footer class="footer">
</footer>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/bxslider/js/jquery.bxslider.js"></script>
<script src="/common/mooz.scripts.min.js"></script>
</body>
</html>
