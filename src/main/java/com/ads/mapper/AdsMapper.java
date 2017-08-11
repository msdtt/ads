package com.ads.mapper;

import com.ads.model.Ads;
import com.ads.model.AdsCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdsMapper {
    /**
     * ads数据表的操作方法: countByExample  
     * 
     */
    int countByExample(AdsCriteria example);

    /**
     * ads数据表的操作方法: deleteByExample  
     * 
     */
    int deleteByExample(AdsCriteria example);

    /**
     * ads数据表的操作方法: deleteByPrimaryKey  
     * 
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * ads数据表的操作方法: insert  
     * 
     */
    int insert(Ads record);

    /**
     * ads数据表的操作方法: insertSelective  
     * 
     */
    int insertSelective(Ads record);

    /**
     * ads数据表的操作方法: selectByExample  
     * 
     */
    List<Ads> selectByExample(AdsCriteria example);

    /**
     * ads数据表的操作方法: selectByPrimaryKey  
     * 
     */
    Ads selectByPrimaryKey(Integer id);

    /**
     * ads数据表的操作方法: lockByPrimaryKey  
     * 
     */
    Ads lockByPrimaryKey(Integer id);

    /**
     * ads数据表的操作方法: lockByExample  
     * 
     */
    Ads lockByExample(AdsCriteria example);

    /**
     * ads数据表的操作方法: lastInsertId  
     * 线程安全的获得当前连接，最近一个自增长主键的值（针对insert操作）
     * 使用last_insert_id()时要注意，当一次插入多条记录时(批量插入)，只是获得第一次插入的id值，务必注意。
     * 
     */
    Long lastInsertId();

    /**
     * ads数据表的操作方法: updateByExampleSelective  
     * 
     */
    int updateByExampleSelective(@Param("record") Ads record, @Param("example") AdsCriteria example);

    /**
     * ads数据表的操作方法: updateByExample  
     * 
     */
    int updateByExample(@Param("record") Ads record, @Param("example") AdsCriteria example);

    /**
     * ads数据表的操作方法: updateByPrimaryKeySelective  
     * 
     */
    int updateByPrimaryKeySelective(Ads record);

    /**
     * ads数据表的操作方法: updateByPrimaryKey  
     * 
     */
    int updateByPrimaryKey(Ads record);
}