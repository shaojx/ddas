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
  <link href="../common/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Custom styles for this template -->
  <link href="../common/css/jquery.bxslider.css" rel="stylesheet">
  <link href="../common/css/style.css" rel="stylesheet">
  <link href="../common/css/bootstrap.min.css" rel="stylesheet" media="screen">
  <link href="../common/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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
        <li class="active"><a href="../index.jsp">首页</a></li>
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
          <img alt="140x140" src="../common/images/140x140.jpg" />
          <div><a>Mariki</a></div>
          <div class="yue"><img src="../common/images/golds_img.jpg">&nbsp;&nbsp;&nbsp;<span>金币：</span><span style="color:#FF471F">0</span></div>
        </div>

        <ul class="nav nav-stacked  nav-pills">
          <li>
            <a href="#"><img src="../common/images/golds_img.jpg"> 充值中心</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/n_left_shengji.jpg"> 升级会员</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/mail.gif">邮箱(0)</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/n_left_gift.jpg">礼物(0)</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/friends.gif">我的朋友</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/album.png">相册</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/n_left_rizhi.jpg">日志</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/n_left_fenxiang.jpg">分享(目前没用)</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/n_left_mood.jpg">打招呼(3)</a>
          </li>
          <li>
            <a href="#"><img src="../common/images/n_left_game.jpg">游戏开发ing</a>
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
              <img alt="" src="../common/images/logo1.jpg" />
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
              <img alt="" src="../common/images/logo2.jpg" />
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
              <img alt="" src="../common/images/logo3.jpg" />
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
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
                          <div class="caption">
                            <h4>caption/文字</h4>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
                          <div class="caption">
                            <h4>caption/文字</h4>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
                          <div class="caption">
                            <h4>caption/文字</h4>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
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
                          <img src="../common/images/140x140.jpg" alt="140x140">
                          <div class="caption">
                            <h4>caption/文字</h4>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
                          <div class="caption">
                            <h4>caption/文字</h4>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
                          <div class="caption">
                            <h4>caption/文字</h4>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-6 col-md-3">
                        <div class="thumbnail">
                          <img src="../common/images/140x140.jpg" alt="140x140">
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
            <div class="tab-pane" id="panel-tabs4">

              <div class="media">
                <a href="#" class="pull-left"><img src="../common/images/140x140.jpg" alt='' class="img-thumbnail"/></a>
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
      <div class="col-md-2 sidebar-gutter">
        <aside>
          <!-- sidebar-widget -->
          <div class="sidebar-widget">
            <h3 class="sidebar-title">Recommend</h3>
            <div class="widget-container">
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
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
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
                  </div>
                </div>
              </article>
              <article class="widget-post">
                <div class="post-image">
                  <a href="post.html"><img src="../common/images/90x60-1.jpg" alt=""></a>
                </div>
                <div class="post-body">
                  <h2><a href="post.html">Name...</a></h2>
                  <div class="post-meta">
                    <span><div><a href="#" class="dazhaohu" rel="54"><img src="../common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="#" rel="54" class="hy"><img src="../common/images/addfriends.gif"></a></div></span>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../common/js/bootstrap.min.js"></script>
<script src="../common/js/jquery.bxslider.js"></script>
<script src="../common/js/mooz.scripts.min.js"></script>
<script type="text/javascript" src="../common/js/jquery/jquery.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../common/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../common/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../common/js/datePickerLocales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
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
