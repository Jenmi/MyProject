package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.BlogImg;

public interface BlogImgMapper {
    int deleteByPrimaryKey(Integer imgId);

    int insert(BlogImg record);

    int insertSelective(BlogImg record);

    BlogImg selectByPrimaryKey(Integer imgId);

    int updateByPrimaryKeySelective(BlogImg record);

    int updateByPrimaryKey(BlogImg record);
}