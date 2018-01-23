package com.ijenmi.letsgo.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.ijenmi.base.BaseController;
import com.ijenmi.letsgo.model.Blog;
import com.ijenmi.letsgo.model.BlogComment;
import com.ijenmi.letsgo.model.BlogImg;
import com.ijenmi.letsgo.service.BlogCommentService;
import com.ijenmi.letsgo.service.BlogService;
import com.ijenmi.letsgo.vo.UserInfo;
import com.ijenmi.letsgo.vo.query.BlogQuery;
import com.ijenmi.letsgo.vo.query.CurrPage;
import com.ijenmi.util.FreamarkerUtil;
import com.ijenmi.util.UploadFile;
import com.ijenmi.util.UserAndAuthorityUtil;

import freemarker.template.Configuration;

@Controller
@RequestMapping("/blog")
public class BlogController extends BaseController{
	@Autowired
	private BlogService blogService;
	@Autowired
	private BlogCommentService blogCommentService;
	
	@RequestMapping
	public String index(ModelMap model, BlogQuery query, HttpServletRequest request, HttpServletResponse response){
		PageHelper.startPage(query.getCurrPage()==null?1:query.getCurrPage(), 10);
		List<Blog> blogs =blogService.query(query);
		PageInfo pageInfo = new PageInfo(blogs);
		model.addAttribute("query", query);
		model.addAttribute("blogs", blogs);
		model.addAttribute("pageInfo", pageInfo);
		
		List hotList = blogService.getBestHotBlog();
		model.addAttribute("hotList", hotList);
		List newList = blogService.getBestNewBlog();
		model.addAttribute("newList", newList);
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		Boolean canedit = (Boolean) request.getAttribute("canedit");
		if(canedit!=null && canedit){
			model.addAttribute("canedit", canedit);
		}
		return "/letsgo/blog/blog-list";
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
		user.getStaffId();
		blog.setContentVice(getContentVice(blog.getContent()));
		boolean status = blogService.update(blog);
		
		this.getMsg(status, "淇敼澶辫触锛屾垨璁告偍鍦ㄨ繘琛岄潪娉曟搷浣滐紒");
		return "redirect:/blog";
	}
	
	@RequestMapping(value="/add")
	public String add(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		
		model.addAttribute("page", new CurrPage("blog",1,null));
		return "/letsgo/blog/blog-add";
	}
	@RequestMapping(value="/doadd",method=RequestMethod.POST)
	public String doAdd(ModelMap model, Blog blog,String[] blogImgs, HttpServletRequest request, HttpServletResponse response){
		/*//UserInfo user= UserAndAuthorityUtil.getSessionUser(request);
		if(user == null){
		}*/
		//blog.setBlogId(StringUtils.getUUIDString());
		blog.setCreateDate(new Date());
		blog.setUserId(1);//user.getStaffId());
		
		blog.setContentVice(getContentVice(blog.getContent()));
		
		boolean status = blogService.doAdd(blog);
		//添加图片
		if(blogImgs!=null){
			for (String str : blogImgs) {
				BlogImg imgBean = new Gson().fromJson(str, BlogImg.class);
				imgBean.setBlogId(blog.getBlogId());
				blogService.uploadImg(imgBean);
			}
		}
		Map map = new HashMap();
		/* Configuration configuration = new Configuration();  
         try {
        	 String a = this.getClass().getClassLoader().getResource("")+"properties/freemarker_property.properties";
			configuration.setDirectoryForTemplateLoading(new File(a));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  */
		
		//FreamarkerUtil.createStaticPage(new Configuration(), request, "aaa.html", map, "/report/blog", "blog-show.html");
		
		this.getMsg(status, "对不起，添加失败！");
		return "redirect:/blog";
	}
	
	@RequestMapping(value="/editlist")
	public String editList(ModelMap model, Blog blog, HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("canedit", true);
		return "forward:/blog";
	}
	
	/**
	 * 璧炶幏鍙栧弽璧�
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
	@RequestMapping(value="/uploadImg",method=RequestMethod.POST)
	@ResponseBody
	public String upload(ModelMap model,@RequestParam("files") MultipartFile[] files, HttpServletRequest request, HttpServletResponse response){
		BlogImg blogImg = new BlogImg();
		List<Map<String,String>> list = null;
		try {
			list = UploadFile.upload(files, request.getSession().getServletContext().getRealPath("/")+"/images/blog/upload/");
			Map<String,String> map = list.get(0);
			blogImg.setCreateDate(new Date());
			blogImg.setImgType(1);
			blogImg.setIsDelete(0);
			blogImg.setImgPath(map.get("url"));
			blogImg.setImgContent(map.get("name"));
			//blogService.uploadImg(blogImg);
			//System.out.println(blogImg.getImgId());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
//		= JSONObject.(blogImg);
		//String json = JSON.toJSONString(blogImg);
		//Gson json = new Gson();
//		 = JSONArray;//valueToString(blogImg);
		
		Gson json = new Gson();
		String a = json.toJson(blogImg);
		return  a;
	}
	
	
	private String getContentVice(String str){
		
		String value = str;
		 StringBuffer sb = new StringBuffer();
		 if(str!=null){
			 int length = value.length();
			 for (int i = 0; i < length; i++) {
				 boolean matches = Pattern.matches("^[\u4E00-\u9FA5]{0,}$", ""+ value.charAt(i));
				 if (matches) {
					 sb.append(value.charAt(i));
				 }
			 }
		 }
		return sb.toString().substring(0, sb.toString().length()<100?sb.toString().length():100);
	}
}
