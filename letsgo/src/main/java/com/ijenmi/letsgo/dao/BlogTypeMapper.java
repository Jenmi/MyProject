package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.BlogType;

public interface BlogTypeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(BlogType record);

    int insertSelective(BlogType record);

    BlogType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(BlogType record);

    int updateByPrimaryKey(BlogType record);
}