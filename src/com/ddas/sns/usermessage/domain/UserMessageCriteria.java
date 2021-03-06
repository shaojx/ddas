package com.ddas.sns.usermessage.domain;

import java.util.ArrayList;
import java.util.List;

public class UserMessageCriteria {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    protected List<Criteria> oredCriteria;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    protected int limitStart = -1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    protected int limitEnd = -1;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public UserMessageCriteria() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
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
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setLimitStart(int limitStart) {
        this.limitStart=limitStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public int getLimitStart() {
        return limitStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public void setLimitEnd(int limitEnd) {
        this.limitEnd=limitEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
     */
    public int getLimitEnd() {
        return limitEnd;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
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

        public Criteria andUmidIsNull() {
            addCriterion("umId is null");
            return (Criteria) this;
        }

        public Criteria andUmidIsNotNull() {
            addCriterion("umId is not null");
            return (Criteria) this;
        }

        public Criteria andUmidEqualTo(String value) {
            addCriterion("umId =", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidNotEqualTo(String value) {
            addCriterion("umId <>", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidGreaterThan(String value) {
            addCriterion("umId >", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidGreaterThanOrEqualTo(String value) {
            addCriterion("umId >=", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidLessThan(String value) {
            addCriterion("umId <", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidLessThanOrEqualTo(String value) {
            addCriterion("umId <=", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidLike(String value) {
            addCriterion("umId like", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidNotLike(String value) {
            addCriterion("umId not like", value, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidIn(List<String> values) {
            addCriterion("umId in", values, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidNotIn(List<String> values) {
            addCriterion("umId not in", values, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidBetween(String value1, String value2) {
            addCriterion("umId between", value1, value2, "umid");
            return (Criteria) this;
        }

        public Criteria andUmidNotBetween(String value1, String value2) {
            addCriterion("umId not between", value1, value2, "umid");
            return (Criteria) this;
        }

        public Criteria andMessageByIsNull() {
            addCriterion("message_by is null");
            return (Criteria) this;
        }

        public Criteria andMessageByIsNotNull() {
            addCriterion("message_by is not null");
            return (Criteria) this;
        }

        public Criteria andMessageByEqualTo(String value) {
            addCriterion("message_by =", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByNotEqualTo(String value) {
            addCriterion("message_by <>", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByGreaterThan(String value) {
            addCriterion("message_by >", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByGreaterThanOrEqualTo(String value) {
            addCriterion("message_by >=", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByLessThan(String value) {
            addCriterion("message_by <", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByLessThanOrEqualTo(String value) {
            addCriterion("message_by <=", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByLike(String value) {
            addCriterion("message_by like", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByNotLike(String value) {
            addCriterion("message_by not like", value, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByIn(List<String> values) {
            addCriterion("message_by in", values, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByNotIn(List<String> values) {
            addCriterion("message_by not in", values, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByBetween(String value1, String value2) {
            addCriterion("message_by between", value1, value2, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageByNotBetween(String value1, String value2) {
            addCriterion("message_by not between", value1, value2, "messageBy");
            return (Criteria) this;
        }

        public Criteria andMessageToIsNull() {
            addCriterion("message_to is null");
            return (Criteria) this;
        }

        public Criteria andMessageToIsNotNull() {
            addCriterion("message_to is not null");
            return (Criteria) this;
        }

        public Criteria andMessageToEqualTo(String value) {
            addCriterion("message_to =", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToNotEqualTo(String value) {
            addCriterion("message_to <>", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToGreaterThan(String value) {
            addCriterion("message_to >", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToGreaterThanOrEqualTo(String value) {
            addCriterion("message_to >=", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToLessThan(String value) {
            addCriterion("message_to <", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToLessThanOrEqualTo(String value) {
            addCriterion("message_to <=", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToLike(String value) {
            addCriterion("message_to like", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToNotLike(String value) {
            addCriterion("message_to not like", value, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToIn(List<String> values) {
            addCriterion("message_to in", values, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToNotIn(List<String> values) {
            addCriterion("message_to not in", values, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToBetween(String value1, String value2) {
            addCriterion("message_to between", value1, value2, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageToNotBetween(String value1, String value2) {
            addCriterion("message_to not between", value1, value2, "messageTo");
            return (Criteria) this;
        }

        public Criteria andMessageContentIsNull() {
            addCriterion("message_content is null");
            return (Criteria) this;
        }

        public Criteria andMessageContentIsNotNull() {
            addCriterion("message_content is not null");
            return (Criteria) this;
        }

        public Criteria andMessageContentEqualTo(String value) {
            addCriterion("message_content =", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentNotEqualTo(String value) {
            addCriterion("message_content <>", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentGreaterThan(String value) {
            addCriterion("message_content >", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentGreaterThanOrEqualTo(String value) {
            addCriterion("message_content >=", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentLessThan(String value) {
            addCriterion("message_content <", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentLessThanOrEqualTo(String value) {
            addCriterion("message_content <=", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentLike(String value) {
            addCriterion("message_content like", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentNotLike(String value) {
            addCriterion("message_content not like", value, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentIn(List<String> values) {
            addCriterion("message_content in", values, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentNotIn(List<String> values) {
            addCriterion("message_content not in", values, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentBetween(String value1, String value2) {
            addCriterion("message_content between", value1, value2, "messageContent");
            return (Criteria) this;
        }

        public Criteria andMessageContentNotBetween(String value1, String value2) {
            addCriterion("message_content not between", value1, value2, "messageContent");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeIsNull() {
            addCriterion("created_time is null");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeIsNotNull() {
            addCriterion("created_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeEqualTo(String value) {
            addCriterion("created_time =", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotEqualTo(String value) {
            addCriterion("created_time <>", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeGreaterThan(String value) {
            addCriterion("created_time >", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeGreaterThanOrEqualTo(String value) {
            addCriterion("created_time >=", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeLessThan(String value) {
            addCriterion("created_time <", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeLessThanOrEqualTo(String value) {
            addCriterion("created_time <=", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeLike(String value) {
            addCriterion("created_time like", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotLike(String value) {
            addCriterion("created_time not like", value, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeIn(List<String> values) {
            addCriterion("created_time in", values, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotIn(List<String> values) {
            addCriterion("created_time not in", values, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeBetween(String value1, String value2) {
            addCriterion("created_time between", value1, value2, "createdTime");
            return (Criteria) this;
        }

        public Criteria andCreatedTimeNotBetween(String value1, String value2) {
            addCriterion("created_time not between", value1, value2, "createdTime");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table user_message
     *
     * @mbggenerated do_not_delete_during_merge Mon Jul 11 21:52:52 CST 2016
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }

        public Criteria andUmidLikeInsensitive(String value) {
            addCriterion("upper(umId) like", value.toUpperCase(), "umid");
            return this;
        }

        public Criteria andMessageByLikeInsensitive(String value) {
            addCriterion("upper(message_by) like", value.toUpperCase(), "messageBy");
            return this;
        }

        public Criteria andMessageToLikeInsensitive(String value) {
            addCriterion("upper(message_to) like", value.toUpperCase(), "messageTo");
            return this;
        }

        public Criteria andMessageContentLikeInsensitive(String value) {
            addCriterion("upper(message_content) like", value.toUpperCase(), "messageContent");
            return this;
        }

        public Criteria andCreatedTimeLikeInsensitive(String value) {
            addCriterion("upper(created_time) like", value.toUpperCase(), "createdTime");
            return this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table user_message
     *
     * @mbggenerated Mon Jul 11 21:52:52 CST 2016
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