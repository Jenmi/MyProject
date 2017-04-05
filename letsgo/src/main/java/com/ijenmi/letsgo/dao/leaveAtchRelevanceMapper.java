package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.leaveAtchRelevance;

public interface leaveAtchRelevanceMapper {
    int deleteByPrimaryKey(Integer relevanceId);

    int insert(leaveAtchRelevance record);

    int insertSelective(leaveAtchRelevance record);

    leaveAtchRelevance selectByPrimaryKey(Integer relevanceId);

    int updateByPrimaryKeySelective(leaveAtchRelevance record);

    int updateByPrimaryKey(leaveAtchRelevance record);
}