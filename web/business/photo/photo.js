var FRIEND_PHOTO=true;//记录是否为好友相册的照片详情(要屏蔽一些功能)
var userPhotoGroupCondition = {
    pageNo:1,
};//查询我的相册条件初始化
var currentOp="ADD";//当前的操作(点"保存"按钮时有用) ADD或者为EDIT
var currentEditGroupId=null;//记录当前修改的相册的id
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
        saveOrUpdatePhotoGroup();
    });

    /**
     * 当添加或者编辑Group的Model框显示的时候，传数据到Model框里面去
     */
    $('#createMyPhotoGroupDialog').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);// Button that triggered the modal
        var groupName = button.data('groupname'); // Extract info from data-* attributes
        var groupId = button.data('groupid'); // Extract info from data-* attributes
        var tags=button.data("tags");
        if(groupId){//如果groupId不为空，说明为修改
            currentOp="EDIT";
            currentEditGroupId=groupId;
        }else{
            currentOp="ADD";
            currentEditGroupId=null;
        }
        var description = button.data('description'); // Extract info from data-* attributes
        var privis=button.data("privis");
        if(privis){
            $("input[name='privilege'][value='"+privis+"']").attr("checked","checked");//选中
        }
        var modal = $(this);
        modal.find('#photoGroupName').val("").val(groupName);
        modal.find('#photoGroupDescription').val("").val(description);
        modal.find('#photoGroupTags').val("").val(tags);
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

    //点击  我的相册的tab页
    $("#photoGroupTab").click();
});

function saveOrUpdatePhotoGroup(){
    var groupName = $("#photoGroupName").val();
    var photoGroupTags = $("#photoGroupTags").val();
    var privilege = $("input[name='privilege']:checked").val();//0--仅自己可见;1---分组可见 2----所有人可见
    var description = $("#photoGroupDescription").val();
    var data={
        "groupName":groupName,
        "description":description,
        "privilege":privilege,
        "tags":photoGroupTags
    };
    var url= path+"/userPhotoGroup/save";
    if(currentOp=="EDIT"){//编辑
        url=path+"/userPhotoGroup/update";
        data["groupId"]=currentEditGroupId;//增加goupId
    }
    if(groupName == "") {
        alert("相册标题不能为空");
        return;
    }
    $.ajax({
        url:url,
        type:"POST",
        data:data,
        dataType:"json",
        success:function(data){
            if(data&&data.successful==true){
                $.confirm({
                    title:"Tip",
                    content:currentOp=="ADD"?common.saveSuccess:common.updateSuccess,
                    autoClose: 'confirm|1000',
                    cancelButton:false,
                    container:"#createMyPhotoGroupDialog",
                    confirm:function(){
                        $("#closeCreatePhotoGroupModelBtn").click();
                        $("#photoGroupTab").click();//重新加载数据
                    }
                });
            }
        }
    })
}

/**
 * 获取我的相册数据
 * @param pageNo 分页
 */
function getMyPhotoGroupData(condition){
    $("#myPhotoGroupContentDiv").html("");//清空数据
    $("#myPhotoGroupPaginationDIV").html("");//清空页码
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
        '<div class="panel-body" style="padding:0!important;">'+
        '<div class="row">'+
        '<div class="photo pull-left">'+
        '<img src="${basePath}/common/images/album_logo.jpg" class="img" id="myPhoto_logo_${upId}"/>'+
        '</div>'+
        '<div id="photoInfoDiv" class="pull-left">'+
        '<span class="center-block">相册名:groupNameValue  <span style="margin-left: 20px;">照片数量:</span>'+'<span id="countSpan_${upId}">'+'0</span></span>'+
        '<span class="center-block">描述：groupDescriptionValue</span>'+
        '<span class="center-block">权限：${privis} <span style="margin-left: 20px;">标签:</span>groupTags</span>'+
        '<span class="center-block">更新于：${updated_time}</span>'+
        '<span class="center-block">创建于：${created_time}</span>'+
        '<span class="center-block"><a href="javascript:void(0);" data-toggle="modal" data-backdrop=""  ' +
             'autocomplete="off" data-target="#createMyPhotoGroupDialog" ' +
             'data-groupname="groupNameValue" data-tags="groupTags" ' +
             'data-groupid="groupIdValue" data-description="groupDescriptionValue" data-privis="privisCode" ' +
             'id="editPhotoGroup">编辑相册</a> &nbsp;'+
        '<a href="javascript:void(0);" id="deletePhotoGroup_${upId}">删除相册</a></span>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = myPhotoGroupDivTemplete.replace("${basePath}", path)
            .replace(/groupNameValue/g, formatNullToEmptyStr(_data.groupName))
            .replace("${updated_time}", _data.updatedTime)
            .replace("${created_time}", _data.createdTime)
            .replace(/groupIdValue/g, _data.groupId)
            .replace(/groupDescriptionValue/g, formatNullToEmptyStr(_data.description))
            .replace(/\$\{upId\}/g,_data.groupId)
            .replace("${privis}",getPrivis(_data.privilege))//权限code对应的中文
            .replace("privisCode",_data.privilege)//权限的code
            .replace(/groupTags/g,formatNullToEmptyStr(_data.tags));
        $("#myPhotoGroupContentDiv").append(_replace);
        //查询相册封面以及相应的照片数
        queryPhotoFaceAndCount(_data.groupId,"countSpan_"+_data.groupId);
        //添加监听事件
        addClickMyLogoListener(_data.groupId,!FRIEND_PHOTO);
        //添加删除相册的监听事件
        addDeletePhotoGroupListener(_data.groupId);
    }
}

