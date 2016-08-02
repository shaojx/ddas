/**
 * Created by Administrator on 2016/7/19.
 */
var CONST_USE_PROPERTY_BLOG = "2";//使用属性(1是好友分组，2是日志分组)
var userBlogGroupData;//日志分组
$(function () {
    /**
     * 当添加或者编辑Group的Model框显示的时候，传数据到Model框里面去
     */
    $('#createMyLogDialog').on('show.bs.modal', function (event) {
        loadUserBlogGroup();
    });

    //点击'日志'tab页
    $("#logTab").click(function () {
        //点击'日志'tab页，默认选中‘我的日志’tab页，
        //加载 我的日志 数据
        getMyLogData(1);
        loadUserBlogGroupData();
    });

    //点击朋友的日志tab页
    $("#friendsLogTab").click(function(){
        getMyFriendsLogData(1);
    });


    init();
});

/**
 * 获取当前页的数据
 * @param pageNo 分页
 */
function getMyFriendsLogData(pageNo){
    $("#myFriendsLogContentDiv").html("");//清空数据
    var loader=SLLib.loader({
        ele:"#panel-324017",
        spinner:"spinner2",
        height:"500px"
    });
    loader.start();
    if(pageNo){
        $.ajax({
            url:path+"/userFriend/queryFriendBlogByPage",
            type:"POST",
            data:{
                "currentPage":pageNo,
                "pageSize":4
            },
            dataType:"json",
            success:function(data){
                loader.stop();

                if(pageNo==1){//如果是第一页，则初始化分页
                    initMyFriendsLogPagnation(data);
                }
                initMyFriendsLogData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initMyFriendsLogPagnation(pageData) {
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
                getMyFriendsLogData(newPage);//重新拉取数据
            }
        }
    }
    $("#myFriendsLogPagnationDiv").bootstrapPaginator(options);
}
/**
 * 初始化我的日志的数据
 * @param data
 */
function initMyFriendsLogData(data){
    var myFriendsLogDivTemplete=' <div class="panel panel-default">'+
        ' <div class="panel-heading">'+
        '  <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">${myLogTitle}</a>'+
        '  </div>'+
        '<div id="panel-element-113" class="panel-collapse in">'+
        '<div class="panel-body">'+
        "${myLogContent}"+
        '<div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：${myLogTags}&nbsp;&nbsp;&nbsp;' +
        '<a href="javascript:void(0);" id="friendCommentedA_${blogId}">评论(<span id="friendCommentCount_${blogId}">0</span>)</a> | 阅读(0)'+
        '<span class="pull-right">'+
        '<a href="javascript:void(0);" data-target="#commentFriendBlog" data-toggle="modal" data-backdrop="" data-blog-id="${blogId}" id="commentFriendA_${blogId}">评论</a>'+
        '</span>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list=data.dataList;
    for(var index in list){
        var _data=list[index];
        var _replace=myFriendsLogDivTemplete.replace("${myLogTitle}",_data.blogTitle).replace("${myLogContent}",_data.blogContent)
            .replace("${myLogTags}",_data.blogTags).replace(/\$\{blogId\}/g,_data.ubId);
        $("#myFriendsLogContentDiv").append(_replace);

        addCommentListener("#commentFriendA_"+_data.ubId);//添加监听事件
        addCommentDetailListener("#friendCommentedA_"+_data.ubId,_data.ubId);//添加 "评论" 事件 跳转到详情
        fetchCommentCount(_data.ubId);//获取评论数
    }
}

/**
 * 获取当前页的数据
 * @param pageNo 分页
 */
function getMyLogData(pageNo){
    $("#myLogContentDiv").html("");//清空数据
    var loader=SLLib.loader({
        ele:"#panel-324017",
        spinner:"spinner2",
        height:"500px"
    });
    loader.start();
    if(pageNo){
        $.ajax({
            url:path+"/userBlog/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":pageNo,
                "pageSize":4
            },
            dataType:"json",
            success:function(data){
                loader.stop();

                if(pageNo==1){//如果是第一页，则初始化分页
                    initMyLogPagnation(data);
                }
                initMyLogData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initMyLogPagnation(pageData) {
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
                getMyLogData(newPage);//重新拉取数据
            }
        }
    }
    $("#myLogPagnationDiv").bootstrapPaginator(options);
}
/**
 * 初始化我的日志的数据
 * @param data
 */
function initMyLogData(data){
    var myLogDivTemplete=' <div class="panel panel-default">'+
        ' <div class="panel-heading">'+
        '  <a class="panel-title" data-toggle="collapse" data-parent="#panel-839153" href="#panel-element-115285">${myLogTitle}</a>'+
        '  </div>'+
        '<div id="panel-element-113" class="panel-collapse in">'+
        '<div class="panel-body">'+
        "${myLogContent}"+
        '<div style="font-size:12px;color:#aaa;margin-top:15px;padding-left:10px;">标签：${myLogTags}&nbsp;&nbsp;&nbsp;权限：${myLogPrivilege}&nbsp;&nbsp;&nbsp;评论(0) | 阅读(0)</div>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list=data.dataList;
    for(var index in list){
        var _data=list[index];
        var _replace=myLogDivTemplete.replace("${myLogTitle}",_data.blogTitle).replace("${myLogContent}",_data.blogContent)
            .replace("${myLogTags}",_data.blogTags).replace("${myLogPrivilege}",_data.blogPrivilege);
        $("#myLogContentDiv").append(_replace);
    }
}

//加载日志分组option
function loadUserBlogGroup() {
    $("#logType").empty();//清空日志分组
    for(var obj in userBlogGroupData) {
        var option = "<option data-groupId=obj>" + userBlogGroupData[obj].groupName + "</option>";
        $("#logType").append(option);//添加日志分组option
    }
}

//加载用户日志分组到JS中
function loadUserBlogGroupData(isReloadSelectOption) {
    $.ajax({
        url:path+"/userGroup/queryRecordsByPage",
        type:"POST",
        data:{
            "currentPage":1,
            "pageSize":1000,
            "useProperty":CONST_USE_PROPERTY_BLOG
        },
        dataType:"json",
        success:function(data){
            var list = data.dataList;
            userBlogGroupData = [];
            for (var index in list) {
                var _data = list[index];
                userBlogGroupData[_data.groupId] = {
                    "groupId":_data.groupId,
                    "groupName":_data.groupName
                };
            }
            if(isReloadSelectOption) {//如果要重新加载Select option
                loadUserBlogGroup();
            }
        }
    })
}
