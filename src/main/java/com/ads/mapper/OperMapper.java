package com.ads.mapper;

import com.ads.model.Oper;
import com.ads.model.OperCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OperMapper {
    /**
     * oper数据表的操作方法: countByExample  
     * 
     */
    int countByExample(OperCriteria example);

    /**
     * oper数据表的操作方法: deleteByExample  
     * 
     */
    int deleteByExample(OperCriteria example);

    /**
     * oper数据表的操作方法: deleteByPrimaryKey  
     * 
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * oper数据表的操作方法: insert  
     * 
     */
    int insert(Oper record);

    /**
     * oper数据表的操作方法: insertSelective  
     * 
     */
    int insertSelective(Oper record);

    /**
     * oper数据表的操作方法: selectByExample  
     * 
     */
    List<Oper> selectByExample(OperCriteria example);

    /**
     * oper数据表的操作方法: selectByPrimaryKey  
     * 
     */
    Oper selectByPrimaryKey(Integer id);

    /**
     * oper数据表的操作方法: lockByPrimaryKey  
     * 
     */
    Oper lockByPrimaryKey(Integer id);

    /**
     * oper数据表的操作方法: lockByExample  
     * 
     */
    Oper lockByExample(OperCriteria example);

    /**
     * oper数据表的操作方法: lastInsertId  
     * 线程安全的获得当前连接，最近一个自增长主键的值（针对insert操作）
     * 使用last_insert_id()时要注意，当一次插入多条记录时(批量插入)，只是获得第一次插入的id值，务必注意。
     * 
     */
    Long lastInsertId();

    /**
     * oper数据表的操作方法: updateByExampleSelective  
     * 
     */
    int updateByExampleSelective(@Param("record") Oper record, @Param("example") OperCriteria example);

    /**
     * oper数据表的操作方法: updateByExample  
     * 
     */
    int updateByExample(@Param("record") Oper record, @Param("example") OperCriteria example);

    /**
     * oper数据表的操作方法: updateByPrimaryKeySelective  
     * 
     */
    int updateByPrimaryKeySelective(Oper record);

    /**
     * oper数据表的操作方法: updateByPrimaryKey  
     * 
     */
    int updateByPrimaryKey(Oper record);
}