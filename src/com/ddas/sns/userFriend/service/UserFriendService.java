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
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.mapper.UserFriendMapper;
import com.ddas.sns.userfriend.domain.UserFriendCriteria;
import com.ddas.sns.userfriendblog.dto.UserFriendBlogDto;
import com.ddas.sns.userfriendblog.mapper.UserFriendBlogMapper;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    @Resource
    private UserFriendBlogMapper userFriendBlogMapper;

    /**
     * 分页查找userFriend
     *@Author liuchen6
     *@Date 2016/7/1 15:00
     *@param currentPage
     *@param pageSize
     *@param friendNameCondition
     *@return com.ddas.common.page.Page
     *@since JDK1.6
     */
    public Page queryRecordsByPage(int currentPage, int pageSize, String friendNameCondition, String status) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserFriendCriteria userFriendCriteria = new UserFriendCriteria();
        userFriendCriteria.setOrderByClause("created_time");
        userFriendCriteria.setLimitStart(page.getPageStart());
        userFriendCriteria.setLimitEnd(pageSize);
        UserFriendCriteria.Criteria criteria = userFriendCriteria.createCriteria();
        criteria.andFriendNameLikeInsensitive("%" + friendNameCondition + "%");
        if ("1".equals(status)) {
            criteria.andStatusNotEqualTo("0");
        } else if("0".equals(status)) {
            criteria.andStatusEqualTo("0");
        }

        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userFriendMapper.countByExample(userFriendCriteria));
        }
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
        String currentDate = DateUtil.getCurrentDateString();
        if (StringUtils.isEmpty(userFriend.getUfId())) {
            //********暂时写死测试
            // TODO: 2016/7/5
            userFriend.setUserId("1");
            UUIDUtil.createUUID16();
            userFriend.setUfId(UUIDUtil.createUUID16());
            userFriend.setFriendName("Tomorrow");
            userFriend.setCreatedTime(currentDate);
            userFriend.setUpdatedTime(currentDate);
            //********暂时写死测试
            userFriendMapper.insertSelective(userFriend);
        }else{
            UserFriendCriteria userFriendCriteria = new UserFriendCriteria();
            UserFriendCriteria.Criteria criteria = userFriendCriteria.createCriteria();
            userFriend.setUpdatedTime(currentDate);
            criteria.andUfIdEqualTo(userFriend.getUfId());
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
        criteria.andUfIdEqualTo(userFriend.getUfId());
        userFriendMapper.deleteByExample(userFriendCriteria);

        return true;
    }

    public Page queryUserFriendBlogBypage(int currentPage, int pageSize) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        int count = userFriendBlogMapper.getCount(page);
        System.out.println(count);
        List<UserFriendBlogDto> list = userFriendBlogMapper.queryByPage(page);
        page.setDataList(userFriendBlogMapper.queryByPage(page));
        return page;
    }
}
