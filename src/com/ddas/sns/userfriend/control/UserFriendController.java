/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userfriend.control;

import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.service.UserFriendService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

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

    @RequestMapping(value = "/getFriendList",method = {RequestMethod.GET})
    public void getFriendList(String userId){
        userId = "1";
        LOGGER.info(">>>>>>>>>>>>>>>>>>" + userId);
        try {
            List<UserFriend> list = userFriendService.getUserFriendList(userId);
            for (UserFriend userFriend : list) {
                LOGGER.info(">>>>>>>>>>>>>>>>>>" + userFriend.getFriendName());
            }
        }catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }

    @RequestMapping(value = "/update", method = {RequestMethod.POST, RequestMethod.GET})
    public void update() {
        UserFriend userFriend = new UserFriend();
        userFriend.setUserId("1");
        userFriend.setFriendId("2");
        userFriend.setGroupName("Update");
        userFriendService.update(userFriend);
    }

    @RequestMapping(value = "myFriend", method = {RequestMethod.GET})
    public ModelAndView goToMyFriendPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("myspace/myFriendPage");
        return modelAndView;
    }

    @RequestMapping(value = "photo", method = {RequestMethod.GET})
    public ModelAndView goToPhotoPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("photo/photo");
        return modelAndView;
    }

}
