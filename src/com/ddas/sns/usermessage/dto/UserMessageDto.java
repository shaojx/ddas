package com.ddas.sns.usermessage.dto;

import java.io.Serializable;

public class UserMessageDto implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_message.umId
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    private String umid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_message.message_by
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    private String messageBy;

    private String messageByName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_message.message_to
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    private String messageTo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_message.message_content
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    private String messageContent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_message.created_time
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    private String createdTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_message.umId
     *
     * @return the value of user_message.umId
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public String getUmid() {
        return umid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_message.umId
     *
     * @param umid the value for user_message.umId
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setUmid(String umid) {
        this.umid = umid == null ? null : umid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_message.message_by
     *
     * @return the value of user_message.message_by
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public String getMessageBy() {
        return messageBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_message.message_by
     *
     * @param messageBy the value for user_message.message_by
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setMessageBy(String messageBy) {
        this.messageBy = messageBy == null ? null : messageBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_message.message_to
     *
     * @return the value of user_message.message_to
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public String getMessageTo() {
        return messageTo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_message.message_to
     *
     * @param messageTo the value for user_message.message_to
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setMessageTo(String messageTo) {
        this.messageTo = messageTo == null ? null : messageTo.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_message.message_content
     *
     * @return the value of user_message.message_content
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public String getMessageContent() {
        return messageContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_message.message_content
     *
     * @param messageContent the value for user_message.message_content
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent == null ? null : messageContent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_message.created_time
     *
     * @return the value of user_message.created_time
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public String getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_message.created_time
     *
     * @param createdTime the value for user_message.created_time
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime == null ? null : createdTime.trim();
    }

    public String getMessageByName() {
        return messageByName;
    }

    public void setMessageByName(String messageByName) {
        this.messageByName = messageByName;
    }
}