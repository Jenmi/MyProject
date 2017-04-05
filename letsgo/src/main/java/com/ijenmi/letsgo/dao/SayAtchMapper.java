package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.SayAtch;

public interface SayAtchMapper {
    int deleteByPrimaryKey(Integer atchId);

    int insert(SayAtch record);

    int insertSelective(SayAtch record);

    SayAtch selectByPrimaryKey(Integer atchId);

    int updateByPrimaryKeySelective(SayAtch record);

    int updateByPrimaryKey(SayAtch record);
}