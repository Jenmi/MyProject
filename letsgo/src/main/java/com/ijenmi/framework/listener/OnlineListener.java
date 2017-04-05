/*package com.ijenmi.framework.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;

import com.hiseas.framework.vo.UserInfo;

public class OnlineListener implements HttpSessionListener ,HttpSessionAttributeListener{
	Logger logger = Logger.getLogger(OnlineListener.class);
	
    public void sessionCreated(HttpSessionEvent event) {//只要一打开浏览器就会执行 ,没有登陆也会执行.
    }

    public void sessionDestroyed(HttpSessionEvent event) {//只有超时,invalidate()才会执行
        HttpSession httpSession=event.getSession();
        //        OnlineManager.getInstance().removeSession(se); //从列表中删除
        logger.info("remove session: "+httpSession);	// 浏览窗口关闭了,不会马上执行
    }
	
    public void attributeAdded(HttpSessionBindingEvent event) {//如果登陆成功, 就把上线 用户添加 到列表.
        HttpSession se=event.getSession();
        String name=event.getName();
        Object obj =event.getValue();
        UserInfo userInfo = null;
        if(obj.getClass().getSimpleName().equals("UserInfo")){
        	userInfo=(UserInfo)event.getValue();
        	logger.info("create session: "+name+": "+userInfo.getLoginName());
        }
//              if("username".equals(name)){
//                      OnlineManager.getInstance().addSession(se); //添加
//             }
   }
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
*/