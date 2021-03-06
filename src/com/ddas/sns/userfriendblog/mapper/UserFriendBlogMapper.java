package com.ddas.sns.userfriendblog.mapper;

import com.ddas.common.page.Page;
import com.ddas.sns.userfriendblog.dto.UserFriendBlogDto;

import java.util.List;

public interface UserFriendBlogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Thu Jul 07 15:08:48 CST 2016
     */
    public int getCount(Page page);
    public List<UserFriendBlogDto> queryByPage(Page page);
}