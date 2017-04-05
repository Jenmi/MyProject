/*
 * Powered By [Hiseas]
 * Web Site: http://www.hiseaseuro.com
 * Since 2008 - 2015
 */
package com.ijenmi.framework.filter;


import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.MDC;
import org.apache.log4j.Logger;
import org.springframework.web.filter.OncePerRequestFilter;

import com.ijenmi.letsgo.vo.UserInfo;

/**
 * 权限控制器
 * 
 * @author Wilson
 * @version 1.1
 * @since 1.0
 */
public class AuthorizationFilter extends OncePerRequestFilter {
	private Logger logger = Logger.getLogger(AuthorizationFilter.class);
	
	private static DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
//	private static boolean debug = false;
	private static final String DEFAULT_EXECUDE_EXTENTIONS = "js,css,bmp,png,gif,jpg,xls,doc,png";
	// 排除前缀
	private String[] excludePrefixes = new String[0];
	// 排除后缀
	private Set<String> excludeExtentions = new HashSet<String>();

	@Override
	protected void initFilterBean() throws ServletException {

		initParameter(getFilterConfig());
	}

	@Override
	protected void doFilterInternal(HttpServletRequest request,
			HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		
		
		try {
			// log日志
			MDC.put("loginUserId", "登录用户名：");
			
			MDC.put("loginName",null);
			
			MDC.put("req.requestURI", null);
			MDC.put("req.queryString", null);
			MDC.put("req.requestURIWithQueryString", null);

			// 为每一个请求创建一个ID，方便查找日志时可以根据ID查找出一个http请求所有相关日志
			MDC.put("req.id",null);

			String url = request.getRequestURI();

			// 替换contextPath
			//url = StringUtils.replaceOnce(url, request.getContextPath(), "");

			// 将'/+' 替换成 '/'
			//url = url.replaceAll("[/]+", "/");

				// 获得上一页面来源
				String referer = request.getHeader("Referer");

				UserInfo userDetails = getLoginUser(request);
				if (referer !=null && userDetails != null) {
					request.setAttribute("referer", referer);
				} else {
					request.setAttribute("referer", null);
				}

				// Redirect
				RequestDispatcher rd = getServletContext()
						.getRequestDispatcher("/commons/authorizationError.jsp");
				rd.forward(request, response);
				chain.doFilter(request, response);
		}catch(Exception e){
			
		} finally {
			cleanMDC();
		}

	}

	private void initParameter(FilterConfig filterConfig) {
	//	debug = getBooleanParameter(filterConfig, "debug", false);
		String excludeExtentionsString = getStringParameter(filterConfig, "excludeExtentions", DEFAULT_EXECUDE_EXTENTIONS);
		excludeExtentions = new HashSet<String>((Arrays.asList(excludeExtentionsString.split(","))));

		String excludePrefixsString = getStringParameter(filterConfig,"excludePrefixes", null);
		if (org.springframework.util.StringUtils.hasText(excludePrefixsString)) {
			excludePrefixes = excludePrefixsString.split(",");
		}
		logger.info("excludeExtentions=["+ excludeExtentionsString + "]");
		logger.info("excludePrefixes=["+ excludePrefixsString + "]");
	}
	
	/**
	 * 是否为排除请求。排除请求不受权限过滤器限制
	 */
	@SuppressWarnings("deprecation")
	protected boolean shouldNotFilter(HttpServletRequest request)
			throws ServletException {
		String url = request.getRequestURI();
		url = url.replace(request.getContextPath(), "");
		url = url.replaceAll("[/]+", "/");
		boolean result = excludeURL(url);

		if (result) {
			logger.info( "exclude request: " + url);
		}
		return result;
	}

	/**
	 * 判断url是否是排除URL（不受权限过滤器限制的url）
	 * @param url
	 * @return
	 */
	protected boolean excludeURL(String url) {
		if (url.equals("/") 
				|| url.equals("/index.jsp")
				|| url.equals("/index.htm")
				|| url.equals("/index.html")) {
			return true;
		}

		for (String excludePrefix : excludePrefixes) {
			if (url.startsWith(excludePrefix)) {
				return true;
			}
		}

		String extension = org.springframework.util.StringUtils
				.getFilenameExtension(url);
		if (extension!=null&& excludeExtentions.contains(extension)) {
			return true;
		}
		return false;
	}
	

	/**
	 * 获得登录用户
	 * 
	 * @param request
	 * @param loginName
	 * @return
	 */
	private UserInfo getLoginUser(HttpServletRequest request) {
		UserInfo currentUser = null;
		// 取得登录用户信息
		currentUser = null;//CommonConstant.getSessionUser(request);
		return currentUser;
	}
	
	private boolean getBooleanParameter(FilterConfig filterConfig, String name,	boolean defaultValue) {
		String value = getStringParameter(filterConfig, name, String.valueOf(defaultValue));
		return Boolean.parseBoolean(value);
	}

	private String getStringParameter(FilterConfig filterConfig, String name,String defaultValue) {
		String value = filterConfig.getInitParameter(name);
		if (value == null || "".equals(value.trim())) {
			return defaultValue;
		}
		return value;
	}

	private void cleanMDC() {
		Map map = MDC.getContext();
		if (map != null) {
			map.clear();
		}
	}
}
