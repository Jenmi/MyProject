package com.ijenmi.letsgo.dao;

import java.util.List;

import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.BlogImg;
import com.ijenmi.letsgo.vo.query.BlogQuery;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer blogId);

    int insert(Blog record);

    int insertSelective(Blog record);

    Blog selectByPrimaryKey(Integer blogId);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);
    
    List<Blog> query(BlogQuery query);

    Blog getBestNewBlogByTypeId(Integer typeId);
    
    int getBlogCount(Integer typeId);
    
    List getBestHotBlog();
    
    List getBestNewBlog();
    
    int uploadImg(BlogImg img);
    
    int updateBlogIdByImgId(Integer blogId,String imgIds);
}