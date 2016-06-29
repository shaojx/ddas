/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfo.java
 * 包名:		 com.ddas.sns.friends.domain
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userFriend.domain;

/**
 * ClassName:	UserFriend
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 13:48
 * @since JDK 1.6      
 */
public class UserFriend {
    private String userId;
    private String friendId;
    private String friendName;
    private String groupId;
    private String groupName;
    private String createdTime;
    private String updatedTime;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFriendId() {
        return friendId;
    }

    public void setFriendId(String friendId) {
        this.friendId = friendId;
    }

    public String getFriendName() {
        return friendName;
    }

    public void setFriendName(String friendName) {
        this.friendName = friendName;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime;
    }

    public String getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(String updatedTime) {
        this.updatedTime = updatedTime;
    }
}

