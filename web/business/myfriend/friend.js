/**
 * Created by liuchen6 on 2016/6/29.
 */
var CONST_FRIEND = "1";
var CONST_APPLY_FRIEND = "0";
var userFriendCondition = {
	pageNo:1,
	friendNameCondition:"",
	status:"1",
};//查询条件初始化

$(function() {
	/**
	 *我的朋友点击事件
	 *@return
	 *@Author liuchen6
	 *@Date 2016/7/4 15:16
	 *@since JDK1.7
	 */
	$("#myFriendTab").click(function () {
		userFriendCondition = {
			pageNo:1,
			friendNameCondition:"",
			status:CONST_FRIEND,
		};//查询条件初始化
		$("#searchName").val("");
		getMyFriendData(userFriendCondition);
	});

	/**
	 *左侧好友点击事件
	 *@return
	 *@Author liuchen6
	 *@Date 2016/7/4 15:17
	 *@since JDK1.7
	 */
	$("#myFriend").click(function () {
		$("#content_iframe").attr("src", "/userFriend/myFriend");
	});

	/**
	 *查询好友按钮点击事件
	 *@Author liuchen6
	 *@Date 2016/7/4 15:20
	 *@since JDK1.7
	 */
	$("#searchFriend").click(function () {
		userFriendCondition.pageNo = 1;
		userFriendCondition.friendNameCondition = $("#searchName").val().trim();
		getMyFriendData(userFriendCondition);
	});

	/**
	 * 同意添加好友
	 *@Author liuchen6
	 *@Date 2016/7/4 15:20
	 *@since JDK1.7
	 */
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

	/**
	 * 同意添加好友的点击事件
	 *@Author liuchen6
	 *@Date 2016/7/4 15:21
	 *@since JDK1.7
	 */
	$("#allowAdd").click(function () {
		allowAddFriend();
	});

	/**
	 * 我的好友申请列表
	 *@Author liuchen6
	 *@Date 2016/7/4 15:43
	 *@since JDK1.7
	 */
	$("#myFriendApplyTab").click(function () {
		userFriendCondition = {
			pageNo:1,
			friendNameCondition:"",
			status:CONST_APPLY_FRIEND,
		};//查询条件初始化
		getMyFriendApplyData(userFriendCondition);
	});

	$("#saveMyFriendGroup").click(function () {
		var userFriendGroupName = $("#userFriendGroupName").val();
		if(userFriendGroupName == "") {
			alert("好友分组名称不能为空");
			return;
		}
		$.ajax({
			url:path+"/userGroup/save",
			type:"POST",
			data:{
				"groupName":userFriendGroupName,
			},
			dataType:"json",
			success:function(){
				alert("success!");
			}
		})
	})
});

/**
 * 获取我的好友当前页的数据
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
				"status":condition.status,
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
				userFriendCondition.status = CONST_FRIEND;
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
function initMyFriendData(data) {
	var myFriendDivTemplete = '<div class="panel panel-default width350 pull-left">' +
		'<img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">' +
		'<div class="inline-block center" style="height: 50px;">' +
		'<div style="width: 270px;">' +
		'<span class="text-muted inline-block" style="margin-top: 5px;">${friendName}</span>' +
		'<span class="glyphicon glyphicon-remove pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>' +
		'<span class="glyphicon glyphicon-envelope pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;color: #d9d9d1;"></span>' +
		'</div>' +
		'<div class="width250" style="margin-top: 10px;">' +
		'<select class="form-control width80 input-sm">' +
		'<option>China</option>' +
		'<option>U.S.A</option>' +
		'<option>TaiWan</option>' +
		'<option>HuoXing</option>' +
		'<option>Star</option>' +
		'</select>' +
		'</div>' +
		'</div>' +
		'</div>';
	var list = data.dataList;
	for (var index in list) {
		var _data = list[index];
		var _replace = myFriendDivTemplete.replace("${basePath}", path).replace("${friendName}", _data.friendName);
		$("#myFriendContentDiv").append(_replace);
	}
}

/**
 * 获取我的好友申请页的数据
 * @param pageNo 分页
 */
function getMyFriendApplyData(condition){
	$("#myFriendApplyContentDiv").html("");//清空数据
	if(condition.pageNo){
		$.ajax({
			url:path+"/userFriend/queryRecordsByPage",
			type:"POST",
			data:{
				"currentPage":condition.pageNo,
				"pageSize":4,
				"friendNameCondition":condition.friendNameCondition,
				"status":condition.status,
			},
			dataType:"json",
			success:function(data){
				if(data.dataList.length < 1) {
					$("#myFriendApplyPaginationDIV").html("");//清空页码
					return; //如果没有查询到数据，就不分页
				}
				if(condition.pageNo==1){//如果是第一页，则初始化分页
					initMyFriendApplyPagination(data);
				}
				initMyFriendApplyData(data);
			}
		})
	}
}

/**
 * 初始化我的好友申请列表的分页条
 * @param pageData
 */
function initMyFriendApplyPagination(pageData) {
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
				userFriendCondition.status = CONST_APPLY_FRIEND;
				getMyFriendApplyData(userFriendCondition); //重新拉取数据
			}
		}
	}
	$("#myFriendPaginationApplyDIV").bootstrapPaginator(options);
}

/**
 * 初始化我的好友申请的数据
 * @param data
 */
function initMyFriendApplyData(data) {
	var myFriendApplyDivTemplete = '<div class="panel panel-default width350 pull-left margin-left-10px">'+
		'<img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">'+
		'<div class="inline-block center" style="height: 50px;">'+
		'<div style="width: 270px;">'+
		'<span class="text-muted inline-block pull-left margin-left-10px" style="margin-top: 5px;">${friendName}</span>'+
		'<span class="pull-right inline-block cursor-pointer" style="margin-left: 10px;margin-top: 5px;">'+
		'<a href="javascript:void(0)">拒绝</a>'+
		'</span>'+
		'<span class="pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;">'+
		'<a href="javascript:void(0)" id="allowAdd" name="allowAdd">同意</a>'+
		'</span>'+
		'</div>'+
		'<div class="width250 clear-both">'+
		'<select class="form-control width80 input-sm pull-left" style="margin-top: 10px;">'+
		'<option>China</option>'+
		'<option>U.S.A</option>'+
		'<option>TaiWan</option>'+
		'<option>HuoXing</option>'+
		'<option>Star</option>'+
		'</select>'+
		'</div>'+
		'</div>'+
		'</div>';
	var list = data.dataList;
	for (var index in list) {
		var _data = list[index];
		var _replace = myFriendApplyDivTemplete.replace("${basePath}", path).replace("${friendName}", _data.friendName);
		$("#myFriendApplyContentDiv").append(_replace);
	}
}
