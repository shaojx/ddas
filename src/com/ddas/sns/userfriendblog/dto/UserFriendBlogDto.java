package com.ddas.sns.userfriendblog.dto;

import com.ddas.sns.userblog.domain.UserBlog;
import com.ddas.sns.userfriend.domain.UserFriend;

import java.io.Serializable;

public class UserFriendBlogDto implements Serializable {
    private UserFriend userFriend;
    private UserBlog userBlog;

    public UserFriend getUserFriend() {
        return userFriend;
    }

    public void setUserFriend(UserFriend userFriend) {
        this.userFriend = userFriend;
    }

    public UserBlog getUserBlog() {
        return userBlog;
    }

    public void setUserBlog(UserBlog userBlog) {
        this.userBlog = userBlog;
    }
}