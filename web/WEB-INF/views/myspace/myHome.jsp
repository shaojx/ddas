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
  <link rel="stylesheet" href="/common/css/font-awesome-4.6.3/css/font-awesome.min.css"/>
    <!-- Custom styles for this template -->
  <link href="/common/css/jquery.bxslider.css" rel="stylesheet">
  <link href="/common/css/style.css" rel="stylesheet">
  <link href="/common/css/bootstrap.min.css" rel="stylesheet" media="screen">
  <link href="/common/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
  <script src="/common/js/jquery/jquery.js"></script>
</head>
<body>

<%@include file="/business/common/header.jsp"%>

<div class="container">
  <header>

  </header>
  <section>
    <div class="row">
      <%@include file="/business/common/leftContent.jsp"%>
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

    <%@include file="/business/common/rightContent.jsp"%>
</div>
</section>
</div><!-- /.container -->

<footer class="footer">

</footer>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/common/js/bootstrap.min.js"></script>
<script src="/common/js/jquery.bxslider.js"></script>
<script src="/common/js/mooz.scripts.min.js"></script>
<script type="text/javascript" src="/common/js/jquery/jquery.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/common/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/common/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="/common/js/datePickerLocales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
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
