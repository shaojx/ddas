package com.ddas.sns.vip.domain;

import java.util.ArrayList;
import java.util.List;

public class VipTypesCriteria {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    protected List<Criteria> oredCriteria;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    protected int limitStart = -1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    protected int limitEnd = -1;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public VipTypesCriteria() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:40 CST 2016
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
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
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public void setLimitStart(int limitStart) {
        this.limitStart=limitStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public int getLimitStart() {
        return limitStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public void setLimitEnd(int limitEnd) {
        this.limitEnd=limitEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
     */
    public int getLimitEnd() {
        return limitEnd;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
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

        public Criteria andVipIdIsNull() {
            addCriterion("vip_id is null");
            return (Criteria) this;
        }

        public Criteria andVipIdIsNotNull() {
            addCriterion("vip_id is not null");
            return (Criteria) this;
        }

        public Criteria andVipIdEqualTo(String value) {
            addCriterion("vip_id =", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdNotEqualTo(String value) {
            addCriterion("vip_id <>", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdGreaterThan(String value) {
            addCriterion("vip_id >", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdGreaterThanOrEqualTo(String value) {
            addCriterion("vip_id >=", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdLessThan(String value) {
            addCriterion("vip_id <", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdLessThanOrEqualTo(String value) {
            addCriterion("vip_id <=", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdLike(String value) {
            addCriterion("vip_id like", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdNotLike(String value) {
            addCriterion("vip_id not like", value, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdIn(List<String> values) {
            addCriterion("vip_id in", values, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdNotIn(List<String> values) {
            addCriterion("vip_id not in", values, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdBetween(String value1, String value2) {
            addCriterion("vip_id between", value1, value2, "vipId");
            return (Criteria) this;
        }

        public Criteria andVipIdNotBetween(String value1, String value2) {
            addCriterion("vip_id not between", value1, value2, "vipId");
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
     * This class corresponds to the database table vip_types
     *
     * @mbggenerated do_not_delete_during_merge Fri Aug 12 22:17:41 CST 2016
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }

        public Criteria andVipIdLikeInsensitive(String value) {
            addCriterion("upper(vip_id) like", value.toUpperCase(), "vipId");
            return this;
        }

        public Criteria andVipTypeCodeLikeInsensitive(String value) {
            addCriterion("upper(vip_type_code) like", value.toUpperCase(), "vipTypeCode");
            return this;
        }

        public Criteria andDescribLikeInsensitive(String value) {
            addCriterion("upper(describ) like", value.toUpperCase(), "describ");
            return this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table vip_types
     *
     * @mbggenerated Fri Aug 12 22:17:41 CST 2016
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