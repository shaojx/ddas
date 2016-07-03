/**
 * Created by liuchen6 on 2016/6/29.
 */
var userFriendCondition = {
	pageNo:1,
	friendNameCondition:"",
};//查询条件初始化

$(function() {
	//我的朋友点击事件
	$("#myFriendTab").click(function () {
		var userFriendCondition = {
			pageNo:1,
			friendNameCondition:"",
		};//查询条件初始化
		$("#searchName").val("");
		getMyFriendData(userFriendCondition);
	});

	//左侧好友点击事件
	$("#myFriend").click(function () {
		$("#content_iframe").attr("src", "/userFriend/myFriend");
	});

	//查询好友按钮点击事件
	$("#searchFriend").click(function () {
		userFriendCondition.pageNo = 1;
		userFriendCondition.friendNameCondition = $("#searchName").val().trim();
		getMyFriendData(userFriendCondition);
	});

	function allowAddFriend(){
		$.ajax({
			url:path+"/userFriend/save",
			type:"POST",
			userFriend:{
				"friendId":"100",
				"groupId":"1",
			},
			dataType:"json",
			success:function(){
				alert("Success!");
			}
		})
	}

	//查询好友按钮点击事件
	$("#allowAdd").click(function () {
		allowAddFriend();
	});

});

/**
 * 获取当前页的数据
 * @param pageNo 分页
 */
function getMyFriendData(condition){
	$("#myFriendContentDiv").html("");//清空数据
	if(condition.pageNo){
		$.ajax({
			url:path+"/userFriend/queryRecordsByPage",
			type:"POST",
			data:{
				"currentPage":condition.pageNo,
				"pageSize":4,
				"friendNameCondition":condition.friendNameCondition,
			},
			dataType:"json",
			success:function(data){
				if(data.dataList.length < 1) {
					$("#myFriendPaginationDIV").html("");//清空页码
					return; //如果没有查询到数据，就不分页
				}
				if(condition.pageNo==1){//如果是第一页，则初始化分页
					initMyFriendPagination(data);
				}
				initMyFriendData(data);
			}
		})
	}
}
/**
 * 初始化分页条
 * @param pageData
 */
function initMyFriendPagination(pageData) {
	var pageIndex=pageData.currentPage;
	var totalPages=pageData.totalPages;
	var options = {
		alignment:"center",//居中显示
		currentPage: pageIndex,//当前页数
		totalPages: totalPages,//总页数 注意不是总条数
		bootstrapMajorVersion:3,
		onPageChanged: function(event,oldPage,newPage){
			if (oldPage==newPage) {
				return ;
			} else {
				userFriendCondition.pageNo = newPage;
				userFriendCondition.friendNameCondition = $("#searchName").val().trim();
				getMyFriendData(userFriendCondition); //重新拉取数据
			}
		}
	}
	$("#myFriendPaginationDIV").bootstrapPaginator(options);
}
/**
 * 初始化我的好友的数据
 * @param data
 */
function initMyFriendData(data){
	var myFriendDivTemplete = '<div class="panel panel-default width350 pull-left">'+
		'<img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">'+
		'<div class="inline-block center" style="height: 50px;">'+
		'<div style="width: 270px;">'+
		'<span class="text-muted inline-block" style="margin-top: 5px;">${friendName}</span>'+
		'<span class="glyphicon glyphicon-remove pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>'+
		'<span class="glyphicon glyphicon-envelope pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>'+
		'</div>'+
		'<div class="width250" style="margin-top: 10px;">'+
		'<select class="form-control width80 input-sm">'+
		'<option>China</option>'+
		'<option>U.S.A</option>'+
		'<option>TaiWan</option>'+
		'<option>HuoXing</option>'+
		'<option>Star</option>'+
		'</select>'+
		'</div>'+
		'</div>'+
		'</div>';
	var list=data.dataList;
	for(var index in list){
		var _data=list[index];
		var _replace = myFriendDivTemplete.replace("${basePath}", path).replace("${friendName}", _data.friendName);
		$("#myFriendContentDiv").append(_replace);
	}
}