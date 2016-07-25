/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.email.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.StringUtil;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.email.domain.UserEmail;
import com.ddas.sns.email.domain.UserEmailCriteria;
import com.ddas.sns.email.mapper.UserEmailMapper;
import com.ddas.sns.userblog.domain.UserBlog;
import com.ddas.sns.userblog.domain.UserBlogCriteria;
import com.ddas.sns.userblog.mapper.UserBlogMapper;
import com.ddas.sns.userinfo.domain.UserInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName:	UserGroupService
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:59
 * @since JDK 1.6      
 */
@Service
public class EmailService {
    private static final Logger LOGGER= LoggerFactory.getLogger(EmailService.class);

    @Resource
    private UserEmailMapper userEmailMapper;

    public void save(UserEmail userEmail, UserInfo userInfo){
        userEmail.setUeId(UUIDUtil.createUUID16());
        userEmail.setEmailSender(userInfo.getUserId());
        String currentDataString = DateUtil.getCurrentDateString();
        userEmail.setCreatedTime(currentDataString);
        userEmail.setUpdatedTime(currentDataString);
        userEmailMapper.insertSelective(userEmail);
    }

    public Page queryRecordsByPage(int currentPage, int pageSize, String emailReceiver, String emailSender, UserInfo loginUser){
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserEmailCriteria userEmailCriteria = new UserEmailCriteria();
        userEmailCriteria.setOrderByClause("created_time");
        userEmailCriteria.setLimitStart(page.getPageStart());
        userEmailCriteria.setLimitEnd(pageSize);
        UserEmailCriteria.Criteria criteria = userEmailCriteria.createCriteria();
        if(StringUtil.isNotEmpty(emailSender)) {//如果emailSender不为空，那么就查询LoginUser发送的邮件
            criteria.andEmailSenderEqualTo(loginUser.getUserId());
        }else if(StringUtil.isNotEmpty(emailReceiver)) {
            criteria.andEmailReceiverEqualTo(loginUser.getUserId());
        }
        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userEmailMapper.countByExample(userEmailCriteria));
        }
        page.setDataList(userEmailMapper.selectByExample(userEmailCriteria));
        return page;
    }

}
