package com.ddas.sns.admin.control;

import com.ddas.sns.common.BaseController;
import com.ddas.sns.userinfo.domain.UserInfo;

import javax.servlet.http.HttpServletRequest;

/**
 * ClassName:	AdminBaseController
 * Function: 	管理员模块的AdminBaseController,这个类继承自BaseController并覆盖了一些相应的Admin相关的方法
 *
 * @author shaojx
 * @date 2016/9/8 21:29
 * @since JDK 1.6
 */
public class AdminBaseController extends BaseController {

    public static final String ADMIN_USER_INFO = "adminUserInfo";

    @Override
    public void setLoginUserToSession(UserInfo userInfo, HttpServletRequest request) {
        userInfo.setUserPwd(null);
        String userCoin = userInfo.getUserCoin();
        userInfo.setUserCoin((userCoin ==null||"".equals(userCoin))?"0":userCoin);//reset userCoin
        //set `adminUserInfo` into session,different from @link{super.setLoginUserToSession()}
        request.getSession(true).setAttribute(ADMIN_USER_INFO, userInfo);
    }

    @Override
    public UserInfo getLoginUser(HttpServletRequest request) {
        return (UserInfo) request.getSession(true).getAttribute(ADMIN_USER_INFO);
    }
}
