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
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriendphotogroup.mapper.UserFriendPhotoGroupMapper;
import com.ddas.sns.usergroup.domain.UserGroup;
import com.ddas.sns.usergroup.domain.UserGroupCriteria;
import com.ddas.sns.usergroup.mapper.UserGroupMapper;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userphoto.domain.UserPhotoCriteria;
import com.ddas.sns.userphotogroup.domain.UserPhotoGroup;
import com.ddas.sns.userphotogroup.domain.UserPhotoGroupCriteria;
import com.ddas.sns.userphotogroup.mapper.UserPhotoGroupMapper;
import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ClassName:	UserGroupService
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:59
 * @since JDK 1.6      
 */
@Service
public class UserPhotoGroupService {
    @Resource
    private UserPhotoGroupMapper userPhotoGroupMapper;

    @Resource
    private UserFriendPhotoGroupMapper userFriendPhotoGroupMapper;

    /**
     *@param userPhotoGroup
     *@return void
     *@Author liuchen6
     *@Date 2016/7/4 19:22
     *@since JDK1.7
     */
    public void saveUserGroup(UserPhotoGroup userPhotoGroup) {
        String currentDateString = DateUtil.getCurrentDateString();
        // ***********写死测试
        // TODO: 获取当前登陆用户的UserId
        String userId = "1";
        // ***********写死测试
        userPhotoGroup.setUserId(userId);
        userPhotoGroup.setUpdatedTime(currentDateString);
        if(StringUtil.isEmpty(userPhotoGroup.getGroupId())) {
            userPhotoGroup.setGroupId(UUIDUtil.createUUID16());
            userPhotoGroup.setCreatedTime(currentDateString);
            userPhotoGroupMapper.insert(userPhotoGroup);
        }else {
            UserPhotoGroupCriteria userPhotoGroupCriteria = new UserPhotoGroupCriteria();
            UserPhotoGroupCriteria.Criteria criteria = userPhotoGroupCriteria.createCriteria();
            criteria.andUserIdEqualTo(userId);
            criteria.andGroupIdEqualTo(userPhotoGroup.getGroupId());
            userPhotoGroupMapper.updateByExampleSelective(userPhotoGroup, userPhotoGroupCriteria);
        }
    }

    /**
     * 分页查询用户分组，使用属性(1是好友分组，2是日志分组)
     *@param currentPage
     *@param pageSize
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/5 10:53
     *@since JDK1.7
     */
    public Page queryRecordsByPage(int currentPage, int pageSize,UserInfo loginUserInfo) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserPhotoGroupCriteria userPhotoGroupCriteria = new UserPhotoGroupCriteria();
        userPhotoGroupCriteria.setOrderByClause("created_time");
        userPhotoGroupCriteria.setLimitStart(page.getPageStart());
        userPhotoGroupCriteria.setLimitEnd(pageSize);
        UserPhotoGroupCriteria.Criteria criteria = userPhotoGroupCriteria.createCriteria();
        criteria.andUserIdEqualTo(loginUserInfo.getUserId());
        if(currentPage == 1){//如果是当前第一页，则要求总数
            page.setTotalCount(userPhotoGroupMapper.countByExample(userPhotoGroupCriteria));
        }
        page.setDataList(userPhotoGroupMapper.selectByExample(userPhotoGroupCriteria));
        return page;
    }

    public void deleteUserGroup(UserGroup userGroup){
        UserGroupCriteria userGroupCriteria = new UserGroupCriteria();
        UserGroupCriteria.Criteria criteria = userGroupCriteria.createCriteria();
        criteria.andGroupIdEqualTo(userGroup.getGroupId());
        //userGroupMapper.deleteByExample(userGroupCriteria);
    }

    /**
     * 分页查询用户分组，使用属性(1是好友分组，2是日志分组)
     *@param currentPage
     *@param pageSize
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/5 10:53
     *@since JDK1.7
     */
    public Page queryFriendPhotoGroupRecordsByPage(int currentPage, int pageSize, UserInfo userInfo) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        Map<String, Object> condition = new HashMap();
        condition.put("userId", userInfo.getUserId());
        condition.put("start", page.getPageStart());
        condition.put("end", page.getPageStart() + pageSize);
        page.setCondition(condition);
        page.setTotalCount(userFriendPhotoGroupMapper.getCount(page));
        page.setDataList(userFriendPhotoGroupMapper.queryByPage(page));
        return page;
    }

    public Map<String, String> queryPhotoFaceAndCount(String groupId) {
        List<Map<String,String>>result= userFriendPhotoGroupMapper.queryPhotoFaceAndCount( groupId);
        if(result!=null&&result.size()>0){
            return result.get(0);
        }
        return new HashMap<String, String>();
    }
}
