/*用户页面的view*/
var userInfoMv=new Vue({
    el:"#userInfoDiv",
    data:{},
    methods:{
        clickPage:function (pageNo) {
            alert(pageNo)
        }
    }
});
userInfoMv.$mount('#userInfoDiv')