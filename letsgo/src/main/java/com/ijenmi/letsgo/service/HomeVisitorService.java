package com.ijenmi.letsgo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ijenmi.letsgo.dao.BlogMapper;
import com.ijenmi.letsgo.dao.HomeVisitorMapper;
import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.HomeVisitor;
import com.ijenmi.letsgo.vo.query.BlogQuery;

@Service
public class HomeVisitorService {
	@Autowired
	private HomeVisitorMapper homeVisitorMapper;
	
	public boolean ishave(String ip){
		return homeVisitorMapper.selectByIp(ip) > 0;
	}
	
	public boolean save(HomeVisitor hv){
		return homeVisitorMapper.insert(hv) > 0;
	}
	
	public HomeVisitor getHomeVisitorByIp(String visitId){
		return homeVisitorMapper.getHomeVisitorByIp(visitId);
	}

}
