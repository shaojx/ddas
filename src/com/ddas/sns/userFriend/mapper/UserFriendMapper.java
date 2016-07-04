package com.ddas.sns.userfriend.mapper;

import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.domain.UserFriendCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserFriendMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    int countByExample(UserFriendCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    int deleteByExample(UserFriendCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    int insert(UserFriend record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    int insertSelective(UserFriend record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    List<UserFriend> selectByExample(UserFriendCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    int updateByExampleSelective(@Param("record") UserFriend record, @Param("example") UserFriendCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_friend
     *
     * @mbggenerated Mon Jul 04 15:04:13 CST 2016
     */
    int updateByExample(@Param("record") UserFriend record, @Param("example") UserFriendCriteria example);
}