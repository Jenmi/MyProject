package com.ijenmi.letsgo.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ijenmi.letsgo.dao.BlogMapper;
import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.BlogImg;
import com.ijenmi.letsgo.model.BlogVisitor;
import com.ijenmi.letsgo.vo.UserInfo;
import com.ijenmi.letsgo.vo.query.BlogQuery;

@Service
public class BlogService {
	@Autowired
	private BlogMapper blogMapper;
	@Autowired
	private BlogVisitorService blogVisitorServie;
	
	public List<Blog> query(BlogQuery qyery){
		return blogMapper.query(qyery);
	}
	public Blog getById(Integer blogId) {
		return blogMapper.selectByPrimaryKey(blogId);
	}
	
	@Transactional
	public boolean update(Blog blog) {
		return blogMapper.updateByPrimaryKey(blog) > 0;
	}
	
	@Transactional
	public boolean doAdd(Blog blog) {
		return blogMapper.insert(blog) > 0;
	}
	public List getBestHotBlog() {
		return blogMapper.getBestHotBlog();
	}
	
	
	/**
	 * 用于拜访者点赞、访问次数、鄙视等操作计数存储
	 * @param user
	 * @param ip
	 * @param id
	 * @param opType
	 * @return
	 */
	@Transactional
	public boolean visitorOp(UserInfo user, String ip, Integer id, Integer opType){
		boolean status = blogVisitorServie.ishave(ip,id,opType);
		if(!status){
			BlogVisitor bv = new BlogVisitor();
			bv.setBlogId(id);
			bv.setCreateDate(new Date());
			bv.setLoginId(user==null?null:user.getStaffId());
			bv.setLoginName(user==null?null:user.getLoginName());
			bv.setVisitIp(ip);
			bv.setOperation(opType);
			Blog blog = this.getById(id);
			if(opType==1){
				blog.setSeeNum((blog.getSeeNum()==null?0:blog.getSeeNum())+1);
			}else if(opType==2){
				blog.setZanNum((blog.getZanNum()==null?0:blog.getZanNum())+1);
			}else if(opType==3){
				blog.setBadNum((blog.getBadNum()==null?0:blog.getBadNum())+1);
			}
			blogVisitorServie.save(bv);
			return this.update(blog);
		}
		return false;
	}

	/**
	 * 获取最新的一条博客通过某个类型
	 * @param typeId
	 * @return
	 */
	public Blog getBestNewBlogByTypeId(Integer typeId) {
		return blogMapper.getBestNewBlogByTypeId(typeId);
	}
	
	public int getBlogCount(Integer typeId){
		return blogMapper.getBlogCount(typeId);
	}

	public int  uploadImg(BlogImg img){
		return blogMapper.uploadImg(img);
	}
	
	public int updateBlogIdByImgId(Integer blogId,String imgIds){
		
		return blogMapper.updateBlogIdByImgId(blogId, imgIds);
	}
}

