package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.BlogAtchRelevance;

public interface BlogAtchRelevanceMapper {
    int deleteByPrimaryKey(Integer relevanceId);

    int insert(BlogAtchRelevance record);

    int insertSelective(BlogAtchRelevance record);

    BlogAtchRelevance selectByPrimaryKey(Integer relevanceId);

    int updateByPrimaryKeySelective(BlogAtchRelevance record);

    int updateByPrimaryKey(BlogAtchRelevance record);
}