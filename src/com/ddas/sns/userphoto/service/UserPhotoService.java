/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userphoto.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.StringUtil;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.usergroup.mapper.UserGroupMapper;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userphoto.domain.UserPhoto;
import com.ddas.sns.userphoto.domain.UserPhotoCriteria;
import com.ddas.sns.userphoto.mapper.UserPhotoMapper;
import com.paypal.api.openidconnect.Userinfo;
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

    /**
     * 分页查找userPhoto
     *@param currentPage
     *@param pageSize
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/7 18:04
     *@since JDK1.7
     */
    public Page queryRecordsByPage(int currentPage, int pageSize, String groupId) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserPhotoCriteria userPhotoCriteria = new UserPhotoCriteria();
        userPhotoCriteria.setOrderByClause("created_time");
        userPhotoCriteria.setLimitStart(page.getPageStart());
        userPhotoCriteria.setLimitEnd(pageSize);
        UserPhotoCriteria.Criteria criteria = userPhotoCriteria.createCriteria();
        criteria.andGroupIdEqualTo(groupId);
        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userPhotoMapper.countByExample(userPhotoCriteria));
        }
        page.setDataList(userPhotoMapper.selectByExample(userPhotoCriteria));
        return page;
    }

    public int getPhotoCount(String photoGroupId, UserInfo userInfo){
        UserPhotoCriteria userPhotoCriteria = new UserPhotoCriteria();
        UserPhotoCriteria.Criteria criteria = userPhotoCriteria.createCriteria();
        criteria.andGroupIdEqualTo(photoGroupId);
        int count = userPhotoMapper.countByExample(userPhotoCriteria);
        return count;
    }

}
