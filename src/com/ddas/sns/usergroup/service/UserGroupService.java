/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.usergroup.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.string.StringUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.usergroup.domain.UserGroup;
import com.ddas.sns.usergroup.domain.UserGroupCriteria;
import com.ddas.sns.usergroup.mapper.UserGroupMapper;
import com.sun.xml.internal.bind.v2.TODO;
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
    public void saveUserGroup(String groupName, String groupId, String useProperty) {
        UserGroup userGroup = new UserGroup();
        String currentDateString = DateUtil.getCurrentDateString();
        userGroup.setGroupName(groupName);
        // ***********写死测试
        // TODO: 获取当前登陆用户的UserId
        String userId = "1";
        // ***********写死测试
        userGroup.setUserId(userId);
        userGroup.setUseProperty(useProperty);
        userGroup.setUpdatedTime(currentDateString);
        if(StringUtil.isEmpty(groupId)) {
            userGroup.setGroupId(UUIDUtil.createUUID16());
            userGroup.setCreatedTime(currentDateString);
            userGroupMapper.insert(userGroup);
        }else {
            userGroup.setGroupId(groupId);
            UserGroupCriteria userGroupCriteria = new UserGroupCriteria();
            UserGroupCriteria.Criteria criteria = userGroupCriteria.createCriteria();
            criteria.andUserIdEqualTo(userId);
            criteria.andUsePropertyEqualTo(useProperty);
            criteria.andGroupIdEqualTo(groupId);
            userGroupMapper.updateByExampleSelective(userGroup, userGroupCriteria);
        }
    }

    /**
     * 分页查询用户分组，使用属性(1是好友分组，2是相册分组，3是日志分组)
     *@param currentPage
     *@param pageSize
     *@param useProperty
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/5 10:53
     *@since JDK1.7
     */
    public Page queryRecordsByPage(int currentPage, int pageSize, String useProperty) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserGroupCriteria userGroupCriteria = new UserGroupCriteria();
        userGroupCriteria.setOrderByClause("created_time");
        userGroupCriteria.setLimitStart(page.getPageStart());
        userGroupCriteria.setLimitEnd(pageSize);
        UserGroupCriteria.Criteria criteria = userGroupCriteria.createCriteria();
        criteria.andUsePropertyEqualTo(useProperty);

        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userGroupMapper.countByExample(userGroupCriteria));
        }
        page.setDataList(userGroupMapper.selectByExample(userGroupCriteria));
        return page;
    }

    public void deleteUserGroup(UserGroup userGroup){
        UserGroupCriteria userGroupCriteria = new UserGroupCriteria();
        UserGroupCriteria.Criteria criteria = userGroupCriteria.createCriteria();
        criteria.andGroupIdEqualTo(userGroup.getGroupId());
        userGroupMapper.deleteByExample(userGroupCriteria);
    }

}
