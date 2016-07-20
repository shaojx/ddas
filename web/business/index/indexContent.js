/**
 * Created by Administrator on 2016/7/19.
 */
$(function () {
    init();
});

function init(){
    initIndexUserList();
}

function initIndexUserList() {
    getUserListExcludeMeData(1);//取到首页的列表
}

/**
 * 获取首页的用户列表数据
 * @param pageNo 分页
 */
function getUserListExcludeMeData(pageNo){
    $("#userListContentDiv").html("");//清空数据
    if(pageNo){
        $.ajax({
            url:path+"/userInfo/queryUserListExcludeMe",
            type:"POST",
            data:{
                "currentPage":pageNo,
                "pageSize":12
            },
            dataType:"json",
            success:function(data){
                if(data.dataList.length < 1) {
                    $("#userListPaginationDIV").html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }
                if(pageNo==1){//如果是第一页，则初始化分页
                    initUserListPagination(data);
                }
                initUserListData(data);
            }
        })
    }
}

/**
 * 初始化分页条
 * @param pageData
 */
function initUserListPagination(pageData) {
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
                getUserListExcludeMeData(newPage);//重新拉取数据
            }
        }
    }
    $("#userListPaginationDIV").bootstrapPaginator(options);
}

/**
 * 初始化好友相册分组的数据
 * @param data
 */
function initUserListData(data) {
    var userListDivTemplete = '<div class="col-xs-3 col-md-3">'+
        '<div class="imageDiv">'+
        '<img alt="140x140" src="${basePath}/common/images/people140x140.jpg" class="img-thumbnail"/>'+
        '<p>'+
        '${userNameVal} <a class="btn" href="javascript:void(0)" id="${userId}_addBtn">加好友</a>'+
        '</p>'+
        '</div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = userListDivTemplete.replace("${basePath}", path)
            .replace("${userNameVal}", _data.userName).replace("${userId}", _data.userId)
        $("#userListContentDiv").append(_replace);
        addAddBtnClickListener("#"+_data.userId+"_addBtn", _data.userId);
    }
}

function addAddBtnClickListener(addUserBtnId, friendId){
    $(addUserBtnId).click(function () {
        $.confirm({
            content:"确定发起好友添加申请？",
            confirm:function () {
                $.ajax({
                    url:path+"/userFriend/save",
                    type:"POST",
                    data:{
                        "friendId":friendId,
                    },
                    dataType:"json",
                    success:function(data){
                        if(data.successful){
                            $.confirm({
                                title:"",
                                content:data.msg,
                                cancelButton:false,
                                autoClose: 'confirm|1000'
                            });
                        }
                    }
                })
            },
            cancel:function () {
            }
        });
    })

}