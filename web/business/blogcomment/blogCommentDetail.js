/**
 * 评论详情页
 */

$(function () {
   getComment(1); 
});

function getComment(pageNo) {
    var blogId=$("#blogId").val();
    if (blogId){
        $.ajax({
            url:path+"/blogcomment/fetchAllCommentByPage",
            data:{
                "currentPage":pageNo,
                "pageSize":4,
                "blogId":blogId
            },
            success:function (data) {
                if(pageNo==1){//如果是第一页，则初始化分页
                    initCommentDetailPagnation(data);
                }
                initCommentDetail(data);
            }
        })
    }
}

/**
 * 初始化分页条
 * @param pageData
 */
function initCommentDetailPagnation(pageData) {
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
function initCommentDetail(data){
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