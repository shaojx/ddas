package com.ddas.sns.vip.mapper;

import com.ddas.sns.vip.domain.VipTypes;
import com.ddas.sns.vip.domain.VipTypesCriteria;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VipTypesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int countByExample(VipTypesCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int deleteByExample(VipTypesCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int deleteByPrimaryKey(String vipId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int insert(VipTypes record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int insertSelective(VipTypes record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    List<VipTypes> selectByExample(VipTypesCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    VipTypes selectByPrimaryKey(String vipId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int updateByExampleSelective(@Param("record") VipTypes record, @Param("example") VipTypesCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int updateByExample(@Param("record") VipTypes record, @Param("example") VipTypesCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int updateByPrimaryKeySelective(VipTypes record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    int updateByPrimaryKey(VipTypes record);
}