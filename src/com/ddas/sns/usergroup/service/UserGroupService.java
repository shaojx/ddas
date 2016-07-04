/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.usergroup.service;

import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.usergroup.domain.UserGroup;
import com.ddas.sns.usergroup.mapper.UserGroupMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * ClassName:	UserGroupService
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:59
 * @since JDK 1.6      
 */
@Service
public class UserGroupService {
    @Resource
    private UserGroupMapper userGroupMapper;

    /**
     *@param groupName
     *@return void
     *@Author liuchen6
     *@Date 2016/7/4 19:22
     *@since JDK1.7
     */
    public void saveUserGroup(String groupName) {
        UserGroup userGroup = new UserGroup();
        userGroup.setGroupName(groupName);
        // ***********写死测试
        userGroup.setUserId("1");
        userGroup.setGroupId(UUIDUtil.createUUID16());
        userGroup.setUseProperty("1");
        // ***********写死测试
        userGroupMapper.insert(userGroup);
    }

}
