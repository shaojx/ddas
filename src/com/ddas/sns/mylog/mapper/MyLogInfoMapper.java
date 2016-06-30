package com.ddas.sns.mylog.mapper;

import com.ddas.sns.mylog.domain.MyLogInfo;
import com.ddas.sns.mylog.domain.MyLogInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MyLogInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int countByExample(MyLogInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int deleteByExample(MyLogInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int deleteByPrimaryKey(String myLogId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int insert(MyLogInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int insertSelective(MyLogInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    List<MyLogInfo> selectByExample(MyLogInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    MyLogInfo selectByPrimaryKey(String myLogId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int updateByExampleSelective(@Param("record") MyLogInfo record, @Param("example") MyLogInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int updateByExample(@Param("record") MyLogInfo record, @Param("example") MyLogInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int updateByPrimaryKeySelective(MyLogInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table my_log
     *
     * @mbggenerated Wed Jun 29 23:01:00 CST 2016
     */
    int updateByPrimaryKey(MyLogInfo record);

    List<MyLogInfo> selectPage(MyLogInfoExample example);
}