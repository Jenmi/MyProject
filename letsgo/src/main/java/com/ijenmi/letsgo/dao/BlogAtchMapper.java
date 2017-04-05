package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.BlogAtch;

public interface BlogAtchMapper {
    int deleteByPrimaryKey(Integer atchId);

    int insert(BlogAtch record);

    int insertSelective(BlogAtch record);

    BlogAtch selectByPrimaryKey(Integer atchId);

    int updateByPrimaryKeySelective(BlogAtch record);

    int updateByPrimaryKey(BlogAtch record);
}