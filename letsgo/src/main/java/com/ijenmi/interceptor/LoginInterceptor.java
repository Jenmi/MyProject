package com.ijenmi.interceptor;

import static com.ijenmi.common.CommonStandard.USER_CONTENT;

import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ijenmi.letsgo.model.HomeVisitor;
import com.ijenmi.letsgo.service.HomeVisitorService;
import com.ijenmi.letsgo.vo.UserInfo;
import com.ijenmi.util.UserAndAuthorityUtil;


/**
 * 拦截器,用于存放渲染视图时需要的的共享变量
 * @author badqiu
 *
 */
public class LoginInterceptor extends HandlerInterceptorAdapter implements InitializingBean{
	static Log log = LogFactory.getLog(LoginInterceptor.class);
	
	@Autowired
	private HomeVisitorService homeVisitorService;
	
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
			
	}
	
	//在系统启动时会执行
	public void afterPropertiesSet() throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String url = request.getRequestURI().replace("\\","/");
		
		String action = url.substring(url.lastIndexOf("/")+1);
		if("doadd".equals(action) || "doedit".equals(action) || "edit".equals(action) || "add".equals(action)){
			boolean islogin = UserAndAuthorityUtil.isLogin(request);
			if(islogin){
				return true;
			}
			UserInfo userInfo = new UserInfo();
			/*if(this.isrefer(request)){
				userInfo.setMessage("请您走正规流程，某些功能不能进行盗链!");
				request.setAttribute("userInfo", userInfo);
				request.getRequestDispatcher("/home/login").forward(request, response);
			}*/
			userInfo.setMessage("请您先登录才能进行该操作!");
			request.setAttribute("userInfo", userInfo);
			request.setAttribute("pre_uri", request.getRequestURI());
			request.getRequestDispatcher("/home/login").forward(request, response);
		}else if(!"login".equals(action) || !"dologin".equals(action)){
			this.saveVisitIp(request);
		}
		
		return super.preHandle(request, response, handler);
	}
	
	/**
	 * 保存访问的ip地址,并且获取名字
	 * @param request
	 */
	public void saveVisitIp(HttpServletRequest request){
		String ip = request.getRemoteAddr();
		if(ip==null){
			return ;
		}
//		boolean status = homeVisitorService.ishave(ip);
		HomeVisitor hv = homeVisitorService.getHomeVisitorByIp(ip);
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		if(hv == null){
			hv = new HomeVisitor();
			hv.setCreateDate(new Date());
			hv.setUserId(user==null?null:user.getStaffId());
			hv.setLoginName(user==null?"游客"+(new Random().nextInt(1000)):user.getLoginName());
			hv.setOperation(1);
			hv.setVisitIp(ip);
			homeVisitorService.save(hv);
		}
		
		if(user == null){
			user = new UserInfo();
			user.setLoginName(hv.getLoginName());
			request.getSession().setAttribute(USER_CONTENT, user);
		}
	}
	
	/**
	 * 判断是否是盗链
	 * @param request
	 * @return
	 */
	public boolean isrefer(HttpServletRequest request){
		String referer = request.getHeader("referer");
		if(null == referer || !referer.trim().startsWith("http://localhost:8080/letsgo")){
			return true;
		}
		return false;
	}
	
}
