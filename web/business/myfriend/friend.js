/**
 * Created by liuchen6 on 2016/6/29.
 */
var CONST_FRIEND = "1";
var CONST_APPLY_FRIEND = "0";
var CONST_USE_PROPERTY_FRIEND = "1";
var userFriendCondition = {
	pageNo:1,
	friendNameCondition:"",
	status:"1",
};//查询条件初始化
var userFriendGroupData;

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
	 * 我的好友申请列表
	 *@Author liuchen6
	 *@Date 2016/7/4 15:43
	 *@since JDK1.7
	 */
	$("#myFriendApplyTab").click(function () {
		userFriendCondition = {
			pageNo:1,
			friendNameCondition:"",
			status:CONST_APPLY_FRIEND
		};//查询条件初始化
		getMyFriendApplyData(userFriendCondition);
	});

	/**
	 * 点击保存好友分组的事件
	 *@param
	 *@return
	 *@Author liuchen6
	 *@Date 2016/7/5 9:28
	 *@since JDK1.7
	 */
	$("#saveMyFriendGroup").click(function () {
		var userFriendGroupName = $("#userFriendGroupName").val();
		var userFriendGroupId = $("#userFriendGroupId").val();
		if(userFriendGroupName == "") {
			alert("好友分组名称不能为空");
			return;
		}
		$.ajax({
			url:path+"/userGroup/save",
			type:"POST",
			data:{
				"groupName":userFriendGroupName,
				"groupId":userFriendGroupId,
				"useProperty":CONST_USE_PROPERTY_FRIEND,
			},
			dataType:"json",
			success:function(){
				$("#closeAddGroupModel").click();
				alert("success!");
				$("#myFriendGroupTab").click(); //重新加载用户分组的数据
			}
		})
	})

	/**
	 * 管理好友分组的Tab的点击事件
	 *@param
	 *@return
	 *@Author liuchen6
	 *@Date 2016/7/5 9:29
	 *@since JDK1.7
	 */
	$("#myFriendGroupTab").click(function () {
		var friendGroupCondition = {
			pageNo:1,
			useProperty:CONST_USE_PROPERTY_FRIEND,
		};//查询条件初始化
		getMyFriendGroupData(friendGroupCondition);
	});

	/**
	 * 当添加或者编辑Group的Model框显示的时候，传数据到Model框里面去
	 *@Author liuchen6
	 *@Date 2016/7/5 15:28
	 *@since JDK1.7
	 */
	$('#createMyFriendGroupDialog').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget);// Button that triggered the modal
		var groupName = button.data('groupname'); // Extract info from data-* attributes
		var groupId = button.data('groupid'); // Extract info from data-* attributes
		var modal = $(this);
		modal.find('#userFriendGroupName').val(groupName);
		modal.find('#userFriendGroupId').val(groupId);

	})

	function loadUserFriendGroupData() {
		$.ajax({
			url:path+"/userGroup/queryRecordsByPage",
			type:"POST",
			data:{
				"currentPage":1,
				"pageSize":1000,
				"useProperty":CONST_USE_PROPERTY_FRIEND
			},
			dataType:"json",
			success:function(data){
				var list = data.dataList;
				userFriendGroupData = [];
				for (var index in list) {
					var _data = list[index];
					userFriendGroupData[_data.groupId] = {
						"groupId":_data.groupId,
						"groupName":_data.groupName
					};
				}
			}
		})
	}
	loadUserFriendGroupData();
});

/**
 * 获取我的好友当前页的数据
 * @param pageNo 分页
 */
function getMyFriendGroupData(condition){
	$("#myFriendGroupContentDiv").html("");//清空数据
	if(condition.pageNo){
		$.ajax({
			url:path+"/userGroup/queryRecordsByPage",
			type:"POST",
			data:{
				"currentPage":condition.pageNo,
				"pageSize":8,
				"useProperty":condition.useProperty
			},
			dataType:"json",
			success:function(data){
				if(data.dataList.length < 1) {
					$("#myFriendGroupPaginationDIV").html("");//清空页码
					return; //如果没有查询到数据，就不分页
				}
				if(condition.pageNo==1){//如果是第一页，则初始化分页
					initMyFriendGroupPagination(data);
				}
				initMyFriendGroupData(data);
			}
		})
	}
}

/**
 * 初始化分页条
 * @param pageData
 */
function initMyFriendGroupPagination(pageData) {
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
				var friendGroupCondition = {
					pageNo:1,
					useProperty:CONST_USE_PROPERTY_FRIEND
				};//查询条件初始化
				getMyFriendGroupData(friendGroupCondition);//重新拉取数据
			}
		}
	}
	$("#myFriendGroupPaginationDIV").bootstrapPaginator(options);
}

/**
 * 初始化我的好友分组的数据
 * @param data
 */
