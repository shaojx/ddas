package com.ddas.sns.email.domain;

import java.io.Serializable;

public class UserEmail implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.ue_id
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String ueId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.email_sender
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String emailSender;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.email_receiver
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String emailReceiver;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.email_title
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String emailTitle;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.email_content
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String emailContent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.email_status
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String emailStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.created_time
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String createdTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_email.updated_time
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private String updatedTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_email
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.ue_id
     *
     * @return the value of user_email.ue_id
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getUeId() {
        return ueId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.ue_id
     *
     * @param ueId the value for user_email.ue_id
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setUeId(String ueId) {
        this.ueId = ueId == null ? null : ueId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.email_sender
     *
     * @return the value of user_email.email_sender
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getEmailSender() {
        return emailSender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.email_sender
     *
     * @param emailSender the value for user_email.email_sender
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setEmailSender(String emailSender) {
        this.emailSender = emailSender == null ? null : emailSender.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.email_receiver
     *
     * @return the value of user_email.email_receiver
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getEmailReceiver() {
        return emailReceiver;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.email_receiver
     *
     * @param emailReceiver the value for user_email.email_receiver
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setEmailReceiver(String emailReceiver) {
        this.emailReceiver = emailReceiver == null ? null : emailReceiver.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.email_title
     *
     * @return the value of user_email.email_title
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getEmailTitle() {
        return emailTitle;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.email_title
     *
     * @param emailTitle the value for user_email.email_title
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setEmailTitle(String emailTitle) {
        this.emailTitle = emailTitle == null ? null : emailTitle.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.email_content
     *
     * @return the value of user_email.email_content
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getEmailContent() {
        return emailContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.email_content
     *
     * @param emailContent the value for user_email.email_content
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setEmailContent(String emailContent) {
        this.emailContent = emailContent == null ? null : emailContent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.email_status
     *
     * @return the value of user_email.email_status
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getEmailStatus() {
        return emailStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.email_status
     *
     * @param emailStatus the value for user_email.email_status
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setEmailStatus(String emailStatus) {
        this.emailStatus = emailStatus == null ? null : emailStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.created_time
     *
     * @return the value of user_email.created_time
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.created_time
     *
     * @param createdTime the value for user_email.created_time
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime == null ? null : createdTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_email.updated_time
     *
     * @return the value of user_email.updated_time
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public String getUpdatedTime() {
        return updatedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_email.updated_time
     *
     * @param updatedTime the value for user_email.updated_time
     *
     * @mbggenerated Mon Jul 25 21:58:53 CST 2016
     */
    public void setUpdatedTime(String updatedTime) {
        this.updatedTime = updatedTime == null ? null : updatedTime.trim();
    }
}