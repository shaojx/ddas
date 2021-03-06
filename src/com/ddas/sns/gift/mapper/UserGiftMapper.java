package com.ddas.sns.gift.mapper;

import com.ddas.sns.admin.dto.UserRechargeRecordDto;
import com.ddas.sns.gift.domain.UserGift;
import com.ddas.sns.gift.domain.UserGiftCriteria;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface UserGiftMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int countByExample(UserGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int deleteByExample(UserGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int deleteByPrimaryKey(String ugId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int insert(UserGift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int insertSelective(UserGift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    List<UserGift> selectByExample(UserGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    UserGift selectByPrimaryKey(String ugId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int updateByExampleSelective(@Param("record") UserGift record, @Param("example") UserGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int updateByExample(@Param("record") UserGift record, @Param("example") UserGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int updateByPrimaryKeySelective(UserGift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_gift
     *
     * @mbggenerated Tue Aug 09 22:22:17 CST 2016
     */
    int updateByPrimaryKey(UserGift record);

    int countAllRecords(Map<String, Object> queryParams);

    List<UserRechargeRecordDto> selectAllRecords(Map<String, Object> queryParams);
}