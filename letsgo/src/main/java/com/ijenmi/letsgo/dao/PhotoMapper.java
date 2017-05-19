package com.ijenmi.letsgo.dao;

import java.util.List;

import com.ijenmi.letsgo.model.Photo;

public interface PhotoMapper {
    int deleteByPrimaryKey(Integer photoId);

    int insert(Photo record);

    int insertSelective(Photo record);

    Photo selectByPrimaryKey(Integer photoId);

    int updateByPrimaryKeySelective(Photo record);

    int updateByPrimaryKey(Photo record);
    
    List<Photo> query();
}