/**
 *邮件JS
 */
var CONST_FRIEND = "1";//1代表已经添加的好友
var reply_to_eamil_id=null;//记录当前回复的邮件(点开详情页"回复"以及直接"回复"有用)
var EMAIL_DETAIL_PAGE_SIZE=5;//默认一页显示5条记录
var click_new_email_by_reply=false;//标记是否为直接回复才而点击`新建邮件`tab页
var userFriendCondition = {
    pageNo:1,
    friendNameCondition:"",
    status:CONST_FRIEND
};//查询条件初始化

var sendEmailCondition = {
    pageNo:1,
    emailSender:currentLoginUserId
}
var receiveEmailCondition = {
    pageNo:1,
    emailReceiver:currentLoginUserId
}
$(function() {
    $("#sendMailTab").click(function () {
        getSendEmailData(sendEmailCondition);
        click_new_email_by_reply=false;//标记为`不是直接回复`
        $("#friendList").removeAttr("disabled");//移除相应的disabled
    })
    
    $("#receiveMailTab").click(function () {
        getReceiveEmailData(receiveEmailCondition);
        click_new_email_by_reply=false;//标记为 `不是直接回复`
        $("#friendList").removeAttr("disabled");//移除相应的disabled
    })

    getMyFriendData(userFriendCondition);//取到好友列表

    //提交Email按钮点击事件
    $("#sendEmailBtn").click(function () {
        var emailContent = $("#emailContent").val();
        var emailReceiver = $("#friendList").children('option:selected').attr("id");
        var url=path+"/email/save";
        var data= {
            "emailContent":emailContent,
            "emailReceiver":emailReceiver
        };
        if(click_new_email_by_reply){//为回复
            url=path+"/email/reply";
            data={
                "emailContent":emailContent,
                "emailId":reply_to_eamil_id,
                "senderId":emailReceiver
            }
        }
        senderOrReply(url,data);//do it!
    })

    $("#sendMailTab").click();
    //创建邮件详情页的弹出框
    $("#emailDetailDiv").modal({
        "backdrop":"",
        show:false //取消初始化后自动显示
    });
    //回复邮件
    $("#replyBtn").click(function () {
        reply();
    });

    //创建邮件click
    $("#createEmailTab").click(function(){
        checkUserDailyEmailCount();
    });
    //注册 跳转到 升级会员的页面
    registerToVIPListener();
});

function registerToVIPListener() {
    $("#toVip").click(function () {
        //$("#levelVip",window.top.document).click();//点击最上层window的`升级会员`的li
        $("#content_iframe",window.top.document).attr("src",path+"/vip/gotoVip");
    });
}
/**
 * 检测相应的权限
 */
function  checkUserDailyEmailCount() {
    $.ajax(path+"/email/checkDailyEmailCount",{
        data:{},
        dataType:"json",
        async:false,//cancle async
        type:"POST",
        success:function (data) {
            if(data&&data.successful==true){
                $("#vipTip").show();//Vip Tip
                $("#emailContentDiv").hide();//显示相应的输入区
            }else{
                $("#vipTip").hide();//VIP TIP
                $("#emailContentDiv").show();//隐藏相应的输入区
            }
        }
    })
}
/**
 * 发送或者回复邮件
 * @param url 对应的url
 * @param data 上传的数据
 */
