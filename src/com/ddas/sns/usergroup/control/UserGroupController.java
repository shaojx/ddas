/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.usergroup.control;

import com.ddas.common.page.Page;
import com.ddas.sns.usergroup.domain.UserGroup;
import com.ddas.sns.usergroup.service.UserGroupService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
@RequestMapping("/userGroup")
public class UserGroupController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserGroupController.class);

    @Resource
    private UserGroupService userGroupService;

    /**
     * 保存用户分组
     *@param groupName
     *@return com.ddas.sns.usergroup.domain.UserGroup
     *@Author liuchen6
     *@Date 2016/7/5 9:27
     *@since JDK1.7
     */
    @RequestMapping("/save")
    @ResponseBody
    public UserGroup saveUserGroup(String groupName, String groupId, String useProperty) {
        userGroupService.saveUserGroup(groupName, groupId, useProperty);
        return new UserGroup();
    }

    @RequestMapping(value = "/queryRecordsByPage", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Page getGroupList(int currentPage, int pageSize, String useProperty){
        return userGroupService.queryRecordsByPage(currentPage, pageSize, useProperty);
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public void deleteUserGroup(String groupId){
        userGroupService.deleteUserGroup(groupId);
    }

}
