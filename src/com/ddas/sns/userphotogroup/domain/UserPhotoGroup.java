package com.ddas.sns.userphotogroup.domain;

import java.io.Serializable;

public class UserPhotoGroup implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.group_id
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String groupId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.user_id
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.group_name
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String groupName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.cover
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String cover;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.privilege
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String privilege;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.description
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.created_time
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String createdTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.updated_time
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String updatedTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_photo_group.tags
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private String tags;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_photo_group
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.group_id
     *
     * @return the value of user_photo_group.group_id
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getGroupId() {
        return groupId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.group_id
     *
     * @param groupId the value for user_photo_group.group_id
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setGroupId(String groupId) {
        this.groupId = groupId == null ? null : groupId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.user_id
     *
     * @return the value of user_photo_group.user_id
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.user_id
     *
     * @param userId the value for user_photo_group.user_id
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.group_name
     *
     * @return the value of user_photo_group.group_name
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getGroupName() {
        return groupName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.group_name
     *
     * @param groupName the value for user_photo_group.group_name
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setGroupName(String groupName) {
        this.groupName = groupName == null ? null : groupName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.cover
     *
     * @return the value of user_photo_group.cover
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getCover() {
        return cover;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.cover
     *
     * @param cover the value for user_photo_group.cover
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setCover(String cover) {
        this.cover = cover == null ? null : cover.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.privilege
     *
     * @return the value of user_photo_group.privilege
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getPrivilege() {
        return privilege;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.privilege
     *
     * @param privilege the value for user_photo_group.privilege
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setPrivilege(String privilege) {
        this.privilege = privilege == null ? null : privilege.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.description
     *
     * @return the value of user_photo_group.description
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.description
     *
     * @param description the value for user_photo_group.description
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.created_time
     *
     * @return the value of user_photo_group.created_time
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.created_time
     *
     * @param createdTime the value for user_photo_group.created_time
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime == null ? null : createdTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.updated_time
     *
     * @return the value of user_photo_group.updated_time
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getUpdatedTime() {
        return updatedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.updated_time
     *
     * @param updatedTime the value for user_photo_group.updated_time
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setUpdatedTime(String updatedTime) {
        this.updatedTime = updatedTime == null ? null : updatedTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_photo_group.tags
     *
     * @return the value of user_photo_group.tags
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public String getTags() {
        return tags;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_photo_group.tags
     *
     * @param tags the value for user_photo_group.tags
     *
     * @mbggenerated Wed Aug 17 23:24:35 CST 2016
     */
    public void setTags(String tags) {
        this.tags = tags == null ? null : tags.trim();
    }
}