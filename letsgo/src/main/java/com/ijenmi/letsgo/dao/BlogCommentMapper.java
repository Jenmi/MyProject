package com.ijenmi.letsgo.dao;

import java.util.List;

import com.ijenmi.letsgo.model.BlogComment;

public interface BlogCommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(BlogComment record);

    int insertSelective(BlogComment record);

    BlogComment selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKeySelective(BlogComment record);

    int updateByPrimaryKey(BlogComment record);
    
    List<BlogComment> getListByBlogId(Integer blogId);
    
    public List<BlogComment> getFatherCommentsByBlogId(Integer blogId);
}