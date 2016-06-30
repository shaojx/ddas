/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userfriend.service;

import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.impl.UserFriendImpl;
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
    private UserFriendImpl userFriendImpl;
    public List<UserFriend> getUserFriendList(String userId){
        return userFriendImpl.getUserFriendList(userId);
    }

    public void update(UserFriend userFriend){
        userFriendImpl.update(userFriend);
    }
}