function initMyFriendGroupData(data) {
	var myFriendGroupDivTemplete = '<tr>'+
		'<th scope="row"><input type="checkbox" class="checkbox" name="types_checkbox"></th>'+
		'<td>groupNameValue</td>'+
		'<td>groupTimeValue</td>'+
		'<td><a href="javascript:void(0)" data-toggle="modal" data-backdrop="" data-groupid="groupIdValue" data-groupname="groupNameValue" autocomplete="off" data-target="#createMyFriendGroupDialog">编辑</a> | <a href="javascript:void(0)" data-groupid="groupIdValue" name="deleteFriendGroup">删除</a></td>'+
		'</tr>';
	var list = data.dataList;
	for (var index in list) {
		var _data = list[index];
		var _replace = myFriendGroupDivTemplete.replace(/groupNameValue/g, _data.groupName).replace(/groupIdValue/g, _data.groupId).replace(/groupTimeValue/g, _data.createdTime);
		$("#myFriendGroupContentDiv").append(_replace);
	}



	/**
	 *Group的A标签删除点击事件
	 *@Author liuchen6
	 *@Date 2016/7/5 15:38
	 */
	$("a[name='deleteFriendGroup']").click(function () {
		var userFriendGroupId = $(this).attr("data-groupid");
		$.ajax({
			url:path+"/userGroup/delete",
			type:"POST",
			data:{
				"groupId":userFriendGroupId
			},
			dataType:"json",
			success:function(){
				alert("success!");
				$("#myFriendGroupTab").click(); //重新加载用户分组的数据
			}
		})
	})
}

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
		'<select id="${ufId}" class="selectpicker form-control width80 input-sm">' +
		'</select>' +
		'</div>' +
		'</div>' +
		'</div>';
	var list = data.dataList;
	for (var index in list) {
		var _data = list[index];
		var _replace = myFriendDivTemplete.replace("${basePath}", path).replace("${friendName}", _data.friendName).replace("${ufId}", _data.ufId);
		$("#myFriendContentDiv").append(_replace);
		for(var obj in userFriendGroupData) {
			var option = "<option data-groupId=obj>"+userFriendGroupData[obj].groupName+"</option>";
			if(obj == _data.groupId) {
				var option = "<option selected>"+userFriendGroupData[obj].groupName+"</option>";
			}
			$("#"+ _data.ufId).prepend(option);
		}
		$("#"+ _data.ufId).change(function () {
			var groupId = $(this).children('option:selected').attr("data-groupId");
			var ufId = $(this).attr("id");
			$.ajax({//保存好友信息，主要针对好友分组的改变
				url:path+"/userFriend/save",
				type:"POST",
				data:{
					"ufId":ufId,
					"groupId":groupId
				},
				dataType:"json",
				success:function(){
					alert("Success!");
				}
			})
			alert(groupId);
		})
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
		'<a href="javascript:void(0)" data-ufId="ufIdValue"  name="refuseAdd">拒绝</a>'+
		'</span>'+
		'<span class="pull-right cursor-pointer" style="margin-left: 10px;margin-top: 5px;">'+
		'<a href="javascript:void(0)" data-ufId="ufIdValue" name="allowAdd">同意</a>'+
		'</span>'+
		'</div>'+
		'<div class="width250 clear-both">'+
		'<select id="ufIdValue" class="form-control width80 input-sm pull-left" style="margin-top: 10px;">'+
		'</select>'+
		'</div>'+
		'</div>'+
		'</div>';
	var list = data.dataList;
	for (var index in list) {
		var _data = list[index];
		var _replace = myFriendApplyDivTemplete.replace("${basePath}", path).replace("${friendName}", _data.friendName).replace(/ufIdValue/g, _data.ufId);
		$("#myFriendApplyContentDiv").append(_replace);
		for(var obj in userFriendGroupData) {
			var option = "<option data-groupId=obj>"+userFriendGroupData[obj].groupName+"</option>";
			if(obj == _data.groupId) {
				var option = "<option selected>"+userFriendGroupData[obj].groupName+"</option>";
			}
			$("#"+ _data.ufId).prepend(option);
		}
		$("#"+ _data.ufId).change(function () {
			var groupId = $(this).children('option:selected').attr("data-groupId");
			var ufId = $(this).attr("id");
			$.ajax({//保存好友信息，主要针对好友分组的改变
				url:path+"/userFriend/save",
				type:"POST",
				data:{
					"ufId":ufId,
					"groupId":groupId
				},
				dataType:"json",
				success:function(){
					alert("Success!");
				}
			})
			alert(groupId);
		})
	}
	/**
	 * 同意添加好友的点击事件
	 *@Author liuchen6
	 *@Date 2016/7/4 15:21
	 */
	$("a[name='allowAdd']").click(function () {
		var ufId = $(this).attr("data-ufId");
		$.ajax({
			url:path+"/userFriend/save",
			type:"POST",
			data:{
				"ufId":ufId,
				"groupId":"1",
				"status":"1"
			},
			dataType:"json",
			success:function(){
				alert("Success!");
				$("#myFriendApplyTab").click();
			}
		})
	});

	/**
	 * 拒绝添加好友的点击事件
	 *@Author liuchen6
	 *@Date 2016/7/4 15:21
	 */
	$("a[name='refuseAdd']").click(function () {
		var ufId = $(this).attr("data-ufId");
		$.ajax({
			url:path+"/userFriend/delete",
			type:"POST",
			data:{
				"ufId":ufId
			},
			dataType:"json",
			success:function(){
				alert("Success!");
				$("#myFriendApplyTab").click();
			}
		})
	});
}
