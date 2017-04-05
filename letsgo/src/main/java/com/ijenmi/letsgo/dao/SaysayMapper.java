package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.Saysay;

public interface SaysayMapper {
    int deleteByPrimaryKey(Integer saysayId);

    int insert(Saysay record);

    int insertSelective(Saysay record);

    Saysay selectByPrimaryKey(Integer saysayId);

    int updateByPrimaryKeySelective(Saysay record);

    int updateByPrimaryKey(Saysay record);
}