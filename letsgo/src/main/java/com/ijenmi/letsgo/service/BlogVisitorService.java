package com.ijenmi.letsgo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ijenmi.letsgo.dao.BlogVisitorMapper;
import com.ijenmi.letsgo.model.BlogVisitor;

@Service
public class BlogVisitorService {
	@Autowired
	private BlogVisitorMapper blogVisitorMapper;
	
	public boolean ishave(String ip, Integer id, Integer opType){
		return  blogVisitorMapper.selectByIp(ip, id, opType) > 0;
	}
	
	public boolean save(BlogVisitor hv){
		return blogVisitorMapper.insert(hv) > 0;
	}
}
