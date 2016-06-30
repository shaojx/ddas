/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoMapper.java
 * 包名:		 com.ddas.sns.friends.mapper
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userfriend.mapper;

import com.ddas.sns.userfriend.domain.UserFriend;

import java.util.List;

/**
 * ClassName:	UserFriendMapper
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:50
 * @since JDK 1.6      
 */
public interface UserFriendMapper {
     public List<UserFriend> getUserFriendList(String userId);
     public void update(UserFriend userFriend);
}
