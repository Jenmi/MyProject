package com.ijenmi.util;

import static com.ijenmi.common.CommonStandard.USER_CONTENT;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ijenmi.letsgo.vo.UserInfo;

public class UserAndAuthorityUtil {
	
	/**
	 * 判断时候是否登录
	 * @param request
	 * @return
	 */
	public static boolean isLogin(HttpServletRequest request){
		UserInfo user = UserAndAuthorityUtil.getSessionUser(request);
		if(user!=null){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 获取当前用户
	 * @param request
	 * @return
	 */
	public static UserInfo  getSessionUser(HttpServletRequest request){
		return  (UserInfo)request.getSession().getAttribute(USER_CONTENT);
	}
	
	/**
	 * 是否是限制的action链接
	 * @return
	 */
	public static boolean isPass(String currAction){
		List<String> actions = new ArrayList<String>();
		actions.add("add");
		actions.add("doadd");
		actions.add("edit");
		actions.add("doedit");
		
		for (String action : actions) {
			if(action.equals(currAction)){
				return false;
			}
		}
		return true;
	} 
}
