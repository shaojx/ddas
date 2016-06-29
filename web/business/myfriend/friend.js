/**
 * Created by liuchen6 on 2016/6/29.
 */
(function($) {
	$(function() {
		$("#myFriend").click(function () {
			$("#content_iframe").attr("src", "/userFriend/myFriend");
		});
	});
})(jQuery);
