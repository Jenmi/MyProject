package com.ijenmi.letsgo.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("test")
public class Subscribe {
	@RequestMapping("subscribe")
	@ResponseBody
	public String subscribe(ModelMap model,HttpServletRequest request){
		/*StringBuffer strb = new StringBuffer();
		
		BufferedReader breader = null;
		
		try {
		
			breader = new BufferedReader(new InputStreamReader(request.getInputStream(),"UTF-8"));
			
			String str = null;
			
			while(null != (str = breader.readLine())){
				
				strb.append(str);
				
			}
			
			breader.close();
			
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		
		strb.toString();
		System.out.println("======"+strb.toString());
		return "======"+strb.toString();
		*/
		  // 微信加密签名
        String signature = request.getParameter("signature");
        // 时间戳
        String timestamp = request.getParameter("timestamp");
        // 随机数
        String nonce = request.getParameter("nonce");
        // 随机字符串
        String echostr = request.getParameter("echostr");

		return echostr;
	}
}
