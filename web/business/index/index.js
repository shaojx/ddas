$(function () {
    //点击左侧导航"相册"
    $("#myPhoto").click(function(){
        $("#content_iframe").attr("src",path+"/userPhoto/gotoIndex");
    });
    
    // 左侧好友点击事件
    $("#myFriend").click(function () {
        $("#content_iframe").attr("src", path+"/userFriend/myFriend");
    });
    
    //左侧 升级会员 点击事件 
    $("#levelVip").click(function () {
       $("#content_iframe").attr("src",path+"/vip/gotoVip"); 
    });
    
    //左侧 充值中心  点击事件 
    $("#payCenter").click(function () {
       $("#content_iframe").attr("src",path+"/payfor/gotoIndex"); 
    });

    //左侧 邮箱  点击事件
    $("#emailBox").click(function () {
        $("#content_iframe").attr("src",path+"/email/gotoIndex");
    });

    //退出  点击事件
    $("#logoutBtn").click(function () {
        $.confirm({
            theme: 'black',
            confirmButtonClass: 'btn-info',
            cancelButtonClass: 'btn-danger',
            title:false,
            content: '确定要退出么？ <br>期待您下次再来!',
            confirm: function(){
                $.ajax({
                    url:path+"/login/out",
                    type:"POST",
                    data:{},
                    dataType:"json",
                    success:function(){
                        window.top.location.href=path+"/login/goToLoginPage";//跳转登陆页
                    }
                })
            }
        })
    });

    $("#myBlog").click(function () {
        $("#content_iframe").attr("src",path+"/userBlog/gotoIndex");
    });

    $("#gift").click(function () {
        $("#content_iframe").attr("src",path+"/gift/gotoIndex");
    });



    init();
});

function init(){
    getRecommendUserListExcludeMeData(1);
}

/**
 * 获取首页的用户列表数据
 * @param pageNo 分页
 */
function getRecommendUserListExcludeMeData(pageNo){
    $("#recommendContentDiv").html("");//清空数据
    if(pageNo){
        $.ajax({
            url:path+"/userInfo/queryUserListExcludeMe",
            type:"POST",
            data:{
                "currentPage":pageNo,
                "pageSize":5
            },
            dataType:"json",
            success:function(data){
                initRecommendUserListData(data);
            }
        })
    }
}

/**
 * 初始化好友相册分组的数据
 * @param data
 */
function initRecommendUserListData(data) {
    var recommendUserListDivTemplete = 	'<article class="widget-post">'+
        '<div class="post-image">'+
        '<a href="post.html"><img src="${basePath}/common/images/people60x55.jpg" alt=""></a>'+
        '</div>'+
        '<div class="post-body">'+
        '<h2><a href="post.html">${userNameVal}</a></h2>'+
        '<div class="post-meta">'+
        '<span><div><a href="#"  rel="54">'+
        '<img src="/common/images/hi_img.jpg"></a>&nbsp;&nbsp;<a href="javascript:void(0)" id="${userId}_addRecommendBtn" rel="54">'+
        '<img src="/common/images/addfriends.gif"></a></div></span>'+
        '</div>'+
        '</div>'+
        '</article>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = recommendUserListDivTemplete.replace("${basePath}", path)
            .replace("${userNameVal}", _data.userName).replace("${userId}", _data.userId)
        $("#recommendContentDiv").append(_replace);
        addRecommendAddBtnClickListener("#"+_data.userId+"_addRecommendBtn", _data.userId);
    }
}

function addRecommendAddBtnClickListener(addUserBtnId, friendId){
    $(addUserBtnId).click(function () {
        $.confirm({
            content:"确定发起好友添加申请？",
            confirm:function () {
                $.ajax({
                    url:path+"/userFriend/applyFriend",
                    type:"POST",
                    data:{
                        "userId":friendId
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

/**
 * 照片弹出
 * @param groupId
 */
function showPhotos(groupId) {
   if(groupId){
       $.ajax(path+'/userPhoto/queryRecordsByPage',{
           data:{
               "groupId":groupId,
               "currentPage":1,
               "pageSize":10000
           },
           dataType:"json",
           type:"post",
           success:function(data){
               parsing(data);
           }
       });
   }

   var parsing=function(data){
       var parsedJson={
           "title": "Photo",
           "id": 99935,
           "start": 0,
           "data":[],
       };
       for(var index in data.dataList){
           var _data=data.dataList[index];
           parsedJson.data.push({
               "alt": _data.photoDescription,
               "pid": _data.upId,
               "src": path+_data.photoUrl,
               "thumb": path+_data.thumbnailurl
           })
       }
       layer.photos({
           area: '500px',
           offset:($(window).height() - 500)/2+"px",
           photos:parsedJson
       });
   }
}