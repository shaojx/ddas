/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userphoto.service;

import com.ddas.common.util.StringUtil;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.usergroup.mapper.UserGroupMapper;
import com.ddas.sns.userphoto.domain.UserPhoto;
import com.ddas.sns.userphoto.mapper.UserPhotoMapper;
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
public class UserPhotoService {
    @Resource
    private UserPhotoMapper userPhotoMapper;

    public void save(UserPhoto userPhoto) {
        String currentDateTime = DateUtil.getCurrentDateString();
        userPhoto.setUpId(UUIDUtil.createUUID16());
        userPhoto.setCreatedTime(currentDateTime);
        userPhoto.setUpdatedTime(currentDateTime);
        userPhotoMapper.insertSelective(userPhoto);
    }

}
