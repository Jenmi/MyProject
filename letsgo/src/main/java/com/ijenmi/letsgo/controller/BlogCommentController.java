package com.ijenmi.letsgo.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.BlogComment;
import com.ijenmi.letsgo.service.BlogCommentService;
import com.ijenmi.letsgo.service.BlogService;
import com.ijenmi.letsgo.vo.UserInfo;
import com.ijenmi.util.UserAndAuthorityUtil;

@Controller
@RequestMapping("/blogcomment")
public class BlogCommentController {
	@Autowired
	private BlogCommentService blogCommentService;
	@Autowired
	private BlogService blogService;
	
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	@RequestMapping(value="{id}/show",params={"a","b"})
	public String show( Integer y, ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		System.out.println(y);
		return "";
	}
	
	@RequestMapping(value="{id}/edit")
	public String edit(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	@RequestMapping(value="/doedit")
	public String doEdit(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	
	@RequestMapping(value="add")
	public String add(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	@RequestMapping(value="/{blogId}/commentadd", method=RequestMethod.POST)
	@ResponseBody
	public String doAdd(ModelMap model,@PathVariable Integer blogId, BlogComment bc, HttpServletRequest request, HttpServletResponse response){
		Blog blog = blogService.getById(blogId);
		if(blog==null){
			return "false";
		}
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		if(user!=null){
			bc.setUserId(user.getStaffId());
		}
		bc.setBlogId(blogId);
		bc.setCreateDate(new Date());
		bc.setAnonymous(request.getRemoteAddr());
		return blogCommentService.doAdd(bc)+"";
	}
}
