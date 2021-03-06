package com.ijenmi.letsgo.controller;

import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ijenmi.base.BaseController;
import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.BlogComment;
import com.ijenmi.letsgo.service.BlogCommentService;
import com.ijenmi.letsgo.service.BlogService;
import com.ijenmi.letsgo.vo.UserInfo;
import com.ijenmi.letsgo.vo.query.BlogQuery;
import com.ijenmi.letsgo.vo.query.CurrPage;
import com.ijenmi.util.UserAndAuthorityUtil;

@Controller
@RequestMapping("/sysdata")
public class DictionaryController extends BaseController{
	@Autowired
	private BlogService blogService;
	@Autowired
	private BlogCommentService blogCommentService;
	
	@RequestMapping
	public String index(ModelMap model, BlogQuery query, HttpServletRequest request, HttpServletResponse response){
		List<Blog> blogs =blogService.query(query);
		model.addAttribute("query", query);
		model.addAttribute("blogs", blogs);
		
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		Boolean canedit = (Boolean) request.getAttribute("canedit");
		if(canedit!=null && canedit){
			model.addAttribute("canedit", canedit);
		}
		return "/letsgo/sysdata/blog-list";
	}
	@RequestMapping(value="{id}/show")
	public String show(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		Blog blog = blogService.getById(id);
		model.addAttribute("blog", blog);
		model.addAttribute("page", new CurrPage("blog",3,null));
		
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		blogService.visitorOp(user, request.getRemoteAddr(), id, 1);
		
		List<BlogComment> fatherBC = blogCommentService.getFatherCommentByBlogId(id);
		model.addAttribute("fatherBC", fatherBC);
		
		return "/letsgo/blog/blog-show";
	}
	
	@RequestMapping(value="{id}/edit")
	public String edit(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		Blog blog = blogService.getById(id);
		model.addAttribute("blog", blog);
		model.addAttribute("page", new CurrPage("blog",2,null));
		return "/letsgo/blog/blog-edit";
	}
	@RequestMapping(value="/doedit")
	public String doEdit(ModelMap model, Blog blog, HttpServletRequest request, HttpServletResponse response){
		UserInfo user= UserAndAuthorityUtil.getSessionUser(request);
		boolean status = blogService.update(blog);
		
		this.getMsg(status, "修改失败，或许您在进行非法操作！");
		return "redirect:/blog";
	}
	
	@RequestMapping(value="/add")
	public String add(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		
		model.addAttribute("page", new CurrPage("blog",1,null));
		return "/letsgo/blog/blog-add";
	}
	@RequestMapping(value="/doadd",method=RequestMethod.POST)
	public String doAdd(ModelMap model, Blog blog, HttpServletRequest request, HttpServletResponse response){
		blog.setCreateDate(new Date());
		 StringBuffer sb = new StringBuffer();
		 if(blog.getContent()!=null){
			 int length = blog.getContent().length();
			 String content = blog.getContent();
			 for (int i = 0; i < length; i++) {
				 boolean matches = Pattern.matches("^[\u4E00-\u9FA5]{0,}$", ""+ content.charAt(i));
				 if (matches) {
					 sb.append(content.charAt(i));
				 }
			 }
			 blog.setContentVice(sb.toString());
		 }
		boolean status = blogService.doAdd(blog);
		this.getMsg(status, "对不起，添加失败！");
		return "/letsgo/blog/blog-add";
	}
	
	@RequestMapping(value="/editlist")
	public String editList(ModelMap model, Blog blog, HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("canedit", true);
		return "forward:/blog";
	}
	
	/**
	 * 赞获取反赞
	 * @param model
	 * @param id
	 * @param type
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/{id}/good",method=RequestMethod.POST)
	@ResponseBody
	public String zan(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		String ip = request.getRemoteAddr();
		String test = request.getRemoteHost();
		if(ip==null || ip==""){
			return "false";
		}
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		return blogService.visitorOp(user, ip, id, 2)+"";
	}
	@RequestMapping(value="/{id}/bad",method=RequestMethod.POST)
	@ResponseBody
	public String bad(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		String ip = request.getRemoteAddr();
		if(ip==null  || ip==""){
			return "false";
		}
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		return blogService.visitorOp(user, ip, id, 3)+"";
	}
}
