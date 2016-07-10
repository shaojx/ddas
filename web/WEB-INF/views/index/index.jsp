<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <title>Index</title>
    <link href="<%=path%>/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/common/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <link href="<%=path%>/common/bxslider/css/jquery.bxslider.css" rel="stylesheet">
   <%-- <link href="<%=path%>/common/bxslider/css/style.css" rel="stylesheet">--%>
    <script src="<%=path%>/common/jquery/jquery.js"></script>
    <%--引入自定义样式--%>
    <link href="<%=path%>/business/common/css/leftContent.css" rel="stylesheet"/>
    <script type="text/javascript">
        var path = "<%=path%>";
    </script>
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
        <li><a href="<%=path%>/index/gotoIndex"><spring:message code="index"></spring:message> </a></li>
        <li><a href="<%=path%>/myspace/gotoIndex">我的空间</a></li>
        <li><a href="#contact">朋友圈</a></li>
        <li><a href="#contact">升级</a></li>
        <li><a href="about.html">充值</a></li>
        <li><a href="about.html">礼物</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a href="#"><i class="fa fa-reddit"></i></a></li>
      </ul>

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
                <img alt="140x140" src="/common/images/140x140.jpg" />
                <div><a>Mariki</a></div>
                <div class="yue"><img src="/common/images/golds_img.jpg">&nbsp;&nbsp;&nbsp;<span>金币：</span><span style="color:#FF471F">0</span></div>
            </div>

            <ul class="nav nav-stacked  nav-pills" id="leftContent">
                <li>
                    <a href="#"><img src="/common/images/golds_img.jpg">充值中心</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/n_left_shengji.jpg">升级会员</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/mail.gif">邮箱(0)</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/n_left_gift.jpg">礼物(0)</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/friends.gif">我的朋友</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/album.png">相册</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/n_left_rizhi.jpg">日志</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/n_left_fenxiang.jpg">分享(目前没用)</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/n_left_mood.jpg">打招呼(3)</a>
                </li>
                <li>
                    <a href="#"><img src="/common/images/n_left_game.jpg">游戏开发ing</a>
                </li>

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
          <iframe id="content_iframe" src="<%=path%>/index/indexContent" style="width: 800px;height:900px;overflow: hidden;border: 0;">
          </iframe>
          <%--iframe end--%>
        </div>
          <%--right panel--%>
          <div class="col-md-2 sidebar-gutter">
              <aside>
                  <!-- sidebar-widget -->
                  <div class="sidebar-widget">
                      <h3 class="sidebar-title">Recommend</h3>
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
                  <!-- sidebar-widget -->
                  <div class="sidebar-widget">
                      <h3 class="sidebar-title">Recent visitor</h3>
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
