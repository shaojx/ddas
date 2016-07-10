var userPhotoGroupCondition = {
    pageNo:1,
};//查询我的相册条件初始化

var userFriendPhotoGroupCondition = {
    pageNo:1,
};//查询好友相册条件初始化
$(function () {
    //点击"上传照片" 跳转页面
    $("#addPhotoBtn").click(function () {
       $("#content_iframe",window.top.document).attr("src",path+"/userPhoto/gotoUploadPhotoIndex");
   });

    //保存我的相册分组按钮点击事件
    $("#savePhotoGroupBtn").click(function () {
        var groupName = $("#photoGroupName").val();
        //var photoGroupTags = $("#photoGroupTags").val();
        var privilege = "1";
        var description = $("#photoGroupDescription").val();;
        if(groupName == "") {
            alert("相册标题不能为空");
            return;
        }
        $.ajax({
            url:path+"/userPhotoGroup/save",
            type:"POST",
            data:{
                "groupName":groupName,
                "description":description,
                "privilege":privilege
            },
            dataType:"json",
            success:function(){
                $("#closeCreatePhotoGroupModelBtn").click();
                alert("success!");
            }
        })
    })

    /**
     * 当添加或者编辑Group的Model框显示的时候，传数据到Model框里面去
     */
    $('#createMyPhotoGroupDialog').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);// Button that triggered the modal
        var groupName = button.data('groupname'); // Extract info from data-* attributes
        var groupId = button.data('groupid'); // Extract info from data-* attributes
        var description = button.data('description'); // Extract info from data-* attributes
        var modal = $(this);
        modal.find('#photoGroupName').val(groupName);
        modal.find('#photoGroupId').val(groupId);
        modal.find('#photoGroupDescription').val(description);
    })

    $("#photoGroupTab").click(function () {
        userPhotoGroupCondition = {
            pageNo:1
        };//查询条件初始化
        getMyPhotoGroupData(userPhotoGroupCondition);
    })

    $("#friendPhotoGroupTab").click(function () {
        userFriendPhotoGroupCondition = {
            pageNo:1
        };//查询条件初始化
        getFriendPhotoGroupData(userPhotoGroupCondition);
    })
});

/**
 * 获取我的相册数据
 * @param pageNo 分页
 */
function getMyPhotoGroupData(condition){
    $("#myPhotoGroupContentDiv").html("");//清空数据
    if(condition.pageNo){
        $.ajax({
            url:path+"/userPhotoGroup/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":condition.pageNo,
                "pageSize":4
            },
            dataType:"json",
            success:function(data){
                if(data.dataList.length < 1) {
                    $("#myPhotoGroupPaginationDIV").html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }
                if(condition.pageNo==1){//如果是第一页，则初始化分页
                    initMyPhotoGroupPagination(data);
                }
                initMyPhotoGroupData(data);
            }
        })
    }
}

/**
 * 初始化我的相册分组的数据
 * @param data
 */
function initMyPhotoGroupData(data) {
    var myPhotoGroupDivTemplete = '<div class="panel panel-default" style="margin-top:10px;">'+
        '<div class="panel-body">'+
        '<div class="row">'+
        '<div class="photo pull-left">'+
        '<img src="${basePath}/common/images/album_logo.jpg" class="img"/>'+
        '</div>'+
        '<div id="photoInfoDiv" class="pull-left">'+
        '<span class="center-block">groupNameValue</span>'+
        '<span class="center-block">标签：</span>'+
        '<span class="center-block">照片数量：2</span>'+
        '<span class="center-block">更新于：${updated_time}</span>'+
        '<span class="center-block">创建于：${created_time}</span>'+
        '<span class="center-block"><a href="javascript:void(0);" data-toggle="modal" data-backdrop=""  autocomplete="off" data-target="#createMyPhotoGroupDialog" data-groupname="groupNameValue" data-groupid="groupIdValue" data-description="groupDescriptionValue" id="editPhotoGroup">编辑相册</a> &nbsp;'+
        '<a href="javascript:void(0);" id="deletePhotoGroup">删除相册</a></span>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = myPhotoGroupDivTemplete.replace("${basePath}", path).replace(/groupNameValue/g, _data.groupName).replace("${updated_time}", _data.updatedTime).replace("${created_time}", _data.createdTime).replace(/groupIdValue/g, _data.groupId).replace(/groupDescriptionValue/g, _data.description);
        $("#myPhotoGroupContentDiv").append(_replace);
    }

    /**
     *Group的A标签删除点击事件
     *@Author liuchen6
     *@Date 2016/7/5 15:38
     */
    /*$("a[name='deleteFriendGroup']").click(function () {
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
     })*/
}

/**
 * 初始化分页条
 * @param pageData
 */
function initMyPhotoGroupPagination(pageData) {
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
                var photoGroupCondition = {
                    pageNo:1,
                    useProperty:CONST_USE_PROPERTY_FRIEND
                };//查询条件初始化
                getMyPhotoGroupData(photoGroupCondition);//重新拉取数据
            }
        }
    }
    $("#myPhotoGroupPaginationDIV").bootstrapPaginator(options);
}

/**
 * 获取好友相册数据
 * @param pageNo 分页
 */
function getFriendPhotoGroupData(condition){
    $("#friendPhotoGroupContentDiv").html("");//清空数据
    if(condition.pageNo){
        $.ajax({
            url:path+"/userPhotoGroup/queryFriendPhotoGroupRecordsByPage",
            type:"POST",
            data:{
                "currentPage":condition.pageNo,
                "pageSize":4
            },
            dataType:"json",
            success:function(data){
                if(data.dataList.length < 1) {
                    $("#friendPhotoGroupPaginationDIV").html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }
                if(condition.pageNo==1){//如果是第一页，则初始化分页
                    initFriendPhotoGroupPagination(data);
                }
                initFriendPhotoGroupData(data);
            }
        })
    }
}

/**
 * 初始化好友相册分组的数据
 * @param data
 */
function initFriendPhotoGroupData(data) {
    var friendPhotoGroupDivTemplete = '<div class="panel panel-default" style="margin-top:10px;">'+
        '<div class="panel-body">'+
        '<div class="row">'+
        '<div class="photo pull-left">'+
        '<img src="${basePath}/common/images/album_logo.jpg" class="img"/>'+
        '</div>'+
        '<div id="photoInfoDiv" class="pull-left">'+
        '<span class="center-block">groupNameValue</span>'+
        '<span class="center-block">标签：</span>'+
        '<span class="center-block">照片数量：2</span>'+
        '<span class="center-block">更新于：${updated_time}</span>'+
        '<span class="center-block">创建于：${created_time}</span>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = friendPhotoGroupDivTemplete.replace("${basePath}", path).replace(/groupNameValue/g, _data.groupName).replace("${updated_time}", _data.updatedTime).replace("${created_time}", _data.createdTime).replace(/groupIdValue/g, _data.groupId);
        $("#friendPhotoGroupContentDiv").append(_replace);
    }

}

/**
 * 初始化分页条
 * @param pageData
 */
function initFriendPhotoGroupPagination(pageData) {
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
                var photoGroupCondition = {
                    pageNo:1,
                };//查询条件初始化
                getFriendPhotoGroupData(photoGroupCondition);//重新拉取数据
            }
        }
    }
    $("#friendPhotoGroupPaginationDIV").bootstrapPaginator(options);
}

