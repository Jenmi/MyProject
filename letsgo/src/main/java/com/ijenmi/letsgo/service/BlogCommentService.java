package com.ijenmi.letsgo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ijenmi.letsgo.dao.BlogCommentMapper;
import com.ijenmi.letsgo.model.BlogComment;

@Service
public class BlogCommentService {
	@Autowired
	private BlogCommentMapper blogCommentMapper;
	
	/*public List<BlogComment> query(BlogComment qyery){
		return blogCommentMapper.query(qyery);
	}*/
	public BlogComment getById(Integer blogId) {
		return blogCommentMapper.selectByPrimaryKey(blogId);
	}
	
	@Transactional
	public boolean update(BlogComment blog) {
		return blogCommentMapper.updateByPrimaryKey(blog) > 0;
	}
	
	@Transactional
	public boolean doAdd(BlogComment blogComment) {
		return blogCommentMapper.insert(blogComment) > 0;
	}
	
	public List<BlogComment> getFatherCommentByBlogId(Integer blogId) {
		return blogCommentMapper.getFatherCommentsByBlogId(blogId);
	}
}