function senderOrReply(url,data){
    //提交
    $.ajax({
        url:url,
        type:"POST",
        data:data,
        dataType:"json",
        success:function(data){
            if(data&&data.successful==true){
                $.confirm({
                    title:"Tip",
                    content:common.saveSuccess,
                    autoClose: 'confirm|1000',
                    cancelButton:false,
                    container:"#CreateEmail",
                    confirm:function(){
                        $("#emailContent").val("");//清空内容
                        $("#createEmailTab").click();//click tab,refresh data
                    }
                });
            }
        }
    })
}

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
                "status":condition.status
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
        ele:"#sendEmailListDiv",
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
        '<span class="inline-block" style="text-overflow:ellipsis;margin-top:10px;font-size: 13px;width: 90%;word-break: break-all;">'+
        'emailContentVal'+
        '</span>'+
        '<div class="margin-left-10px"><span style="font-style: italic;font-size: 12px;">发送给:</span><a href="javascript:void(0)">${emailReceiver}</a><div style="font-size:12px;color:#aaa;float: right">时间：${createdTime}</div></div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = emailSendDivTemplete.replace("${basePath}", path)
            .replace("${emailReceiver}", _data.emailReceiverName)
            .replace(/emailContentVal/g, _data.emailContent)
            .replace("${createdTime}", _data.createdTime);
        $("#sendEmailListDiv").append(_replace);
    }
}

/**
 * 获取我的收到邮件的当前页的数据
 * @param pageNo 分页
 */
function getReceiveEmailData(condition){
    $("#receiveEmailListDiv").html("");//清空数据
    var loader=SLLib.loader({
        ele:"#receiveEmailListDiv",
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
                "emailReceiver":condition.emailReceiver
            },
            dataType:"json",
            success:function(data){
                loader.stop();
                if(data.dataList.length < 1) {
                    $("#emailReceivePaginationDIV").html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }
                if(condition.pageNo==1){//如果是第一页，则初始化分页
                    initEmailReceivePagination(data);
                }
                initEmailReceiveData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initEmailReceivePagination(pageData) {
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
                receiveEmailCondition.pageNo = newPage;
                getReceiveEmailData(receiveEmailCondition); //重新拉取数据
            }
        }
    }
    $("#emailReceivePaginationDIV").bootstrapPaginator(options);
}
/**
 * 初始化我的好友的数据
 * @param data
 */
function initEmailReceiveData(data) {
    var emailReceiveDivTemplete = '<div class="panel panel-default ">'+
        '<img src="${basePath}/common/images/people.jpg" style="vertical-align:top;width:59px;height:59px;margin: 5px;">'+
        '<span class="inline-block" style="text-overflow:ellipsis;margin-top:10px;font-size: 13px;width: 90%;word-break: break-all;">'+
        'emailContentVal'+
        '</span>'+
        '<div class="margin-left-10px"><span style="font-style: italic;font-size: 12px;">来自:</span><a href="javascript:void(0)">${emailReceiver}</a><div style="font-size:12px;color:#aaa;float: right">时间：${createdTime}' +
        '<a href="javascript:void(0);" id="reply_A_${emailId}" style="margin-right: 10px; margin-left: 20px;">回 复</a>' +
        '<a href="javascript:void(0);" id="detail_A_${emailId}">详 情</a></div></div>'+
         '<input id="input_reciver_id_${emailId}" type="hidden" value="${revicerId}">'+
        '<input id="input_sender_id_${emailId}" type="hidden" value="${senderId}">'
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = emailReceiveDivTemplete.replace("${basePath}", path)
            .replace("${emailReceiver}", _data.emailSenderName)
            .replace(/emailContentVal/g, _data.emailContent)
            .replace("${createdTime}", _data.createdTime)
            .replace(/\$\{emailId\}/gi,_data.ueId)
            .replace("${revicerId}",_data.emailReceiver)
            .replace("${senderId}",_data.emailSender);
        $("#receiveEmailListDiv").append(_replace);

        //添加监听事件
        addListener(_data.ueId);
    }
}
/**
 * 添加监听事件
 * @param emailId 当前的回复邮件的id
 */
function addListener(emailId) {
    $("#detail_A_"+emailId).click(function () {
        var _emailId=$(this).attr("id").split("_")[2];
        reply_to_eamil_id=_emailId;
        $('#emailDetailDiv').modal('show');//弹出窗显示
        clearEmailDetailHtml();
        clearEmailDetailPagnationHtml();
        fetchEmailDetailByEmailId(reply_to_eamil_id,1,EMAIL_DETAIL_PAGE_SIZE);
    });

    $("#reply_A_"+emailId).click(function () {
        var _emailId=$(this).attr("id").split("_")[2];
        reply_to_eamil_id=_emailId;
        //click `new email` tab
        $("#createEmailTab").click();
        click_new_email_by_reply=true;//标记为直接回复
        selectUserNameAndDisable();
    });
}
/**
 * 选中好友的select并置disabled
 */
