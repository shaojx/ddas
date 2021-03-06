package com.ddas.sns.gift.domain;

import java.io.Serializable;

public class UserGift implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.ug_id
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String ugId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.gift_sender
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String giftSender;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.gift_receiver
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String giftReceiver;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.gift_count
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String giftCount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.gift_id
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String giftId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.created_time
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String createdTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.updated_time
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String updatedTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_gift.gift_total_price
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private String giftTotalPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.ug_id
     *
     * @return the value of user_gift.ug_id
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getUgId() {
        return ugId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.ug_id
     *
     * @param ugId the value for user_gift.ug_id
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setUgId(String ugId) {
        this.ugId = ugId == null ? null : ugId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.gift_sender
     *
     * @return the value of user_gift.gift_sender
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getGiftSender() {
        return giftSender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.gift_sender
     *
     * @param giftSender the value for user_gift.gift_sender
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setGiftSender(String giftSender) {
        this.giftSender = giftSender == null ? null : giftSender.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.gift_receiver
     *
     * @return the value of user_gift.gift_receiver
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getGiftReceiver() {
        return giftReceiver;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.gift_receiver
     *
     * @param giftReceiver the value for user_gift.gift_receiver
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setGiftReceiver(String giftReceiver) {
        this.giftReceiver = giftReceiver == null ? null : giftReceiver.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.gift_count
     *
     * @return the value of user_gift.gift_count
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getGiftCount() {
        return giftCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.gift_count
     *
     * @param giftCount the value for user_gift.gift_count
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setGiftCount(String giftCount) {
        this.giftCount = giftCount == null ? null : giftCount.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.gift_id
     *
     * @return the value of user_gift.gift_id
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getGiftId() {
        return giftId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.gift_id
     *
     * @param giftId the value for user_gift.gift_id
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setGiftId(String giftId) {
        this.giftId = giftId == null ? null : giftId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.created_time
     *
     * @return the value of user_gift.created_time
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getCreatedTime() {
        return createdTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.created_time
     *
     * @param createdTime the value for user_gift.created_time
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime == null ? null : createdTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.updated_time
     *
     * @return the value of user_gift.updated_time
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getUpdatedTime() {
        return updatedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.updated_time
     *
     * @param updatedTime the value for user_gift.updated_time
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setUpdatedTime(String updatedTime) {
        this.updatedTime = updatedTime == null ? null : updatedTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_gift.gift_total_price
     *
     * @return the value of user_gift.gift_total_price
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public String getGiftTotalPrice() {
        return giftTotalPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_gift.gift_total_price
     *
     * @param giftTotalPrice the value for user_gift.gift_total_price
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    public void setGiftTotalPrice(String giftTotalPrice) {
        this.giftTotalPrice = giftTotalPrice == null ? null : giftTotalPrice.trim();
    }
}