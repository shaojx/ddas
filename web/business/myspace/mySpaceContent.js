/**
 * 我的空间 业务JS
 */
var CONST_USE_PROPERTY_BLOG = "3";//使用属性(1是好友分组，2是相册分组，3是日志分组)
var userBlogGroupData;//日志分组
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
    
    //创建 日志 评论的Validator
    $("#commentForm").bootstrapValidator({
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
    });
    
    //点击评论弹出框的"保存"按钮
    $("#saveCommentBtn").click(
        function () {
            var bv=$("#commentForm").data("bootstrapValidator").validate();
            if(!bv.isValid()){
                
            }else{//必填 
                
            }
        }
    );

    $('#commentFriendBlog').on('hide.bs.modal', function (event) {
       $("#commentForm").data("bootstrapValidator").resetForm(true);//还原状态
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