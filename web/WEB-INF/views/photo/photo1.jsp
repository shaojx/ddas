<%--
  Created by IntelliJ IDEA.
  User: liuchen6
  Date: 2016/6/29
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
	String path=request.getContextPath();
%>
<head>
	<title>PhotoLikeQQkongjian</title>
	<script src="<%=path%>/common/jquery/jquery.js"></script>
	<script src="<%=path%>/common/layer/js/layer.min.js"></script>
<%--	<style>
		html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
		a,a:hover{ text-decoration:none;}
		pre{font-family:'微软雅黑'}
		.box{padding:20px; background-color:#fff; margin:50px 100px; border-radius:5px;}
		.box a{padding-right:15px;}
		#about_hide{display:none}
		.layer_text{background-color:#fff; padding:20px;}
		.layer_text p{margin-bottom: 10px; text-indent: 2em; line-height: 23px;}
		.button{display:inline-block; *display:inline; *zoom:1; line-height:30px; padding:0 20px; background-color:#56B4DC; color:#fff; font-size:14px; border-radius:3px; cursor:pointer; font-weight:normal;}
		.imgs img{width:300px;padding:0 30px 30px;}
	</style>--%>
</head>
<body>
<%--<style>
	ul#bcty365_nav{padding-left:50px; margin-bottom:10px; border-bottom:2px solid #ccc; overflow:hidden; _zoom:1;}
	ul#bcty365_nav li{float:left; display:inline; margin:10px;}
	ul#bcty365_nav li a{display:block;color:#000000; font-size:16px;}
	ul#bcty365_nav li a,#wimoban_p,#wimoban_p a{ font-family:"微软雅黑";}
	ul#bcty365_nav li a:hover,#wimoban_p a:hover{color:red;}
</style>--%>

	<div id="imgs" class="imgs">
		<img src="<%=path%>/common/images/layer/1.jpg" layer-pname="站长素材 - 1">
		<img src="<%=path%>/common/images/layer/2.jpg" layer-pname="站长素材 - 2">
		<img src="<%=path%>/common/images/layer/3.jpg" layer-pname="站长素材 - 3">
		<img src="<%=path%>/common/images/layer/4.jpg" layer-pname="站长素材 - 4">
	</div>

<script>
	;!function(){
		layer.use('extend/layer.ext.js', function(){
			//初始加载即调用，所以需放在ext回调里
			layer.ext = function(){
				layer.photosPage({
					html:'<div style="padding:20px;">这里传入自定义的html<p>相册支持左右方向键，支持Esc关闭</p><p>另外还可以通过异步返回json实现相册。更多用法详见官网。</p><p>'+ unescape("B5教程网www.bcty365.com") +'</p><p id="change"></p></div>',
					title: '快捷模式-获取页面元素包含的所有图片',
					id: 100, //相册id，可选
					parent:'#imgs'
				});
			};
		});
	}();
</script>
<%--<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">--%>
</div>
</body>
</html>