function getPrivis(code){
    switch (code){
        case "0":return '仅自己可见';
        case '1':return '分组可见';
        case '2':return '所有人可见';
    }
}
/**
 * 把null转换为""
 * @param data
 * @returns {*}
 */
function formatNullToEmptyStr(data){
    if(!data){
        return "";
    }
    return data;
}
/**
 * 设置相册的封面以及相应的照片数量
 * @param groupId 相册的id
 * @param index count对应的span id
 */
function queryPhotoFaceAndCount(groupId,index) {
    if(groupId&&index){
        $.ajax(path+"/userPhotoGroup/queryPhotoFaceAndCount",{
            data:{
                "groupId":groupId
            },
            dataType:"json",
            type:"POST",
            success:function (data) {
                if(data){
                    if(data.num){
                        $("#"+index).html("").html(data.num);
                    }
                    if(data.cover){
                        $("#myPhoto_logo_"+groupId).attr("src",path+data.cover);//设置封面
                    }
                }
            }
        })
    }
}

/**
 * 点击我的相册的封面跳转到详情页
 * @param photoId
 */
function  addClickMyLogoListener(groupId,friendPhoto) {
    if(groupId){
        $("#myPhoto_logo_"+groupId).click(function () {
            $("#content_iframe",window.top.document.body).attr("src",path+"/userPhoto/photoDetail?groupId="+groupId+"&friendPhoto="+friendPhoto);
        });
    }
}
/**
 * 删除相册
 * @param groupId
 */
function addDeletePhotoGroupListener(groupId) {
    //delete
    $("#deletePhotoGroup_"+groupId).click(function () {
        deletePhotoGroupById(groupId);
    });
}
/**
 * 删除相册
 * @param groupId 相册的id
 */
function deletePhotoGroupById(groupId) {
    if(groupId){
        $.confirm({
            theme: 'white',
            confirmButtonClass: 'btn-info',
            cancelButtonClass: 'btn-danger',
            title:false,
            content: '确定删除吗?',
            confirm: function(){
                $.ajax({
                    url:path+"/userPhotoGroup/delete",
                    type:"POST",
                    data:{
                        "groupId":groupId
                    },
                    dataType:"json",
                    success:function(data){
                        if(data&&data.successful==true){
                            $.alert({
                                title:"Tip",
                                content:common.deleteSuccess,
                                autoClose: 'confirm|1000',
                                confirm:function () {
                                    $("#photoGroupTab").click();//reload data
                                }
                            })
                        }else{
                            $.alert({
                                title:"Tip",
                                content:common.deleteError,
                                autoClose: 'confirm|1000',
                                confirm:function () {
                                    $("#photoGroupTab").click();//reload data
                                }
                            })
                        }
                    }
                });
            }
        })
    }
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
        '<div class="panel-body" style="padding: 0px!important;">'+
        '<div class="row">'+
        '<div class="photo pull-left">'+
        '<img src="${basePath}/common/images/album_logo.jpg" class="img" id="myPhoto_logo_${upId}"/>'+
        '</div>'+
        '<div id="photoInfoDiv" class="pull-left">'+
        '<span class="center-block">相册名:groupNameValue<span style="margin-left: 20px;">照片数量：<span id="friend_countSpan_groupIdValue">0</span></span></span>'+
        '<span class="center-block">好友名字:friendName<span>标签:<span>groupTags</span></span></span>'+
        '<span class="center-block">描述：groupDescriptionValue</span>'+
        '<span class="center-block">更新于：${updated_time}</span>'+
        '<span class="center-block">创建于：${created_time}</span>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = friendPhotoGroupDivTemplete.replace("${basePath}", path)
            .replace(/groupNameValue/g, _data.groupName)
            .replace("${updated_time}", _data.updatedTime)
            .replace("${created_time}", _data.createdTime)
            .replace(/groupIdValue/g, _data.groupId)
            .replace("${upId}",_data.groupId)
            .replace("friendName",_data.friendName)
            .replace("groupTags",formatNullToEmptyStr(_data.tags))
            .replace("groupDescriptionValue",formatNullToEmptyStr(_data.description))
        $("#friendPhotoGroupContentDiv").append(_replace);
        //查询相册封面以及相应的照片数
        queryPhotoFaceAndCount(_data.groupId,"friend_countSpan_"+_data.groupId);
        //添加监听事件
        addClickMyLogoListener(_data.groupId,FRIEND_PHOTO);
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

