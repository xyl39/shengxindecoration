package com.aistar.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SystemMessageExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public SystemMessageExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
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
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
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

        public Criteria andSmIdIsNull() {
            addCriterion("sm_id is null");
            return (Criteria) this;
        }

        public Criteria andSmIdIsNotNull() {
            addCriterion("sm_id is not null");
            return (Criteria) this;
        }

        public Criteria andSmIdEqualTo(Integer value) {
            addCriterion("sm_id =", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdNotEqualTo(Integer value) {
            addCriterion("sm_id <>", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdGreaterThan(Integer value) {
            addCriterion("sm_id >", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sm_id >=", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdLessThan(Integer value) {
            addCriterion("sm_id <", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdLessThanOrEqualTo(Integer value) {
            addCriterion("sm_id <=", value, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdIn(List<Integer> values) {
            addCriterion("sm_id in", values, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdNotIn(List<Integer> values) {
            addCriterion("sm_id not in", values, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdBetween(Integer value1, Integer value2) {
            addCriterion("sm_id between", value1, value2, "smId");
            return (Criteria) this;
        }

        public Criteria andSmIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sm_id not between", value1, value2, "smId");
            return (Criteria) this;
        }

        public Criteria andSmNameIsNull() {
            addCriterion("sm_name is null");
            return (Criteria) this;
        }

        public Criteria andSmNameIsNotNull() {
            addCriterion("sm_name is not null");
            return (Criteria) this;
        }

        public Criteria andSmNameEqualTo(String value) {
            addCriterion("sm_name =", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameNotEqualTo(String value) {
            addCriterion("sm_name <>", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameGreaterThan(String value) {
            addCriterion("sm_name >", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameGreaterThanOrEqualTo(String value) {
            addCriterion("sm_name >=", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameLessThan(String value) {
            addCriterion("sm_name <", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameLessThanOrEqualTo(String value) {
            addCriterion("sm_name <=", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameLike(String value) {
            addCriterion("sm_name like", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameNotLike(String value) {
            addCriterion("sm_name not like", value, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameIn(List<String> values) {
            addCriterion("sm_name in", values, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameNotIn(List<String> values) {
            addCriterion("sm_name not in", values, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameBetween(String value1, String value2) {
            addCriterion("sm_name between", value1, value2, "smName");
            return (Criteria) this;
        }

        public Criteria andSmNameNotBetween(String value1, String value2) {
            addCriterion("sm_name not between", value1, value2, "smName");
            return (Criteria) this;
        }

        public Criteria andSmContentIsNull() {
            addCriterion("sm_content is null");
            return (Criteria) this;
        }

        public Criteria andSmContentIsNotNull() {
            addCriterion("sm_content is not null");
            return (Criteria) this;
        }

        public Criteria andSmContentEqualTo(String value) {
            addCriterion("sm_content =", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentNotEqualTo(String value) {
            addCriterion("sm_content <>", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentGreaterThan(String value) {
            addCriterion("sm_content >", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentGreaterThanOrEqualTo(String value) {
            addCriterion("sm_content >=", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentLessThan(String value) {
            addCriterion("sm_content <", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentLessThanOrEqualTo(String value) {
            addCriterion("sm_content <=", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentLike(String value) {
            addCriterion("sm_content like", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentNotLike(String value) {
            addCriterion("sm_content not like", value, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentIn(List<String> values) {
            addCriterion("sm_content in", values, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentNotIn(List<String> values) {
            addCriterion("sm_content not in", values, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentBetween(String value1, String value2) {
            addCriterion("sm_content between", value1, value2, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmContentNotBetween(String value1, String value2) {
            addCriterion("sm_content not between", value1, value2, "smContent");
            return (Criteria) this;
        }

        public Criteria andSmDateIsNull() {
            addCriterion("sm_date is null");
            return (Criteria) this;
        }

        public Criteria andSmDateIsNotNull() {
            addCriterion("sm_date is not null");
            return (Criteria) this;
        }

        public Criteria andSmDateEqualTo(Date value) {
            addCriterion("sm_date =", value, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateNotEqualTo(Date value) {
            addCriterion("sm_date <>", value, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateGreaterThan(Date value) {
            addCriterion("sm_date >", value, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateGreaterThanOrEqualTo(Date value) {
            addCriterion("sm_date >=", value, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateLessThan(Date value) {
            addCriterion("sm_date <", value, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateLessThanOrEqualTo(Date value) {
            addCriterion("sm_date <=", value, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateIn(List<Date> values) {
            addCriterion("sm_date in", values, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateNotIn(List<Date> values) {
            addCriterion("sm_date not in", values, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateBetween(Date value1, Date value2) {
            addCriterion("sm_date between", value1, value2, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmDateNotBetween(Date value1, Date value2) {
            addCriterion("sm_date not between", value1, value2, "smDate");
            return (Criteria) this;
        }

        public Criteria andSmStatusIsNull() {
            addCriterion("sm_status is null");
            return (Criteria) this;
        }

        public Criteria andSmStatusIsNotNull() {
            addCriterion("sm_status is not null");
            return (Criteria) this;
        }

        public Criteria andSmStatusEqualTo(Integer value) {
            addCriterion("sm_status =", value, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusNotEqualTo(Integer value) {
            addCriterion("sm_status <>", value, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusGreaterThan(Integer value) {
            addCriterion("sm_status >", value, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("sm_status >=", value, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusLessThan(Integer value) {
            addCriterion("sm_status <", value, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusLessThanOrEqualTo(Integer value) {
            addCriterion("sm_status <=", value, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusIn(List<Integer> values) {
            addCriterion("sm_status in", values, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusNotIn(List<Integer> values) {
            addCriterion("sm_status not in", values, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusBetween(Integer value1, Integer value2) {
            addCriterion("sm_status between", value1, value2, "smStatus");
            return (Criteria) this;
        }

        public Criteria andSmStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("sm_status not between", value1, value2, "smStatus");
            return (Criteria) this;
        }

        public Criteria andOther1IsNull() {
            addCriterion("other1 is null");
            return (Criteria) this;
        }

        public Criteria andOther1IsNotNull() {
            addCriterion("other1 is not null");
            return (Criteria) this;
        }

        public Criteria andOther1EqualTo(String value) {
            addCriterion("other1 =", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1NotEqualTo(String value) {
            addCriterion("other1 <>", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1GreaterThan(String value) {
            addCriterion("other1 >", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1GreaterThanOrEqualTo(String value) {
            addCriterion("other1 >=", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1LessThan(String value) {
            addCriterion("other1 <", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1LessThanOrEqualTo(String value) {
            addCriterion("other1 <=", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1Like(String value) {
            addCriterion("other1 like", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1NotLike(String value) {
            addCriterion("other1 not like", value, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1In(List<String> values) {
            addCriterion("other1 in", values, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1NotIn(List<String> values) {
            addCriterion("other1 not in", values, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1Between(String value1, String value2) {
            addCriterion("other1 between", value1, value2, "other1");
            return (Criteria) this;
        }

        public Criteria andOther1NotBetween(String value1, String value2) {
            addCriterion("other1 not between", value1, value2, "other1");
            return (Criteria) this;
        }

        public Criteria andOther2IsNull() {
            addCriterion("other2 is null");
            return (Criteria) this;
        }

        public Criteria andOther2IsNotNull() {
            addCriterion("other2 is not null");
            return (Criteria) this;
        }

        public Criteria andOther2EqualTo(String value) {
            addCriterion("other2 =", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2NotEqualTo(String value) {
            addCriterion("other2 <>", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2GreaterThan(String value) {
            addCriterion("other2 >", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2GreaterThanOrEqualTo(String value) {
            addCriterion("other2 >=", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2LessThan(String value) {
            addCriterion("other2 <", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2LessThanOrEqualTo(String value) {
            addCriterion("other2 <=", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2Like(String value) {
            addCriterion("other2 like", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2NotLike(String value) {
            addCriterion("other2 not like", value, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2In(List<String> values) {
            addCriterion("other2 in", values, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2NotIn(List<String> values) {
            addCriterion("other2 not in", values, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2Between(String value1, String value2) {
            addCriterion("other2 between", value1, value2, "other2");
            return (Criteria) this;
        }

        public Criteria andOther2NotBetween(String value1, String value2) {
            addCriterion("other2 not between", value1, value2, "other2");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table system_message
     *
     * @mbggenerated do_not_delete_during_merge Sat Sep 28 16:46:13 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table system_message
     *
     * @mbggenerated Sat Sep 28 16:46:13 CST 2019
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