package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.BlogVisitor;

public interface BlogVisitorMapper {
    int deleteByPrimaryKey(Integer visitId);

    int insert(BlogVisitor record);

    int insertSelective(BlogVisitor record);

    BlogVisitor selectByPrimaryKey(Integer visitId);

    int updateByPrimaryKeySelective(BlogVisitor record);

    int updateByPrimaryKey(BlogVisitor record);
    
    int selectByIp(String visitIp, Integer id, Integer opType);	
}