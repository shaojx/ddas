package com.ddas.sns.userrechargerecords.domain;

import java.io.Serializable;

public class UserRechargeRecord implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_recharge_records.ur_id
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private String urId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_recharge_records.recharge_mount
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private String rechargeMount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_recharge_records.recharge_time
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private String rechargeTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_recharge_records.user_id
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_recharge_records.recharge_to_user
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private String rechargeToUser;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_recharge_records.recharge_status
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private String rechargeStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_recharge_records
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_recharge_records.ur_id
     *
     * @return the value of user_recharge_records.ur_id
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public String getUrId() {
        return urId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_recharge_records.ur_id
     *
     * @param urId the value for user_recharge_records.ur_id
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public void setUrId(String urId) {
        this.urId = urId == null ? null : urId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_recharge_records.recharge_mount
     *
     * @return the value of user_recharge_records.recharge_mount
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public String getRechargeMount() {
        return rechargeMount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_recharge_records.recharge_mount
     *
     * @param rechargeMount the value for user_recharge_records.recharge_mount
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public void setRechargeMount(String rechargeMount) {
        this.rechargeMount = rechargeMount == null ? null : rechargeMount.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_recharge_records.recharge_time
     *
     * @return the value of user_recharge_records.recharge_time
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public String getRechargeTime() {
        return rechargeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_recharge_records.recharge_time
     *
     * @param rechargeTime the value for user_recharge_records.recharge_time
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public void setRechargeTime(String rechargeTime) {
        this.rechargeTime = rechargeTime == null ? null : rechargeTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_recharge_records.user_id
     *
     * @return the value of user_recharge_records.user_id
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_recharge_records.user_id
     *
     * @param userId the value for user_recharge_records.user_id
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_recharge_records.recharge_to_user
     *
     * @return the value of user_recharge_records.recharge_to_user
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public String getRechargeToUser() {
        return rechargeToUser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_recharge_records.recharge_to_user
     *
     * @param rechargeToUser the value for user_recharge_records.recharge_to_user
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public void setRechargeToUser(String rechargeToUser) {
        this.rechargeToUser = rechargeToUser == null ? null : rechargeToUser.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_recharge_records.recharge_status
     *
     * @return the value of user_recharge_records.recharge_status
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public String getRechargeStatus() {
        return rechargeStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_recharge_records.recharge_status
     *
     * @param rechargeStatus the value for user_recharge_records.recharge_status
     *
     * @mbggenerated Thu Sep 15 16:15:26 CST 2016
     */
    public void setRechargeStatus(String rechargeStatus) {
        this.rechargeStatus = rechargeStatus == null ? null : rechargeStatus.trim();
    }
}