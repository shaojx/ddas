/**
 * 用户VIP的JS,当要使用用户的vip权限信息时，引入这个JS文件
 */
var VIP={};
VIP.loadVipPrivs=false;//记录vip信息是否被加载
VIP.infos=[];//不要使用这个数组，因为这个数组不会实时更新
VIP.fetchVipPrivs=function () {//使用这个方法来获取相应的权限信息
    if(VIP.loadVipPrivs){
        return VIP.infos;
    }else{
        fetchUserVipPrivs();
        return fetchUserVipPrivs();
    }
    //inner function
    function fetchUserVipPrivs() {
        $.ajax(path+"/vip/findVipPrivsByUserId",{
            data:{},
            dataType:"json",
            async:false,
            type:"POST",
            success:function (data) {
                if(data&&data.dataList){
                    VIP.infos=data.dataList;//cache
                    VIP.loadVipPrivs=true;
                }
            }
        });
    }
}