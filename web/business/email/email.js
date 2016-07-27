/**
 * Created by LiuChen on 2016/7/12.
 */
var CONST_FRIEND = "1";//1代表已经添加的好友
var userFriendCondition = {
    pageNo:1,
    friendNameCondition:"",
    status:CONST_FRIEND,
};//查询条件初始化

var sendEmailCondition = {
    pageNo:1,
    emailSender:currentLoginUserId
}
$(function() {
    $("#sendMailTab").click(function () {
        getSendEmailData(sendEmailCondition);
    })

    getMyFriendData(userFriendCondition);//取到好友列表

    //提交Email按钮点击事件
    $("#sendEmailBtn").click(function () {
        var emailContent = $("#emailContent").val();
        var emailReceiver = $("#friendList").children('option:selected').attr("id");
        $.ajax({
            url:path+"/email/save",
            type:"POST",
            data:{
                "emailContent":emailContent,
                "emailReceiver":emailReceiver
            },
            dataType:"json",
            success:function(){
                alert("Send success!");
            }
        })
    })
})

/**
 * 获取我的好友当前页的数据
 * @param pageNo 分页
 */
function getMyFriendData(condition){
    if(condition.pageNo){
        $.ajax({
            url:path+"/userFriend/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":condition.pageNo,
                "pageSize":1000,
                "friendNameCondition":condition.friendNameCondition,
                "status":condition.status,
            },
            dataType:"json",
            success:function(data){
                var list = data.dataList;
                $("#friendList").empty();
                for (var index in list) {
                    var _data = list[index];
                    var option = '<option id="${friendIdVal}">${friendNameVal}</option>';
                    var _replace = option.replace("${friendIdVal}", _data.friendId).replace("${friendNameVal}", _data.friendName);
                    $("#friendList").append(_replace);
                }
            }
        })
    }
}

/**
 * 获取我的已发送邮件的当前页的数据
 * @param pageNo 分页
 */
function getSendEmailData(condition){
    $("#sendEmailListDiv").html("");//清空数据
    var loader=SLLib.loader({
        ele:"#sendMailTab",
        spinner:"spinner2",
        height:"500px"
    });
    loader.start();
    if(condition.pageNo){
        $.ajax({
            url:path+"/email/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":condition.pageNo,
                "pageSize":4,
                //"emailStatus":condition.status,
                "emailSender":condition.emailSender
            },
            dataType:"json",
            success:function(data){
                loader.stop();
                if(data.dataList.length < 1) {
                    $("#emailSendPaginationDIV").html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }
                if(condition.pageNo==1){//如果是第一页，则初始化分页
                    initEmailSendPagination(data);
                }
                initEmailSendData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initEmailSendPagination(pageData) {
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
                sendEmailCondition.pageNo = newPage;
                getSendEmailData(sendEmailCondition); //重新拉取数据
            }
        }
    }
    $("#emailSendPaginationDIV").bootstrapPaginator(options);
}
/**
 * 初始化我的好友的数据
 * @param data
 */
function initEmailSendData(data) {
    var emailSendDivTemplete = '<div class="panel panel-default ">'+
        '<img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">'+
        '<span class="inline-block" style="text-overflow:ellipsis;margin-top:10px;font-size: 13px;width: 90%;">'+
        'emailContentVal'+
        '</span>'+
        '<div class="margin-left-10px"><a href="javascript:void(0)">${emailReceiver}</a><div style="font-size:12px;color:#aaa;float: right">时间：${createdTime}</div></div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = emailSendDivTemplete.replace("${basePath}", path).replace("${emailReceiver}", _data.emailReceiverName).replace(/emailContentVal/g, _data.emailContent).replace("${createdTime}", _data.createdTime);
        $("#sendEmailListDiv").append(_replace);
    }
}