/**
 * Created by LiuChen on 2016/7/12.
 */
var CONST_FRIEND = "1";//1代表已经添加的好友
$(function() {
    var userFriendCondition = {
        pageNo:1,
        friendNameCondition:"",
        status:CONST_FRIEND,
    };//查询条件初始化

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