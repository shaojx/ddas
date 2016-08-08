package com.ddas.sns.staticgift.mapper;

import com.ddas.sns.staticgift.domain.StaticGift;
import com.ddas.sns.staticgift.domain.StaticGiftCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StaticGiftMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int countByExample(StaticGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int deleteByExample(StaticGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int deleteByPrimaryKey(String giftId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int insert(StaticGift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int insertSelective(StaticGift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    List<StaticGift> selectByExample(StaticGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    StaticGift selectByPrimaryKey(String giftId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int updateByExampleSelective(@Param("record") StaticGift record, @Param("example") StaticGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int updateByExample(@Param("record") StaticGift record, @Param("example") StaticGiftCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int updateByPrimaryKeySelective(StaticGift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gift
     *
     * @mbggenerated Sun Aug 07 18:43:45 CST 2016
     */
    int updateByPrimaryKey(StaticGift record);
}