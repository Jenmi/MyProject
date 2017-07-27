package com.ijenmi.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public class UploadFile {
	public static List<Map<String,String>> upload(MultipartFile[] MulFile, String path) throws IllegalStateException, IOException{
		if(MulFile==null)return null;
		
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		
		
		for (MultipartFile f : MulFile) {
			Map<String,String> map = new HashMap<String,String>();
			String name = f.getOriginalFilename();
			String sufix = name.substring(name.indexOf("."), name.length());
			String realName = "100"+new Date().getTime()+sufix;
			//保留信息
			map.put("name", name);
			map.put("suffix", sufix);
			map.put("size", f.getSize()+"");
			map.put("type", f.getContentType());
			map.put("realName", realName);
			map.put("url", path+"upload/"+realName);
			list.add(map);
			
			File file = new File(path,realName);
			if(!file.exists()){
				file.mkdirs();
			}
			//创建文件
			
			f.transferTo(file);
		}
		
		return list;
	}
}