function selectUserNameAndDisable() {
    var senderId=$("#input_sender_id_"+reply_to_eamil_id).val();//获取发送者的id（此处为接收者）
    $("#friendList option[id='"+senderId+"']").attr("selected", true);
    $("#friendList").attr("disabled","disabled");
}
/**
 * 显示弹出窗并清空内容
 */
function clearEmailDetailHtml() {
    $("#contentDiv").html("");//清空内容
}
/**
 * 清空回复列表的页码
 */
function clearEmailDetailPagnationHtml() {
    $("#emailDetailPagnation").html("");//清空页码
}

function fetchEmailDetailByEmailId(emailId,pageNo,pageSize) {
    if(emailId){
        var loader=SLLib.loader({
            ele:"#ReceiveEmailBox",
            spinner:"spinner2",
            height:"500px"
        });
        loader.start();
        $.ajax(path+"/email/fetchEmailDetailByEmailId",{
            data:{
                "emailId":emailId,
                "pageNo":pageNo,
                "pageSize":pageSize
            },
            dataType:"json",
            type:"POST",
            success:function (data) {
                loader.stop();
                if(pageNo==1){
                    initEmailPagenation(data);
                }
                initEmailDetailData(data);
            }
        })
    }
}
/**
 * 创建分页
 * @param data
 */
function initEmailPagenation(pageData) {
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
                clearEmailDetailHtml();//清空内容
                fetchEmailDetailByEmailId(reply_to_eamil_id,newPage,EMAIL_DETAIL_PAGE_SIZE);//重新拉取数据
            }
        }
    }
    $("#emailDetailPagnation").bootstrapPaginator(options);
}
/**
 * 初始化内容
 * @param data
 */
function initEmailDetailData(data) {
    var myLogDivTemplete='<div class="panel panel-default">'
        +'<div class="panel-body">'
        +'<p style="font-style: italic;font-size: 12px;">${type} ${otherUserName}:</p>' +
        '${emailContent}'
        +'</div>'
        +'</div>';
    var list=data.dataList;
    for(var index in list){
        var _data=list[index];
        var _replace="";
        if(_data.type =="1"){//表示我回复给别人
            _replace=myLogDivTemplete.replace("${emailContent}",_data.emailContent)
                .replace("${type}","发送给").replace("${otherUserName}",_data.otherUserName);
        }else if(_data.type =="0"){//别人发送给我
            _replace= myLogDivTemplete.replace("${emailContent}",_data.emailContent)
                .replace("${type}","来自").replace("${otherUserName}",_data.otherUserName+" 的回复");
        }
        $("#contentDiv").append(_replace);
    }
}

/**
 * 回复
 */
function reply(){
    var senderId=$("#input_sender_id_"+reply_to_eamil_id).val();//发送者的id
    if(senderId&&reply_to_eamil_id){
        $.ajax(path+"/email/reply",{
            data:{
                "emailId":reply_to_eamil_id,
                "senderId":senderId,
                "emailContent":$("#replyTxtArea").val()
            },
            dataType:"json",
            type:"POST",
            success:function (data) {
                if(data&&data.successful==true){
                    $.confirm({
                        title:"Tip",
                        content:common.saveSuccess,
                        autoClose: 'confirm|1000',
                        cancelButton:false,
                        container:"#emailDetailDiv",
                        confirm:function(){
                           $("#replyTxtArea").val("");//清空相应的回复区内容
                            clearEmailDetailHtml();
                            clearEmailDetailPagnationHtml();
                            fetchEmailDetailByEmailId(reply_to_eamil_id,1,EMAIL_DETAIL_PAGE_SIZE);//重新加载回复列表
                        }
                    });
                }
            }
        })
    }
}