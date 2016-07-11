/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.usermessage.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.usermessage.domain.UserMessage;
import com.ddas.sns.usermessage.domain.UserMessageCriteria;
import com.ddas.sns.usermessage.mapper.UserMessageMapper;
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
public class UserMessageService {
    @Resource
    private UserMessageMapper userMessageMapper;

    public void save(UserMessage userMessage, UserInfo userInfo) {
        userMessage.setMessageBy(userInfo.getUserId());
        String currentDateString = DateUtil.getCurrentDateString();
        userMessage.setCreatedTime(currentDateString);
        userMessage.setUmid(UUIDUtil.createUUID16());
        userMessageMapper.insert(userMessage);
    }

    public Page queryRecordsByPage(int currentPage, int pageSize, String userId){
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserMessageCriteria userMessageCriteria = new UserMessageCriteria();
        userMessageCriteria.setOrderByClause("created_time");
        userMessageCriteria.setLimitStart(page.getPageStart());
        userMessageCriteria.setLimitEnd(pageSize);
        UserMessageCriteria.Criteria criteria = userMessageCriteria.createCriteria();
        criteria.andMessageToEqualTo(userId);

        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userMessageMapper.countByExample(userMessageCriteria));
        }
        page.setDataList(userMessageMapper.selectByExample(userMessageCriteria));
        return page;

    }

}


