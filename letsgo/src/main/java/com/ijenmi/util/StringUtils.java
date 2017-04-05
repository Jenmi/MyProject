package com.ijenmi.util;

public class StringUtils {
	public static String getURLAction(String uri){
		if(uri==null)
			return null;
		return uri.substring(uri.replace("\\", "/").lastIndexOf("/")+1);
	}
}
