package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.SaysayVisitor;

public interface SaysayVisitorMapper {
    int deleteByPrimaryKey(Integer visitId);

    int insert(SaysayVisitor record);

    int insertSelective(SaysayVisitor record);

    SaysayVisitor selectByPrimaryKey(Integer visitId);

    int updateByPrimaryKeySelective(SaysayVisitor record);

    int updateByPrimaryKey(SaysayVisitor record);
    
    int selectByIp(String visitIp);	
}