package com.ijenmi.letsgo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ijenmi.letsgo.dao.SaysayVisitorMapper;
import com.ijenmi.letsgo.model.SaysayVisitor;

@Service
public class SaysayVisitorService {
	@Autowired
	private SaysayVisitorMapper saysayVisitorMapper;
	
	public boolean ishave(String ip){
		return saysayVisitorMapper.selectByIp(ip) > 0;
	}
	
	public boolean save(SaysayVisitor hv){
		return saysayVisitorMapper.insert(hv) > 0;
	}
}
