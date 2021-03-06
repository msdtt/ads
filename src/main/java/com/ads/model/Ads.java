package com.ads.model;

import java.io.Serializable;
import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;

public class Ads implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.id
     * 
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.ads_name
     * 
     */
    private String adsName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.ads_type
     * 
     */
    private String adsType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.announce_no
     * 
     */
    private Integer announceNo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.click_no
     * 
     */
    private Integer clickNo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.position
     * 
     */
    private String position;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.show_rate
     * 
     */
    private BigDecimal showRate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.validate_time
     * 
     */
    private Long validateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.statuse
     * 
     */
    private String statuse;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.needs_origin
     * 
     */
    private String needsOrigin;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.feedback_score
     * 
     */
    private Integer feedbackScore;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ads.note
     * 
     */
    private String note;

    /**
     * ads表的操作属性:serialVersionUID
     * 
     */
    private static final long serialVersionUID = 1L;

    /**
     * 数据字段 ads.id的get方法 
     * 
     */
    public Integer getId() {
        return id;
    }

    /**
     * 数据字段 ads.id的set方法
     * 
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 数据字段 ads.ads_name的get方法 
     * 
     */
    public String getAdsName() {
        return adsName;
    }

    /**
     * 数据字段 ads.ads_name的set方法
     * 
     */
    public void setAdsName(String adsName) {
        this.adsName = adsName == null ? null : adsName.trim();
    }

    /**
     * 数据字段 ads.ads_type的get方法 
     * 
     */
    public String getAdsType() {
        return adsType;
    }

    /**
     * 数据字段 ads.ads_type的set方法
     * 
     */
    public void setAdsType(String adsType) {
        this.adsType = adsType == null ? null : adsType.trim();
    }

    /**
     * 数据字段 ads.announce_no的get方法 
     * 
     */
    public Integer getAnnounceNo() {
        return announceNo;
    }

    /**
     * 数据字段 ads.announce_no的set方法
     * 
     */
    public void setAnnounceNo(Integer announceNo) {
        this.announceNo = announceNo;
    }

    /**
     * 数据字段 ads.click_no的get方法 
     * 
     */
    public Integer getClickNo() {
        return clickNo;
    }

    /**
     * 数据字段 ads.click_no的set方法
     * 
     */
    public void setClickNo(Integer clickNo) {
        this.clickNo = clickNo;
    }

    /**
     * 数据字段 ads.position的get方法 
     * 
     */
    public String getPosition() {
        return position;
    }

    /**
     * 数据字段 ads.position的set方法
     * 
     */
    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    /**
     * 数据字段 ads.show_rate的get方法 
     * 
     */
    public BigDecimal getShowRate() {
        return showRate;
    }

    /**
     * 数据字段 ads.show_rate的set方法
     * 
     */
    public void setShowRate(BigDecimal showRate) {
        this.showRate = showRate;
    }

    /**
     * 数据字段 ads.validate_time的get方法 
     * 
     */
    public Long getValidateTime() {
        return validateTime;
    }

    /**
     * 数据字段 ads.validate_time的set方法
     * 
     */
    public void setValidateTime(Long validateTime) {
        this.validateTime = validateTime;
    }

    /**
     * 数据字段 ads.statuse的get方法 
     * 
     */
    public String getStatuse() {
        return statuse;
    }

    /**
     * 数据字段 ads.statuse的set方法
     * 
     */
    public void setStatuse(String statuse) {
        this.statuse = statuse == null ? null : statuse.trim();
    }

    /**
     * 数据字段 ads.needs_origin的get方法 
     * 
     */
    public String getNeedsOrigin() {
        return needsOrigin;
    }

    /**
     * 数据字段 ads.needs_origin的set方法
     * 
     */
    public void setNeedsOrigin(String needsOrigin) {
        this.needsOrigin = needsOrigin == null ? null : needsOrigin.trim();
    }

    /**
     * 数据字段 ads.feedback_score的get方法 
     * 
     */
    public Integer getFeedbackScore() {
        return feedbackScore;
    }

    /**
     * 数据字段 ads.feedback_score的set方法
     * 
     */
    public void setFeedbackScore(Integer feedbackScore) {
        this.feedbackScore = feedbackScore;
    }

    /**
     * 数据字段 ads.note的get方法 
     * 
     */
    public String getNote() {
        return note;
    }

    /**
     * 数据字段 ads.note的set方法
     * 
     */
    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String toString() {
        return ReflectionToStringBuilder.toString(this);
    }
}