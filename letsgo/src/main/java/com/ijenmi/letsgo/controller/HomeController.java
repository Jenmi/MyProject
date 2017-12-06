/*
 * Powered By [Jenmi]
 * Web Site: http://www.ijenmi.cn 
 * Since 2016 - 2016
 */

package com.ijenmi.letsgo.controller;

import static com.ijenmi.common.CommonStandard.USER_CONTENT;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ijenmi.base.BaseController;
import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.User;
import com.ijenmi.letsgo.service.BlogService;
import com.ijenmi.letsgo.service.UserManager;
import com.ijenmi.letsgo.vo.UserInfo;


/**
 * @author Jenmi it(a)ijenmi.cn
 * @version 2.0
 * @since 1.0
 */
@Controller
@RequestMapping("/")
public class HomeController extends BaseController{
	@Autowired
	private UserManager userManager;
	@Autowired
	private BlogService blogManager;
	/** 列表 */
	@RequestMapping
	public String index(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		//总数
		Integer blogCount = blogManager.getBlogCount(null);
//		Integer photoCount = 
		
		//我的博客数据
		Blog blog = blogManager.getBestNewBlogByTypeId(4);
		Blog liveBlog=blogManager.getBestNewBlogByTypeId(6);
		Blog proBlog = blogManager.getBestNewBlogByTypeId(8);
		map.addAttribute("blog", blog);
		map.addAttribute("liveBlog",liveBlog);
		map.addAttribute("proBlog",proBlog);
		map.addAttribute("blogCount", blogCount);
		return "/letsgo/home";
	}
	@RequestMapping("/login")
	public String login(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return "/letsgo/login";
	}
	@RequestMapping(value="/dologin",method=RequestMethod.POST )
	public String doLogin(User userlogin,String code,String uriPath, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String serverValidateCode = (String)request.getSession().getAttribute("code");
		UserInfo userInfo = new UserInfo();
		if(userlogin.getLoginName()==null || userlogin.getPassword()==null || serverValidateCode==null){
			userInfo.setMessage("请登录再进行该操作！");
			model.addAttribute("userInfo", userInfo);
			return "/letsgo/login";
		}else if(!code.equals(serverValidateCode)){
			userInfo.setMessage("验证码错误！");
			model.addAttribute("userInfo", userInfo);
			return "/letsgo/login";
		}
		
		User user= userManager.getByNameAndPwd(userlogin);
		if(user == null){
			userInfo.setMessage("用户名或密码错误");
			model.addAttribute("userInfo", userInfo);
			return "/letsgo/login";
		}
		userInfo.setLoginName(user.getLoginName());
		userInfo.setStaffId(user.getUserId());
		userInfo.setPwd(user.getPassword());
		request.getSession().setAttribute(USER_CONTENT, userInfo);
		
		/*if(uriPath!=null){
			//return "forward:"+uriPath;  bug//
			response.sendRedirect(uriPath);
		}*/
		return "/letsgo/home";
	}
	
	@RequestMapping("/edit")
	public String edit(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return null;
	}
	@RequestMapping("/doedit")
	public String doEdit(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return null;
	}
	@RequestMapping("/add")
	public String add(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return null;
	}
	@RequestMapping("/doadd")
	public String doAdd(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		return null;
	}
	
}

