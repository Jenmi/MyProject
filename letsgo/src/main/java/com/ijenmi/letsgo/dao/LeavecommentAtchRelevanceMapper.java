package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.LeavecommentAtchRelevance;

public interface LeavecommentAtchRelevanceMapper {
    int deleteByPrimaryKey(Integer relevanceId);

    int insert(LeavecommentAtchRelevance record);

    int insertSelective(LeavecommentAtchRelevance record);

    LeavecommentAtchRelevance selectByPrimaryKey(Integer relevanceId);

    int updateByPrimaryKeySelective(LeavecommentAtchRelevance record);

    int updateByPrimaryKey(LeavecommentAtchRelevance record);
}