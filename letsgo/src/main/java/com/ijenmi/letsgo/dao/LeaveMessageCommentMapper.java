package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.LeaveMessageComment;

public interface LeaveMessageCommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(LeaveMessageComment record);

    int insertSelective(LeaveMessageComment record);

    LeaveMessageComment selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKeySelective(LeaveMessageComment record);

    int updateByPrimaryKey(LeaveMessageComment record);
}