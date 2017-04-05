package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.SayAtchRelevance;

public interface SayAtchRelevanceMapper {
    int deleteByPrimaryKey(Integer relevanceId);

    int insert(SayAtchRelevance record);

    int insertSelective(SayAtchRelevance record);

    SayAtchRelevance selectByPrimaryKey(Integer relevanceId);

    int updateByPrimaryKeySelective(SayAtchRelevance record);

    int updateByPrimaryKey(SayAtchRelevance record);
}