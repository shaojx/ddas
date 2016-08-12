package com.ddas.sns.vip.domain;

import java.util.ArrayList;
import java.util.List;

public class UserVipInfoCriteria {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected List<Criteria> oredCriteria;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected int limitStart = -1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected int limitEnd = -1;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public UserVipInfoCriteria() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void setLimitStart(int limitStart) {
        this.limitStart=limitStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public int getLimitStart() {
        return limitStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void setLimitEnd(int limitEnd) {
        this.limitEnd=limitEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public int getLimitEnd() {
        return limitEnd;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andVipInfoIdIsNull() {
            addCriterion("vip_info_id is null");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdIsNotNull() {
            addCriterion("vip_info_id is not null");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdEqualTo(String value) {
            addCriterion("vip_info_id =", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdNotEqualTo(String value) {
            addCriterion("vip_info_id <>", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdGreaterThan(String value) {
            addCriterion("vip_info_id >", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdGreaterThanOrEqualTo(String value) {
            addCriterion("vip_info_id >=", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdLessThan(String value) {
            addCriterion("vip_info_id <", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdLessThanOrEqualTo(String value) {
            addCriterion("vip_info_id <=", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdLike(String value) {
            addCriterion("vip_info_id like", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdNotLike(String value) {
            addCriterion("vip_info_id not like", value, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdIn(List<String> values) {
            addCriterion("vip_info_id in", values, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdNotIn(List<String> values) {
            addCriterion("vip_info_id not in", values, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdBetween(String value1, String value2) {
            addCriterion("vip_info_id between", value1, value2, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andVipInfoIdNotBetween(String value1, String value2) {
            addCriterion("vip_info_id not between", value1, value2, "vipInfoId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("user_id like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("user_id not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeIsNull() {
            addCriterion("vip_type_code is null");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeIsNotNull() {
            addCriterion("vip_type_code is not null");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeEqualTo(String value) {
            addCriterion("vip_type_code =", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeNotEqualTo(String value) {
            addCriterion("vip_type_code <>", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeGreaterThan(String value) {
            addCriterion("vip_type_code >", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeGreaterThanOrEqualTo(String value) {
            addCriterion("vip_type_code >=", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeLessThan(String value) {
            addCriterion("vip_type_code <", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeLessThanOrEqualTo(String value) {
            addCriterion("vip_type_code <=", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeLike(String value) {
            addCriterion("vip_type_code like", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeNotLike(String value) {
            addCriterion("vip_type_code not like", value, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeIn(List<String> values) {
            addCriterion("vip_type_code in", values, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeNotIn(List<String> values) {
            addCriterion("vip_type_code not in", values, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeBetween(String value1, String value2) {
            addCriterion("vip_type_code between", value1, value2, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipTypeCodeNotBetween(String value1, String value2) {
            addCriterion("vip_type_code not between", value1, value2, "vipTypeCode");
            return (Criteria) this;
        }

        public Criteria andVipStartDateIsNull() {
            addCriterion("vip_start_date is null");
            return (Criteria) this;
        }

        public Criteria andVipStartDateIsNotNull() {
            addCriterion("vip_start_date is not null");
            return (Criteria) this;
        }

        public Criteria andVipStartDateEqualTo(String value) {
            addCriterion("vip_start_date =", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateNotEqualTo(String value) {
            addCriterion("vip_start_date <>", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateGreaterThan(String value) {
            addCriterion("vip_start_date >", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateGreaterThanOrEqualTo(String value) {
            addCriterion("vip_start_date >=", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateLessThan(String value) {
            addCriterion("vip_start_date <", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateLessThanOrEqualTo(String value) {
            addCriterion("vip_start_date <=", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateLike(String value) {
            addCriterion("vip_start_date like", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateNotLike(String value) {
            addCriterion("vip_start_date not like", value, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateIn(List<String> values) {
            addCriterion("vip_start_date in", values, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateNotIn(List<String> values) {
            addCriterion("vip_start_date not in", values, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateBetween(String value1, String value2) {
            addCriterion("vip_start_date between", value1, value2, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipStartDateNotBetween(String value1, String value2) {
            addCriterion("vip_start_date not between", value1, value2, "vipStartDate");
            return (Criteria) this;
        }

        public Criteria andVipEndStartIsNull() {
            addCriterion("vip_end_start is null");
            return (Criteria) this;
        }

        public Criteria andVipEndStartIsNotNull() {
            addCriterion("vip_end_start is not null");
            return (Criteria) this;
        }

        public Criteria andVipEndStartEqualTo(String value) {
            addCriterion("vip_end_start =", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartNotEqualTo(String value) {
            addCriterion("vip_end_start <>", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartGreaterThan(String value) {
            addCriterion("vip_end_start >", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartGreaterThanOrEqualTo(String value) {
            addCriterion("vip_end_start >=", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartLessThan(String value) {
            addCriterion("vip_end_start <", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartLessThanOrEqualTo(String value) {
            addCriterion("vip_end_start <=", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartLike(String value) {
            addCriterion("vip_end_start like", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartNotLike(String value) {
            addCriterion("vip_end_start not like", value, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartIn(List<String> values) {
            addCriterion("vip_end_start in", values, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartNotIn(List<String> values) {
            addCriterion("vip_end_start not in", values, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartBetween(String value1, String value2) {
            addCriterion("vip_end_start between", value1, value2, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andVipEndStartNotBetween(String value1, String value2) {
            addCriterion("vip_end_start not between", value1, value2, "vipEndStart");
            return (Criteria) this;
        }

        public Criteria andDescribIsNull() {
            addCriterion("describ is null");
            return (Criteria) this;
        }

        public Criteria andDescribIsNotNull() {
            addCriterion("describ is not null");
            return (Criteria) this;
        }

        public Criteria andDescribEqualTo(String value) {
            addCriterion("describ =", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribNotEqualTo(String value) {
            addCriterion("describ <>", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribGreaterThan(String value) {
            addCriterion("describ >", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribGreaterThanOrEqualTo(String value) {
            addCriterion("describ >=", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribLessThan(String value) {
            addCriterion("describ <", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribLessThanOrEqualTo(String value) {
            addCriterion("describ <=", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribLike(String value) {
            addCriterion("describ like", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribNotLike(String value) {
            addCriterion("describ not like", value, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribIn(List<String> values) {
            addCriterion("describ in", values, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribNotIn(List<String> values) {
            addCriterion("describ not in", values, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribBetween(String value1, String value2) {
            addCriterion("describ between", value1, value2, "describ");
            return (Criteria) this;
        }

        public Criteria andDescribNotBetween(String value1, String value2) {
            addCriterion("describ not between", value1, value2, "describ");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table user_vip_info
     *
     * @mbggenerated do_not_delete_during_merge Fri Aug 12 22:17:40 CST 2016
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }

        public Criteria andVipInfoIdLikeInsensitive(String value) {
            addCriterion("upper(vip_info_id) like", value.toUpperCase(), "vipInfoId");
            return this;
        }

        public Criteria andUserIdLikeInsensitive(String value) {
            addCriterion("upper(user_id) like", value.toUpperCase(), "userId");
            return this;
        }

        public Criteria andVipTypeCodeLikeInsensitive(String value) {
            addCriterion("upper(vip_type_code) like", value.toUpperCase(), "vipTypeCode");
            return this;
        }

        public Criteria andVipStartDateLikeInsensitive(String value) {
            addCriterion("upper(vip_start_date) like", value.toUpperCase(), "vipStartDate");
            return this;
        }

        public Criteria andVipEndStartLikeInsensitive(String value) {
            addCriterion("upper(vip_end_start) like", value.toUpperCase(), "vipEndStart");
            return this;
        }

        public Criteria andDescribLikeInsensitive(String value) {
            addCriterion("upper(describ) like", value.toUpperCase(), "describ");
            return this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table user_vip_info
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}