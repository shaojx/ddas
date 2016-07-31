package com.ddas.sns.email.dto;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/7/27.
 */
public class UserEmailDto implements Serializable {
    private String ueId;
    private String emailSenderName;
    private String emailReceiverName;

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

    public String getUeId() {
        return ueId;
    }

    public void setUeId(String ueId) {
        this.ueId = ueId;
    }

    public String getEmailSender() {
        return emailSender;
    }

    public void setEmailSender(String emailSender) {
        this.emailSender = emailSender;
    }

    public String getEmailReceiver() {
        return emailReceiver;
    }

    public void setEmailReceiver(String emailReceiver) {
        this.emailReceiver = emailReceiver;
    }

    public String getEmailTitle() {
        return emailTitle;
    }

    public void setEmailTitle(String emailTitle) {
        this.emailTitle = emailTitle;
    }

    public String getEmailContent() {
        return emailContent;
    }

    public void setEmailContent(String emailContent) {
        this.emailContent = emailContent;
    }

    public String getEmailStatus() {
        return emailStatus;
    }

    public void setEmailStatus(String emailStatus) {
        this.emailStatus = emailStatus;
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

    public String getEmailSenderName() {
        return emailSenderName;
    }

    public void setEmailSenderName(String emailSenderName) {
        this.emailSenderName = emailSenderName;
    }

    public String getEmailReceiverName() {
        return emailReceiverName;
    }

    public void setEmailReceiverName(String emailReceiverName) {
        this.emailReceiverName = emailReceiverName;
    }
}