/**
 * Created by liuchen6 on 2016/6/29.
 */
(function($) {
	//我的朋友点击事件
	$(function() {
		$("#myFriend").click(function () {
			$("#content_iframe").attr("src", "/userFriend/myFriend");
		});

	});
})(jQuery);
