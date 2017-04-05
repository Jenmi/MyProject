package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.HomeVisitor;

public interface HomeVisitorMapper {
    int deleteByPrimaryKey(Integer visitId);

    int insert(HomeVisitor record);

    int insertSelective(HomeVisitor record);

    HomeVisitor selectByPrimaryKey(Integer visitId);

    int updateByPrimaryKeySelective(HomeVisitor record);

    int updateByPrimaryKey(HomeVisitor record);
    
    int selectByIp(String visitIp);	
    
    HomeVisitor getHomeVisitorByIp(String ip);
    
}