/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userinfo.control;

import com.ddas.common.page.Page;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.service.UserFriendService;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * ClassName:	FriendsControl
 * Function: 	朋友模块Controller
 *
 * @author shaojunxiang
 * @date 12:26
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/userInfo")
public class UserInfoController extends BaseController{
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserInfoController.class);

    @Resource
    private UserInfoService userInfoService;

    /**
     * 分页查找userList
     *@param currentPage
     *@param pageSize
     *@param httpServletRequest
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/1 14:51
     *@since JDK1.6
     */
    @RequestMapping(value = "/queryUserListExcludeMe", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Page getUserListExcludeMe(int currentPage, int pageSize, HttpServletRequest httpServletRequest){
        return userInfoService.queryUserListExcludeMe(currentPage, pageSize, getLoginUser(httpServletRequest));
    }

}
