package com.ijenmi.letsgo.dao;

import com.ijenmi.letsgo.model.SayComment;

public interface SayCommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(SayComment record);

    int insertSelective(SayComment record);

    SayComment selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKeySelective(SayComment record);

    int updateByPrimaryKey(SayComment record);
}