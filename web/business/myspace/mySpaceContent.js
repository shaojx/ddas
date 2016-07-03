/**
 * 我的空间 业务JS
 */
$(function () {

    //创建日志
    /*$("#createMyLog").modal("show");*/

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
        alert("Saving.....");
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
    });
});

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
    var loader=SLLib.loader({
        ele:"#panel-324017",
        spinner:"spinner2",
        height:"500px"
    });
    loader.start();
    if(pageNo){
        $.ajax({
            url:path+"/myLog/queryRecodsByPage",
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
    $("#myLogContentDiv").html("");
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
        var _replace=myLogDivTemplete.replace("${myLogTitle}",_data.myLogTitle).replace("${myLogContent}",_data.myLogContent)
            .replace("${myLogTags}",_data.myLogTags).replace("${myLogPrivilege}",_data.myLogPrivs);
        $("#myLogContentDiv").append(_replace);
    }
}