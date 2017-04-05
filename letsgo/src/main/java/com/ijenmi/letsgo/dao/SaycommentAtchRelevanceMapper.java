package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.SaycommentAtchRelevance;

public interface SaycommentAtchRelevanceMapper {
    int deleteByPrimaryKey(Integer relevanceId);

    int insert(SaycommentAtchRelevance record);

    int insertSelective(SaycommentAtchRelevance record);

    SaycommentAtchRelevance selectByPrimaryKey(Integer relevanceId);

    int updateByPrimaryKeySelective(SaycommentAtchRelevance record);

    int updateByPrimaryKey(SaycommentAtchRelevance record);
}