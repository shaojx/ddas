<%--
  Created by IntelliJ IDEA.
  User: shaojunxiang
  Date: 2016/6/23
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Renda - clean blog theme based on Bootstrap</title>
  <!-- Bootstrap core CSS -->
  <link href="/common/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Custom styles for this template -->
  <link href="/common/css/jquery.bxslider.css" rel="stylesheet">
  <link href="/common/css/style.css" rel="stylesheet">
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
        <li class="active"><a href="index.jsp">首页</a></li>
        <li><a href="/friends/myHome">我的空间</a></li>
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
      <div class="col-md-2">
        <div>
          <img alt="140x140" src="/common/images/140x140.jpg" />
          <div><a>Mariki</a></div>
          <div class="yue"><img src="/common/images/golds_img.jpg">&nbsp;&nbsp;&nbsp;<span>金币：</span><span style="color:#FF471F">0</span></div>
        </div>

        <ul class="nav nav-stacked  nav-pills">
          <li>
            <a href="#"><img src="/common/images/golds_img.jpg"> 充值中心</a>
          </li>
          <li>
            <a href="#"><img src="/common/images/n_left_shengji.jpg"> 升级会员</a>
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
          <div class="tab-content">
            <div class="tab-pane active" id="panel-tabs1">
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
                <div class="col-md-3 column">
                  <img alt="140x140" src="/common/images/140x140.jpg" class="img-thumbnail" />
                  <p>
                    Name <a class="btn" href="#">加好友</a>
                  </p>
                </div>
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
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">日志分类之我的日志</a>
                      </div>
                      <div id="panel-element-113" class="panel-collapse in">
                        <div class="panel-body">
                          我的日志标题是这里
                          <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">日志分类之我的什么鬼</a>
                      </div>
                      <div id="panel-element-116" class="panel-collapse in">
                        <div class="panel-body">
                          我的日志标题是这里吗？是的
                          <div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：今天天气真好&nbsp;&nbsp;&nbsp;权限：自己可见&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>
                        </div>
                      </div>
                    </div>
                  </div>
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
            <div class="tab-pane" id="panel-tabs3">

              <div class="media">
                <a href="#" class="pull-left"><img src="/common/images/140x140.jpg" alt='' class="img-thumbnail"/></a>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="/common/images/addfriends.gif"></a></div></span>
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

  <div class="footer-socials">
    <a href="#"><i class="fa fa-facebook"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-instagram"></i></a>
    <a href="#"><i class="fa fa-google-plus"></i></a>
    <a href="#"><i class="fa fa-dribbble"></i></a>
    <a href="#"><i class="fa fa-reddit"></i></a>
  </div>

  <div class="footer-bottom">
    <i class="fa fa-copyright"></i> Copyright 2015. All rights reserved.<br>
    Theme made by <a href="http://www.moozthemes.com">MOOZ Themes</a>
  </div>
</footer>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/common/js/jquery/jquery.js"></script>
<script src="/common/js/bootstrap.min.js"></script>
<script src="/common/js/jquery.bxslider.js"></script>
<script src="/common/js/mooz.scripts.min.js"></script>
</body>
</html>
