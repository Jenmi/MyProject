package com.ijenmi.util;

import java.util.UUID;

public class StringUtils {
	public static String getURLAction(String uri){
		if(uri==null)
			return null;
		return uri.substring(uri.replace("\\", "/").lastIndexOf("/")+1);
	}
	
	public static String getUUIDString(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
