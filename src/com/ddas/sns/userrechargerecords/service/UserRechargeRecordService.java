/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userrechargerecords.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.string.StringUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.userfriendphotogroup.mapper.UserFriendPhotoGroupMapper;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userphotogroup.domain.UserPhotoGroup;
import com.ddas.sns.userphotogroup.domain.UserPhotoGroupCriteria;
import com.ddas.sns.userphotogroup.mapper.UserPhotoGroupMapper;
import com.ddas.sns.userrechargerecords.domain.UserRechargeRecord;
import com.ddas.sns.userrechargerecords.mapper.UserRechargeRecordMapper;
import org.jcp.xml.dsig.internal.MacOutputStream;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
public class UserRechargeRecordService {
    @Resource
    private UserRechargeRecordMapper userRechargeRecordMapper;
    /**
     *@param rechargeToUserId
     *@param hqUserId
     *@param amount
     *@return void
     *@Author liuchen6
     *@Date 2016/7/4 19:22
     *@since JDK1.7
     */
    public boolean saveRechargeRecords(String rechargeToUserId, String hqUserId, String amount) {//充值给哪个用户，花钱的用户ID
        UserRechargeRecord userRechargeRecord =  new UserRechargeRecord();
        userRechargeRecord.setUserId(hqUserId);
        userRechargeRecord.setRechargeToUser(rechargeToUserId);
        userRechargeRecord.setUrId(UUIDUtil.createUUID16());
        userRechargeRecord.setRechargeMount(amount);
        userRechargeRecord.setRechargeTime(DateUtil.getCurrentDateString());

        userRechargeRecordMapper.insertSelective(userRechargeRecord);

        return true;
    }

}
