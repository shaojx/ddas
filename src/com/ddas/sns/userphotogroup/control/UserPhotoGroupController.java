/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userphotogroup.control;

import com.ddas.common.page.Page;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.usergroup.domain.UserGroup;
import com.ddas.sns.usergroup.service.UserPhotoGroupService;
import com.ddas.sns.userphotogroup.domain.UserPhotoGroup;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
@RequestMapping("/userPhotoGroup")
public class UserPhotoGroupController extends BaseController{
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserPhotoGroupController.class);

    @Resource
    private UserPhotoGroupService userPhotoGroupService;

    /**
     * 保存用户分组
     *@param userPhotoGroup
     *@return com.ddas.sns.usergroup.domain.UserGroup
     *@Author liuchen6
     *@Date 2016/7/5 9:27
     *@since JDK1.7
     */
    @RequestMapping("/save")
    @ResponseBody
    public UserPhotoGroup saveUserGroup(UserPhotoGroup userPhotoGroup) {
        userPhotoGroupService.saveUserGroup(userPhotoGroup);
        return new UserPhotoGroup();
    }

    @RequestMapping(value = "/queryRecordsByPage", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Page getGroupList(int currentPage, int pageSize){
        return userPhotoGroupService.queryRecordsByPage(currentPage, pageSize);
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public UserGroup deleteUserGroup(UserGroup userGroup){
        userPhotoGroupService.deleteUserGroup(userGroup);
        return userGroup;
    }

    @RequestMapping(value = "/queryFriendPhotoGroupRecordsByPage", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Page getFriendPhotoGroupList(int currentPage, int pageSize, HttpServletRequest request){
        Page page = new Page();
        try {
            page = userPhotoGroupService.queryFriendPhotoGroupRecordsByPage(currentPage, pageSize, getLoginUser(request));
        }catch (Exception e){
            LOGGER.error(e.getMessage(), e);
        }
        return page;
    }
}
