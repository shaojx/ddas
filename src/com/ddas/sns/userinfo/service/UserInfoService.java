/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userinfo.service;

import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.domain.UserInfoCriteria;
import com.ddas.sns.userinfo.mapper.UserInfoMapper;
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
public class UserInfoService {
    @Resource
    private UserInfoMapper userInfoMapper;

    /**
     * 用户登录
     *
     * @param userInfo 用户信息
     * @return boolean {false}登录失败,{true}登录成功
     * @author shaojx
     * @date 2016/7/9 14:05
     * @version 1.0
     * @since 1.6
     */
    public UserInfo loginInProxy(UserInfo userInfo) {
        if (userInfo == null) {
            return null;
        }
        UserInfoCriteria example = new UserInfoCriteria();
        UserInfoCriteria.Criteria criteria = example.createCriteria();
        criteria.andUserNameEqualTo(userInfo.getUserName()).andUserPwdEqualTo(userInfo.getUserPwd());
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        if (userInfos != null && userInfos.size() == 1) {//有且只有一条记录
            return userInfos.get(0);
        }
        return null;
    }
}
