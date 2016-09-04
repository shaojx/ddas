/*用户页面的view*/
var userInfoMv=new Vue({
    el:"#userInfoDiv",
    data:{
        dataList:[],
        page:{
            "totalPages":0,
            "pageSize":10,
            "totalCount":0,
            "currentPage":1
        },
        path:path
    },
    ready:function(){
        //load first page
        var vm=this;
        vm.loadDatas(1);
    },
    methods:{
        loadDatas:function (pageNo) {
            var vm=this;
          $.ajax(path+"/admin/findAllUserInfos",{
              dataType:"json",
              data:{
                  pageNo:pageNo,
                  pageSize:vm.page.pageSize,
                  searchName:$("#userInfoSearchTxt").val()
              },
              type:"POST",
              success:function(data){
                if(data){
                    vm.dataList=data.dataList;
                    vm.page.totalPages=data.totalPages;
                    vm.page.pageSize=data.pageSize;
                    vm.page.totalCount=data.totalCount;
                    vm.page.currentPage=data.currentPage;
                }
              }
          })
        }
    },
    filters: {
        photoUrl: function (value) {
            return value ? path+value:path+'/common/images/people140x140.jpg';
        }
    }
});
//由于使用Pjax，相当于动态创建了元素内容，要重新绑定相应的挂载点
userInfoMv.$mount('#userInfoDiv');
