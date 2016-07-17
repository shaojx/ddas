/**
 * 我的空间 业务JS
 */
var CONST_USE_PROPERTY_BLOG = "2";//使用属性(1是好友分组，2是相册分组，3是日志分组)
var userBlogGroupData;//日志分组

var clickedFriendBlogCommentId=null;//保存点击"评论"的id(朋友的日志 )
$(function () {

    //创建日志
    /*$("#createMyLog").modal("show");*/
    /**
     * 当添加或者编辑Group的Model框显示的时候，传数据到Model框里面去
     */
    $('#createMyLogDialog').on('show.bs.modal', function (event) {
        loadUserBlogGroup();
    })

    //添加分类
    $("#addTypeHref").click(function () {
        $(this).hide();
        $("#addTypeDiv").show();
    });
    //取消---日志分类
    $("#addTypeCloseBtn").click(function () {
        $("#addTypeDiv").hide();
        $("#addTypeHref").show();
    });
    //保存----日志分类
    $("#addTypeSaveBtn").click(function () {
        var groupName = $("#addTypeInput").val();
        if(groupName == "") {
            alert("分组名称不能为空");
            return;
        }
        $.ajax({
            url:path+"/userGroup/save",
            type:"POST",
            data:{
                "groupName":groupName,
                "useProperty":CONST_USE_PROPERTY_BLOG
            },
            dataType:"json",
            success:function(){
                loadUserBlogGroupData(true);
                alert("Saving success!");
            }
        })
    });

    //点击"我的日志 "tab页
    $("#myLogTab").click(function(){
        getMyLogData(1);
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

    //点击留言tab页
    $("#messageTab").click(function(){
        getMyMessageData(1);
    });

    //保存我的日志按钮点击事件
    $("#saveMyBlogBtn").click(function () {
        var logTitle = $("#logTitle").val();
        var logType = "1";
        var logTags = "heart";
        var logPrivilege = "0";
        var logContent = $("#logContent").val();;
        if(logTitle == "" || logContent == "") {
            alert("日志标题和内容不能为空");
            return;
        }
        $.ajax({
            url:path+"/userBlog/save",
            type:"POST",
            data:{
                "groupId":logType,
                "blogTitle":logTitle,
                "blogContent":logContent,
                "blogPrivilege":logPrivilege,
                "blogTags":logTags
            },
            dataType:"json",
            success:function(){
                $("#closeCreateBlogModelBtn").click();
                alert("success!");
            }
        })
    })

    $("#saveMessageBtn").click(function (){
        var messageContent = $("#messageContent").val();
        if(messageContent == "") {
            alert("留言内容不能为空");
            return;
        }
        $.ajax({
            url:path+"/userMessage/save",
            type:"POST",
            data:{
                "messageContent":messageContent,
                "messageTo":"1"
            },
            dataType:"json",
            success:function(){
                $("#closeCreateMessageModelBtn").click();
                alert("success!");
            }
        })
    })
    
    //创建 日志 评论的Validator  目前存在换页面的时候提示该方法未注册，先注释掉
/*    $("#commentForm").bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            commentContent: {
                validators: {
                    notEmpty: true
                }
            }
        }
    });*/

    var saveCommentBtnOldText=$("#saveCommentBtn").text();
    //点击评论弹出框的"保存"按钮
    $("#saveCommentBtn").click(function () {
            var bv=$("#commentForm").data("bootstrapValidator").validate();
            if (bv.isValid()) {//必填
                if(clickedFriendBlogCommentId){
                    var oldText=$(this).text();
                    var btn=$(this);
                    btn.text(btn.data("loading-text")).attr("disabled","disabled");
                    $.ajax({
                        url:path+"/blogComment/saveFriendComment",
                        data:{
                            "comment":$("#commentContent").val(),
                            "blogId":clickedFriendBlogCommentId,
                        },
                        type:"POST",
                        dataType:"json",
                        success:function (data) {
                            if(data){
                                if(data.msg=="success"){
                                    $.confirm({
                                        title:"",
                                        content:mySpaceContent.saveSuccess,
                                       autoClose: 'confirm|1000',
                                        cancelButton:false,
                                        container:"#commentFriendBlog",
                                        confirm:function(){
                                            $("#closeCommentBtn").click();//关闭评论区
                                        }
                                    });
                                 //   var jconfirmBoxOldMarginTop=$(".jconfirm-box").css("margin-top");
                                  //  $(".jconfirm-box").css({"margin-top":"100px!important"});
                                    //更新 评论数
                                    var oldCount=parseInt($("#friendCommentCount_"+clickedFriendBlogCommentId).text());
                                    $("#friendCommentCount_"+clickedFriendBlogCommentId).text(oldCount+1);
                                }else{
                                    $.confirm({
                                        title:"",
                                        content:data.msg,
                                        cancelButton:false
                                    });
                                }
                                btn.text(oldText).removeAttr("disabled");
                            }
                        }
                    });
                }
            }
           
        }
    );

    $('#commentFriendBlog').on('hide.bs.modal', function (event) {
        $("#commentContent").val("");//清空内容
        $("#commentForm").data("bootstrapValidator").resetForm(true);//还原状态
        //重置保存按钮中的状态 
        $("#saveCommentBtn").text(saveCommentBtnOldText).removeAttr("disabled");
    })
    
});

//加载日志分组option
function loadUserBlogGroup() {
    $("#logType").empty();//清空日志分组
    for(var obj in userBlogGroupData) {
        var option = "<option data-groupId=obj>" + userBlogGroupData[obj].groupName + "</option>";
        $("#logType").prepend(option);//添加日志分组option
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

/**
 *页面初始化时，选中对应的tab页
 */
function initShowTabs() {
    $("#myLogTab").click();
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
 * 点击 "评论(0)"跳转到 详情页
 * @param commentDetailId
 */
function addCommentDetailListener(commentDetailId,blogId) {
    if (commentDetailId){
        $(commentDetailId).click(function () {
            $("#content_iframe",window.top.document)[0].contentWindow.location.href=path+"/blogComment/gotoCommentDetail?blogId="+blogId;
            }
        );
    }
}

/**
 * 为朋友的日志 "评论" 添加监听事件
 * @param commentId
 */
function  addCommentListener(commentId) {
    $(commentId).click(
        function () {
            var blogId=$(this).data("blog-id");
            clickedFriendBlogCommentId=blogId;
        }
    );
}

/**
 * 根据 blogId来获取评论总数
 * @param blogId
 */
function fetchCommentCount(blogId) {
    if (!blogId) {
        return;
    }
    $.ajax({
        url: path + "/blogComment/fetchCommentCountById",
        data: {
            "blogId": blogId
        },
        dataType: "json",
        type: "POST",
        success: function (data) {
            if (data && data.msg) {
                $("#friendCommentCount_" + blogId).text(data.msg);
            }
        }
    })
}

/**
 * 获取当前页的数据
 * @param pageNo 分页
 */
function getMyMessageData(pageNo){
    $("#myMessageContentDiv").html("");//清空数据
    var loader=SLLib.loader({
        ele:"#panel-324017",
        spinner:"spinner2",
        height:"500px"
    });
    loader.start();
    if(pageNo){
        $.ajax({
            url:path+"/userMessage/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":pageNo,
                "pageSize":4,
                "userId":"1"
            },
            dataType:"json",
            success:function(data){
                loader.stop();

                if(pageNo==1){//如果是第一页，则初始化分页
                    initMyMessagePagnation(data);
                }
                initMyMessageData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initMyMessagePagnation(pageData) {
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
                getMyMessageData(newPage);//重新拉取数据
            }
        }
    }
    $("#myMessagePagnationDiv").bootstrapPaginator(options);
}
/**
 * 初始化我的日志的数据
 * @param data
 */
function initMyMessageData(data){
    var myMessageDivTemplete='<li class="list-group-item">'+
        '<div><a href="javascript:void(0)">Mariki</a><div style="font-size:12px;color:#aaa;float: right">留言时间：${created_time}</div></div>'+
        '<div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width:98%;font-size: 15px">${messageContent}</div>'+
        '</li>';
    var list=data.dataList;
    for(var index in list){
        var _data=list[index];
        var _replace=myMessageDivTemplete.replace("${created_time}",_data.createdTime).replace("${messageContent}",_data.messageContent);
        $("#myMessageContentDiv").append(_replace);
    }
}