/**
 * 我的空间 业务JS
 */
$(function () {

/* 有Error   //时间选择器
    $(".form_date").datetimepicker({
        format: "yyyy-MM-dd",
        autoclose: true,
        todayBtn: true,
        startView: 2,
        minView: 2
    });*/
    //创建日志
    /*$("#createMyLog").modal("show");*/

    //我的头像鼠标事件
    createHaedPhotoLisenter();
    //保存我的头像的监听事件
    createSaveHeadPhotoListener();
});
/**
 * 保存头像的监听事件
 */
function createSaveHeadPhotoListener() {
    $("#saveHeadPhotoBtn").click(function () {
        var btn=$(this).button("loading");
        $btn.button('reset');
    });
}
/**
 * 创建"我的头像" 一系列的监听事件
 */
function createHaedPhotoLisenter() {
    $("#right").mouseenter(function () {
        var div=$(this);
        var position=div.find("#headPhoto").position();
        $(this).find("#txtDiv_0").css({
            "left":position.left,
            "top":position.top
        })
    }).mouseleave(function () {
        $(this).find("#txtDiv_0").css({
            "left":"-1000px"
        })
    });

  /*  $("#right").find("#txtDivSpan_0").click(function () {
    });*/
}


/**
 * 获取当前留言页的数据
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
 * 初始化我的留言的数据
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