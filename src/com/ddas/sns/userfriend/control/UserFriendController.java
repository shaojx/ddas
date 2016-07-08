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
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.service.UserFriendService;
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

    /**
     * 分页查找userFriendList
     *@param currentPage
     *@param pageSize
     *@param friendNameCondition
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/1 14:51
     *@since JDK1.6
     */
    @RequestMapping(value = "/queryRecordsByPage", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Page getFriendList(int currentPage, int pageSize, String friendNameCondition, String status){
        return userFriendService.queryRecordsByPage(currentPage, pageSize, friendNameCondition, status);
    }

    /**
     * 跳转到我的好友界面
     *@Author liuchen6
     *@Date 2016/7/1 14:52
     *@param
     *@return org.springframework.web.servlet.ModelAndView
     *@since JDK1.6
     */
    @RequestMapping(value = "myFriend", method = {RequestMethod.GET})
    public ModelAndView goToMyFriendPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("myspace/myFriendPage");
        return modelAndView;
    }

    /**测试跳转photo页面可以删除
     *@Author liuchen6
     *@Date 2016/7/1 14:58
     *@param
     *@return org.springframework.web.servlet.ModelAndView
     *@since JDK1.6
     */
    @RequestMapping(value = "photo", method = {RequestMethod.GET})
    public ModelAndView goToPhotoPage() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("photo/photo");
        return modelAndView;
    }

    /**
     * 新建或者更新好友
     *@Author liuchen6
     *@Date 2016/7/1 14:59
     *@param userFriend
     *@return com.ddas.sns.userfriend.domain.UserFriend
     *@since JDK1.6
     */
    @RequestMapping(value = "save", method = {RequestMethod.POST})
    @ResponseBody
    public UserFriend saveUserFriend(UserFriend userFriend){
        userFriendService.saveUserFriend(userFriend);
        return userFriend;
    }

    /**
     * 删除好友
     *@Author liuchen6
     *@Date 2016/7/1 14:59
     *@param userFriend
     *@return com.ddas.sns.userfriend.domain.UserFriend
     *@since JDK1.6
     */
    @RequestMapping(value = "delete", method = {RequestMethod.POST})
    @ResponseBody
    public UserFriend deleteUserFriend(UserFriend userFriend){
        userFriendService.deleteUserFriend(userFriend);
        return userFriend;
    }

    @RequestMapping(value = "/queryByPage", method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Page getFriendList(){
        Page page = new Page();
        try {
            page = userFriendService.queryUserFriendBlogBypage(1, 1);
        }catch (Exception e){
            LOGGER.error(e.getMessage(),e);
        }

        return page;
    }


}
