/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoImpl.java
 * 包名:		 com.ddas.sns.friends.impl
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.friends.impl;

import com.ddas.sns.friends.domain.UserInfo;
import com.ddas.sns.friends.mapper.UserInfoMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName:	UserInfoImpl
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:56
 * @since JDK 1.6      
 */
@Repository
public class UserInfoImpl {
    @Resource
    private UserInfoMapper userInfoMapper;
    public List<UserInfo> getUserInfo(){
      return   userInfoMapper.getUserInfo();
    }
}
