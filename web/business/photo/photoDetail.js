/**
 * 照片详情
 */
$(function () {
    $(".row img").mouseover(function(event){
        var position=$(this).position();
        $("#txtDiv").css({
            "left":position.left+25,
            "top":position.top+25
        }).mouseout(function () {
            $("#txtDiv").css({
                "left":-1000
            });
        });
    });

    getPhotoData(1);
})

/**
 * 获取当前页的数据
 * @param pageNo 分页
 */
function getPhotoData(pageNo){
    $("#photoDiv").html("");//清空数据
    var loader=SLLib.loader({
        ele:"#photoDiv",
        spinner:"spinner2",
        height:"500px"
    });
    loader.start();
    if(pageNo){
        $.ajax({
            url:path+"/userPhoto/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":pageNo,
                "pageSize":4,
                "groupId":groupId
            },
            dataType:"json",
            success:function(data){
                loader.stop();
                if(data.dataList.length < 1) {
                    $("#photoPaginationDiv").html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }

                if(pageNo==1){//如果是第一页，则初始化分页
                    initPhotoPagination(data);
                }
                initPhotoData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initPhotoPagination(pageData) {
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
                getPhotoData(newPage);//重新拉取数据
            }
        }
    }
    $("#photoPaginationDiv").bootstrapPaginator(options);
}
/**
 * 初始化我的日志的数据
 * @param data
 */
function initPhotoData(data) {
    var photoDivTemplete = '<img src="${basePath}${imagePath}" alt="140x140" class="img-rounded">';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = photoDivTemplete.replace("${basePath}", path).replace("${imagePath}", _data.photoUrl);
        $("#photoDiv").append(_replace);
    };

    $("#photoDiv").find("img").dblclick(function(){
       if(window.top.showPhotos){
           window.top.showPhotos(groupId);
       }
    });

 /*   layer.ready(function(){ //为了layer.ext.js加载完毕再执行
        layer.photos({
            photos: '#photoDiv'
        });
    });*/

    /* layer.use('extend/layer.ext.js', function(){
        //初始加载即调用，所以需放在ext回调里
        layer.ext = function(){
            layer.photosPage({
                //html:'<div style="padding:20px;">这里传入自定义的html<p>相册支持左右方向键，支持Esc关闭</p><p>另外还可以通过异步返回json实现相册。更多用法详见官网。</p><p>'+ unescape("B5教程网www.bcty365.com") +'</p><p id="change"></p></div>',
                title: '快捷模式-获取页面元素包含的所有图片',
                //id: 100, //相册id，可选
                //parent:'#photoDiv'
                parent:window.top.document.body
            });
        };
    });*/
}
