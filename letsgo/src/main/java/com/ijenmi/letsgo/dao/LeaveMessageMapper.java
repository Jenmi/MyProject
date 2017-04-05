package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.LeaveMessage;

public interface LeaveMessageMapper {
    int deleteByPrimaryKey(Integer leaveId);

    int insert(LeaveMessage record);

    int insertSelective(LeaveMessage record);

    LeaveMessage selectByPrimaryKey(Integer leaveId);

    int updateByPrimaryKeySelective(LeaveMessage record);

    int updateByPrimaryKey(LeaveMessage record);
}