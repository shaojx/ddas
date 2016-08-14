/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userphotogroup.control;

import com.ddas.common.Msg;
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
import java.util.HashMap;
import java.util.Map;

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
    public Msg saveUserGroup(UserPhotoGroup userPhotoGroup, HttpServletRequest request) {
        Msg msg=new Msg();
        try {
            userPhotoGroupService.saveUserGroup(userPhotoGroup,getLoginUser(request));
            msg.setSuccessful(true);
        } catch (Exception e) {
           LOGGER.error("保存相册失败!",e);
            msg.setSuccessful(false);
        }
        return msg;
    }

    @RequestMapping(value = "/queryRecordsByPage", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Page getGroupList(int currentPage, int pageSize,HttpServletRequest request){
        return userPhotoGroupService.queryRecordsByPage(currentPage, pageSize,getLoginUser(request));
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

    /**
     *根据相册组的id来查询对应的相册封面以及相册的照片数量
     * @param groupId 相册组的id
     * @param request
     *@return java.util.Map<java.lang.String,java.lang.String>
     *@author shaojx
     *@date 2016/8/4 23:28
     *@version 1.0
     *@since 1.6
     */
    @ResponseBody
    @RequestMapping("/queryPhotoFaceAndCount")
    public Map<String,String> queryPhotoFaceAndCount(String groupId, HttpServletRequest request){
        Map<String,String> result=userPhotoGroupService.queryPhotoFaceAndCount(groupId);
        return result;
    }
}
