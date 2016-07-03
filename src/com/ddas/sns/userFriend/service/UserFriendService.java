/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userfriend.service;

import com.ddas.common.page.Page;
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.domain.UserFriendCriteria;
import com.ddas.sns.userfriend.mapper.UserFriendMapper;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * ClassName:	UserInfoService
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:59
 * @since JDK 1.6      
 */
@Service
public class UserFriendService {
    @Resource
    private UserFriendMapper userFriendMapper;

    /**
     * 分页查找userFriend
     *@Author liuchen6
     *@Date 2016/7/1 15:00
     *@param currentPage
     *@param pageSize
     *@param userId
     *@return com.ddas.common.page.Page
     *@since JDK1.6
     */
    public Page queryRecodsByPage(int currentPage, int pageSize, String userId) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserFriendCriteria userFriendCriteria = new UserFriendCriteria();
        userFriendCriteria.setLimitStart(page.getPageStart());
        userFriendCriteria.setLimitEnd(pageSize);
        UserFriendCriteria.Criteria criteria = userFriendCriteria.createCriteria();
        criteria.andUserIdEqualTo(userId);
        page.setTotalCount(userFriendMapper.countByExample(userFriendCriteria));
        page.setDataList(userFriendMapper.selectByExample(userFriendCriteria));
        return page;
    }

    /**
     * 新建或者更新userFriend
     *@Author liuchen6
     *@Date 2016/7/1 15:00
     *@param userFriend
     *@return com.ddas.sns.userfriend.domain.UserFriend
     *@since JDK1.6
     */
    public UserFriend saveUserFriend(UserFriend userFriend) {
        if (StringUtils.isEmpty(userFriend.getUserId())) {
            userFriendMapper.insertSelective(userFriend);
        }else{
            UserFriendCriteria userFriendCriteria = new UserFriendCriteria();
            UserFriendCriteria.Criteria criteria = userFriendCriteria.createCriteria();
            criteria.andUserIdEqualTo(userFriend.getUserId());
            criteria.andFriendIdEqualTo(userFriend.getFriendId());
            userFriendMapper.updateByExampleSelective(userFriend, userFriendCriteria);
        }

        return userFriend;
    }

    /**
     * 删除好友
     *@Author liuchen6
     *@Date 2016/7/1 15:01
     *@param userFriend
     *@return boolean
     *@since JDK1.6
     */
    public boolean deleteUserFriend(UserFriend userFriend) {
        UserFriendCriteria userFriendCriteria = new UserFriendCriteria();
        UserFriendCriteria.Criteria criteria = userFriendCriteria.createCriteria();
        criteria.andUserIdEqualTo(userFriend.getUserId());
        criteria.andFriendIdEqualTo(userFriend.getFriendId());
        userFriendMapper.deleteByExample(userFriendCriteria);

        return true;
    }
}
