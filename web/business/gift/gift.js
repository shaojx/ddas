var staticGiftCondition = {
    pageNo:1,
    giftProperty:"0",//0表示虚拟的礼物，1表示真实的礼物
    contentListDiv:"#virtualGiftContentDiv",//列表展示的DIV
    paginationDiv:"#virtualGiftPaginationDIV",//分页条
    loaderDiv:"#panel-virtualGift"//等待转动圈所在的DIV
}
$(function() {
    $("#virtualGiftTab").click(function () {
        staticGiftCondition = {
            pageNo:1,
            giftProperty:"0",//0表示虚拟的礼物，1表示真实的礼物
            contentListDiv:"#virtualGiftContentDiv",//列表展示的DIV
            paginationDiv:"#virtualGiftPaginationDiv",//分页条
            loaderDiv:"#panel-virtualGift"//等待转动圈所在的DIV
        };
        getGiftData(staticGiftCondition)
    });

    $("#trueGiftTab").click(function () {
        staticGiftCondition = {
            pageNo:1,
            giftProperty:"1",//0表示虚拟的礼物，1表示真实的礼物
            contentListDiv:"#trueGiftContentDiv",//列表展示的DIV
            paginationDiv:"#trueGiftPaginationDiv",//分页条
            loaderDiv:"#panel-trueGift"//等待转动圈所在的DIV
        };
        getGiftData(staticGiftCondition)
    });

    //初始化页面调用
    init()
});

/**
 * 初始化页面加载的时候调用
 */
function init() {
    $("#virtualGiftTab").click()
}

/**
 * 获取礼物列表的数据
 * @param pageNo 分页
 */
function getGiftData(condition){
    $(condition.contentListDiv).html("");//清空数据
    var loader=SLLib.loader({
        ele:condition.loaderDiv,
        spinner:"spinner2",
        height:"200px"
    });
    loader.start();
    if(condition.pageNo){
        $.ajax({
            url:path+"/staticGift/queryRecordsByPage",
            type:"POST",
            data:{
                "currentPage":condition.pageNo,
                "pageSize":4,
                "giftProperty":condition.giftProperty
            },
            dataType:"json",
            success:function(data){
                loader.stop();
                if(data.dataList.length < 1) {
                    $(condition.paginationDiv).html("");//清空页码
                    return; //如果没有查询到数据，就不分页
                }
                if(condition.pageNo==1){//如果是第一页，则初始化分页
                    initStaticGiftPagination(data);
                }
                initStaticGiftData(data);
            }
        })
    }
}
/**
 * 初始化分页条
 * @param pageData
 */
function initStaticGiftPagination(pageData) {
    var pageIndex=pageData.currentPage;
    var totalPages=pageData.totalPages;
    var options = {
        alignment:"center",//居中显示
        currentPage: pageIndex,//当前页数
        totalPages: totalPages,//总页数 注意不是总条数
        bootstrapMajorVersion:3,
        onPageChanged: function(event,oldPage,newPage){
            if (oldPage==newPage) {
                return;
            } else {
                staticGiftCondition.pageNo = newPage;
                getGiftData(staticGiftCondition); //重新拉取数据
            }
        }
    };
    $(staticGiftCondition.paginationDiv).bootstrapPaginator(options);


}
/**
 * 初始化礼物列表数据
 * @param data
 */
function initStaticGiftData(data) {
    var staticGiftDivTemplete = '<div class="col-xs-3 col-md-3 width175">'+
        '<div class="thumbnail cursor-pointer" id="giftId" data-toggle="modal" data-backdrop="" data-target="#sendGiftDialog" autocomplete="off">'+
        '<img src="basePathgiftUrl" alt="140x140">'+
        '<div class="caption" style="text-align: center">'+
        '<h5>giftName</h5>'+
        '</div>'+
        '</div>'+
        '</div>';
    var list = data.dataList;
    for (var index in list) {
        var _data = list[index];
        var _replace = staticGiftDivTemplete
            .replace(/basePath/g, path)
            .replace(/giftName/g, _data.giftName)
            .replace(/giftPrice/g, _data.giftPrice)
            .replace(/giftUrl/g, _data.giftUrl)
            .replace(/giftId/g, _data.giftId);
        $(staticGiftCondition.contentListDiv).append(_replace);
    }
}
