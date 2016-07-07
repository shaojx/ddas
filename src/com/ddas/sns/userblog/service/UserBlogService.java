/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userblog.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.userblog.domain.UserBlog;
import com.ddas.sns.userblog.domain.UserBlogCriteria;
import com.ddas.sns.userblog.mapper.UserBlogMapper;
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
public class UserBlogService {
    @Resource
    private UserBlogMapper userBlogMapper;

    /**
     * 分页查找userBlog
     *@param currentPage
     *@param pageSize
     *@return com.ddas.common.page.Page
     *@Author liuchen6
     *@Date 2016/7/7 18:04
     *@since JDK1.7
     */
    public Page queryRecordsByPage(int currentPage, int pageSize) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserBlogCriteria userBlogCriteria = new UserBlogCriteria();
        userBlogCriteria.setOrderByClause("created_time");
        userBlogCriteria.setLimitStart(page.getPageStart());
        userBlogCriteria.setLimitEnd(pageSize);
        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userBlogMapper.countByExample(userBlogCriteria));
        }
        page.setDataList(userBlogMapper.selectByExample(userBlogCriteria));
        return page;
    }

    public void save(UserBlog userBlog) {
        String currentTmeString = DateUtil.getCurrentDateString();
        // TODO: 2016/7/7 拿到login的用户Id
        userBlog.setUserId("1");
        userBlog.setUbId(UUIDUtil.createUUID16());
        userBlog.setCreatedTime(currentTmeString);
        userBlogMapper.insertSelective(userBlog);
    }

}
