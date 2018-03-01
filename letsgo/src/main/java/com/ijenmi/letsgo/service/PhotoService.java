package com.ijenmi.letsgo.service;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ijenmi.letsgo.dao.PhotoMapper;
import com.ijenmi.letsgo.model.Photo;
import com.ijenmi.util.ImgCompressUtils;

@Service
public class PhotoService {
	@Autowired
	private PhotoMapper photoMapper;
	
	public boolean insert(Photo photo,MultipartFile photoFile, HttpServletRequest request){
		String webdir = "/images/photo";
		String dir = request.getSession().getServletContext().getRealPath("/")+webdir;
		String name = photoFile.getOriginalFilename();
		String sufix = name.substring(name.indexOf("."), name.length());
		String realName = "100"+(new Date()).getTime()+sufix;
		File f = new File(dir,realName);
		int num = 0;
		try {
			if(!f.exists()){
				f.mkdirs();
			}
			photoFile.transferTo(f);
			
			
			ImgCompressUtils.resize(f, f, 1, 0.5f);
			//photo.setPhotoId(photoId);
			photo.setPhotoPath(webdir+"/"+realName);
			photo.setCreateDate(new Date());
			num = photoMapper.insertSelective(photo);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num>0;
	}
	
	public List<Photo> select(){
		return photoMapper.query();
	}
}
