/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userfriend.control;

import com.ddas.common.page.Page;
import com.ddas.sns.mylog.domain.MyLogInfoExample;
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.domain.UserFriendCriteria;
import com.ddas.sns.userfriend.service.UserFriendService;
import org.hibernate.engine.transaction.internal.jta.CMTTransaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * ClassName:	FriendsControl
 * Function: 	朋友模块Controller
 *
 * @author shaojunxiang
 * @date 12:26
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/userFriend")
public class UserFriendController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserFriendController.class);

    @Resource
    private UserFriendService userFriendService;

    //查找page的
    @RequestMapping(value = "/queryRecordsByPage", method = {RequestMethod.GET})
    @ResponseBody
    public Page getFriendList(int currentPage, int pageSize, String userId){
        return userFriendService.queryRecodsByPage(currentPage, pageSize, userId);
    }

    //iframe跳转到我的好友界面
    @RequestMapping(value = "myFriend", method = {RequestMethod.GET})
    public ModelAndView goToMyFriendPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("myspace/myFriendPage");
        return modelAndView;
    }

    //测试Photo页面，可以删除
    @RequestMapping(value = "photo", method = {RequestMethod.GET})
    public ModelAndView goToPhotoPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("photo/photo");
        return modelAndView;
    }

    //新建或保存Friend
    @RequestMapping(value = "save", method = {RequestMethod.POST})
    @ResponseBody
    public UserFriend saveUserFriend(UserFriend userFriend){
        userFriendService.saveUserFriend(userFriend);
        return userFriend;
    }

    //删除Friend
    @RequestMapping(value = "delete", method = {RequestMethod.POST})
    @ResponseBody
    public UserFriend deleteUserFriend(UserFriend userFriend){
        userFriendService.deleteUserFriend(userFriend);
        return userFriend;
    }



}
