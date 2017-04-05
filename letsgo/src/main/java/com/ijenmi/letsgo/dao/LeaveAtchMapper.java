package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.LeaveAtch;

public interface LeaveAtchMapper {
    int deleteByPrimaryKey(Integer atchId);

    int insert(LeaveAtch record);

    int insertSelective(LeaveAtch record);

    LeaveAtch selectByPrimaryKey(Integer atchId);

    int updateByPrimaryKeySelective(LeaveAtch record);

    int updateByPrimaryKey(LeaveAtch record);
}