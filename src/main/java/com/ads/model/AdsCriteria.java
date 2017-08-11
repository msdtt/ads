package com.ads.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class AdsCriteria {
    /**
     * ads表的操作属性:orderByClause
     * 
     */
    protected String orderByClause;

    /**
     * ads表的操作属性:start
     * 
     */
    protected int start;

    /**
     * ads表的操作属性:limit
     * 
     */
    protected int limit;

    /**
     * ads表的操作属性:distinct
     * 
     */
    protected boolean distinct;

    /**
     * ads表的操作属性:oredCriteria
     * 
     */
    protected List<Criteria> oredCriteria;

    /**
     * ads数据表的操作方法: AdsCriteria  
     * 
     */
    public AdsCriteria() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * ads数据表的操作方法: setOrderByClause  
     * 
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * ads数据表的操作方法: getOrderByClause  
     * 
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * ads数据表的操作方法: setStart  
     * 
     */
    public void setStart(int start) {
        this.start = start;
    }

    /**
     * ads数据表的操作方法: getStart  
     * 
     */
    public int getStart() {
        return start;
    }

    /**
     * ads数据表的操作方法: setLimit  
     * 
     */
    public void setLimit(int limit) {
        this.limit = limit;
    }

    /**
     * ads数据表的操作方法: getLimit  
     * 
     */
    public int getLimit() {
        return limit;
    }

    /**
     * ads数据表的操作方法: setDistinct  
     * 
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * ads数据表的操作方法: isDistinct  
     * 
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * ads数据表的操作方法: getOredCriteria  
     * 
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * ads数据表的操作方法: or  
     * 
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * ads数据表的操作方法: or  
     * 
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * ads数据表的操作方法: createCriteria  
     * 
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * ads数据表的操作方法: createCriteriaInternal  
     * 
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * ads数据表的操作方法: clear  
     * 
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * ads表的操作类
     * 
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andAdsNameIsNull() {
            addCriterion("ads_name is null");
            return (Criteria) this;
        }

        public Criteria andAdsNameIsNotNull() {
            addCriterion("ads_name is not null");
            return (Criteria) this;
        }

        public Criteria andAdsNameEqualTo(String value) {
            addCriterion("ads_name =", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameNotEqualTo(String value) {
            addCriterion("ads_name <>", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameGreaterThan(String value) {
            addCriterion("ads_name >", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameGreaterThanOrEqualTo(String value) {
            addCriterion("ads_name >=", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameLessThan(String value) {
            addCriterion("ads_name <", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameLessThanOrEqualTo(String value) {
            addCriterion("ads_name <=", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameLike(String value) {
            addCriterion("ads_name like", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameNotLike(String value) {
            addCriterion("ads_name not like", value, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameIn(List<String> values) {
            addCriterion("ads_name in", values, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameNotIn(List<String> values) {
            addCriterion("ads_name not in", values, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameBetween(String value1, String value2) {
            addCriterion("ads_name between", value1, value2, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsNameNotBetween(String value1, String value2) {
            addCriterion("ads_name not between", value1, value2, "adsName");
            return (Criteria) this;
        }

        public Criteria andAdsTypeIsNull() {
            addCriterion("ads_type is null");
            return (Criteria) this;
        }

        public Criteria andAdsTypeIsNotNull() {
            addCriterion("ads_type is not null");
            return (Criteria) this;
        }

        public Criteria andAdsTypeEqualTo(String value) {
            addCriterion("ads_type =", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeNotEqualTo(String value) {
            addCriterion("ads_type <>", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeGreaterThan(String value) {
            addCriterion("ads_type >", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeGreaterThanOrEqualTo(String value) {
            addCriterion("ads_type >=", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeLessThan(String value) {
            addCriterion("ads_type <", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeLessThanOrEqualTo(String value) {
            addCriterion("ads_type <=", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeLike(String value) {
            addCriterion("ads_type like", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeNotLike(String value) {
            addCriterion("ads_type not like", value, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeIn(List<String> values) {
            addCriterion("ads_type in", values, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeNotIn(List<String> values) {
            addCriterion("ads_type not in", values, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeBetween(String value1, String value2) {
            addCriterion("ads_type between", value1, value2, "adsType");
            return (Criteria) this;
        }

        public Criteria andAdsTypeNotBetween(String value1, String value2) {
            addCriterion("ads_type not between", value1, value2, "adsType");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoIsNull() {
            addCriterion("announce_no is null");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoIsNotNull() {
            addCriterion("announce_no is not null");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoEqualTo(Integer value) {
            addCriterion("announce_no =", value, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoNotEqualTo(Integer value) {
            addCriterion("announce_no <>", value, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoGreaterThan(Integer value) {
            addCriterion("announce_no >", value, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoGreaterThanOrEqualTo(Integer value) {
            addCriterion("announce_no >=", value, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoLessThan(Integer value) {
            addCriterion("announce_no <", value, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoLessThanOrEqualTo(Integer value) {
            addCriterion("announce_no <=", value, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoIn(List<Integer> values) {
            addCriterion("announce_no in", values, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoNotIn(List<Integer> values) {
            addCriterion("announce_no not in", values, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoBetween(Integer value1, Integer value2) {
            addCriterion("announce_no between", value1, value2, "announceNo");
            return (Criteria) this;
        }

        public Criteria andAnnounceNoNotBetween(Integer value1, Integer value2) {
            addCriterion("announce_no not between", value1, value2, "announceNo");
            return (Criteria) this;
        }

        public Criteria andClickNoIsNull() {
            addCriterion("click_no is null");
            return (Criteria) this;
        }

        public Criteria andClickNoIsNotNull() {
            addCriterion("click_no is not null");
            return (Criteria) this;
        }

        public Criteria andClickNoEqualTo(Integer value) {
            addCriterion("click_no =", value, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoNotEqualTo(Integer value) {
            addCriterion("click_no <>", value, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoGreaterThan(Integer value) {
            addCriterion("click_no >", value, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoGreaterThanOrEqualTo(Integer value) {
            addCriterion("click_no >=", value, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoLessThan(Integer value) {
            addCriterion("click_no <", value, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoLessThanOrEqualTo(Integer value) {
            addCriterion("click_no <=", value, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoIn(List<Integer> values) {
            addCriterion("click_no in", values, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoNotIn(List<Integer> values) {
            addCriterion("click_no not in", values, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoBetween(Integer value1, Integer value2) {
            addCriterion("click_no between", value1, value2, "clickNo");
            return (Criteria) this;
        }

        public Criteria andClickNoNotBetween(Integer value1, Integer value2) {
            addCriterion("click_no not between", value1, value2, "clickNo");
            return (Criteria) this;
        }

        public Criteria andPositionIsNull() {
            addCriterion("position is null");
            return (Criteria) this;
        }

        public Criteria andPositionIsNotNull() {
            addCriterion("position is not null");
            return (Criteria) this;
        }

        public Criteria andPositionEqualTo(String value) {
            addCriterion("position =", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotEqualTo(String value) {
            addCriterion("position <>", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThan(String value) {
            addCriterion("position >", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThanOrEqualTo(String value) {
            addCriterion("position >=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThan(String value) {
            addCriterion("position <", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThanOrEqualTo(String value) {
            addCriterion("position <=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLike(String value) {
            addCriterion("position like", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotLike(String value) {
            addCriterion("position not like", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionIn(List<String> values) {
            addCriterion("position in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotIn(List<String> values) {
            addCriterion("position not in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionBetween(String value1, String value2) {
            addCriterion("position between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotBetween(String value1, String value2) {
            addCriterion("position not between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andShowRateIsNull() {
            addCriterion("show_rate is null");
            return (Criteria) this;
        }

        public Criteria andShowRateIsNotNull() {
            addCriterion("show_rate is not null");
            return (Criteria) this;
        }

        public Criteria andShowRateEqualTo(BigDecimal value) {
            addCriterion("show_rate =", value, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateNotEqualTo(BigDecimal value) {
            addCriterion("show_rate <>", value, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateGreaterThan(BigDecimal value) {
            addCriterion("show_rate >", value, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("show_rate >=", value, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateLessThan(BigDecimal value) {
            addCriterion("show_rate <", value, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateLessThanOrEqualTo(BigDecimal value) {
            addCriterion("show_rate <=", value, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateIn(List<BigDecimal> values) {
            addCriterion("show_rate in", values, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateNotIn(List<BigDecimal> values) {
            addCriterion("show_rate not in", values, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("show_rate between", value1, value2, "showRate");
            return (Criteria) this;
        }

        public Criteria andShowRateNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("show_rate not between", value1, value2, "showRate");
            return (Criteria) this;
        }

        public Criteria andValidateTimeIsNull() {
            addCriterion("validate_time is null");
            return (Criteria) this;
        }

        public Criteria andValidateTimeIsNotNull() {
            addCriterion("validate_time is not null");
            return (Criteria) this;
        }

        public Criteria andValidateTimeEqualTo(Long value) {
            addCriterion("validate_time =", value, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeNotEqualTo(Long value) {
            addCriterion("validate_time <>", value, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeGreaterThan(Long value) {
            addCriterion("validate_time >", value, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeGreaterThanOrEqualTo(Long value) {
            addCriterion("validate_time >=", value, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeLessThan(Long value) {
            addCriterion("validate_time <", value, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeLessThanOrEqualTo(Long value) {
            addCriterion("validate_time <=", value, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeIn(List<Long> values) {
            addCriterion("validate_time in", values, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeNotIn(List<Long> values) {
            addCriterion("validate_time not in", values, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeBetween(Long value1, Long value2) {
            addCriterion("validate_time between", value1, value2, "validateTime");
            return (Criteria) this;
        }

        public Criteria andValidateTimeNotBetween(Long value1, Long value2) {
            addCriterion("validate_time not between", value1, value2, "validateTime");
            return (Criteria) this;
        }

        public Criteria andStatuseIsNull() {
            addCriterion("statuse is null");
            return (Criteria) this;
        }

        public Criteria andStatuseIsNotNull() {
            addCriterion("statuse is not null");
            return (Criteria) this;
        }

        public Criteria andStatuseEqualTo(String value) {
            addCriterion("statuse =", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseNotEqualTo(String value) {
            addCriterion("statuse <>", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseGreaterThan(String value) {
            addCriterion("statuse >", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseGreaterThanOrEqualTo(String value) {
            addCriterion("statuse >=", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseLessThan(String value) {
            addCriterion("statuse <", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseLessThanOrEqualTo(String value) {
            addCriterion("statuse <=", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseLike(String value) {
            addCriterion("statuse like", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseNotLike(String value) {
            addCriterion("statuse not like", value, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseIn(List<String> values) {
            addCriterion("statuse in", values, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseNotIn(List<String> values) {
            addCriterion("statuse not in", values, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseBetween(String value1, String value2) {
            addCriterion("statuse between", value1, value2, "statuse");
            return (Criteria) this;
        }

        public Criteria andStatuseNotBetween(String value1, String value2) {
            addCriterion("statuse not between", value1, value2, "statuse");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginIsNull() {
            addCriterion("needs_origin is null");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginIsNotNull() {
            addCriterion("needs_origin is not null");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginEqualTo(String value) {
            addCriterion("needs_origin =", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginNotEqualTo(String value) {
            addCriterion("needs_origin <>", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginGreaterThan(String value) {
            addCriterion("needs_origin >", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginGreaterThanOrEqualTo(String value) {
            addCriterion("needs_origin >=", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginLessThan(String value) {
            addCriterion("needs_origin <", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginLessThanOrEqualTo(String value) {
            addCriterion("needs_origin <=", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginLike(String value) {
            addCriterion("needs_origin like", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginNotLike(String value) {
            addCriterion("needs_origin not like", value, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginIn(List<String> values) {
            addCriterion("needs_origin in", values, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginNotIn(List<String> values) {
            addCriterion("needs_origin not in", values, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginBetween(String value1, String value2) {
            addCriterion("needs_origin between", value1, value2, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andNeedsOriginNotBetween(String value1, String value2) {
            addCriterion("needs_origin not between", value1, value2, "needsOrigin");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreIsNull() {
            addCriterion("feedback_score is null");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreIsNotNull() {
            addCriterion("feedback_score is not null");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreEqualTo(Integer value) {
            addCriterion("feedback_score =", value, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreNotEqualTo(Integer value) {
            addCriterion("feedback_score <>", value, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreGreaterThan(Integer value) {
            addCriterion("feedback_score >", value, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("feedback_score >=", value, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreLessThan(Integer value) {
            addCriterion("feedback_score <", value, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreLessThanOrEqualTo(Integer value) {
            addCriterion("feedback_score <=", value, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreIn(List<Integer> values) {
            addCriterion("feedback_score in", values, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreNotIn(List<Integer> values) {
            addCriterion("feedback_score not in", values, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreBetween(Integer value1, Integer value2) {
            addCriterion("feedback_score between", value1, value2, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andFeedbackScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("feedback_score not between", value1, value2, "feedbackScore");
            return (Criteria) this;
        }

        public Criteria andNoteIsNull() {
            addCriterion("note is null");
            return (Criteria) this;
        }

        public Criteria andNoteIsNotNull() {
            addCriterion("note is not null");
            return (Criteria) this;
        }

        public Criteria andNoteEqualTo(String value) {
            addCriterion("note =", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotEqualTo(String value) {
            addCriterion("note <>", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteGreaterThan(String value) {
            addCriterion("note >", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteGreaterThanOrEqualTo(String value) {
            addCriterion("note >=", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLessThan(String value) {
            addCriterion("note <", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLessThanOrEqualTo(String value) {
            addCriterion("note <=", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLike(String value) {
            addCriterion("note like", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotLike(String value) {
            addCriterion("note not like", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteIn(List<String> values) {
            addCriterion("note in", values, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotIn(List<String> values) {
            addCriterion("note not in", values, "note");
            return (Criteria) this;
        }

        public Criteria andNoteBetween(String value1, String value2) {
            addCriterion("note between", value1, value2, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotBetween(String value1, String value2) {
            addCriterion("note not between", value1, value2, "note");
            return (Criteria) this;
        }
    }

    /**
     * ads表的操作类
     * 
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * ads表的操作类
     * 
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