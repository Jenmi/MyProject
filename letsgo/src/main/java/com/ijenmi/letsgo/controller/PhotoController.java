package com.ijenmi.letsgo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ijenmi.letsgo.model.Photo;

@Controller
@RequestMapping("/photo")
public class PhotoController {
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "/letsgo/photo/index";
	}
	@RequestMapping(value="{id}/show")
	public String show(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	
	@RequestMapping(value="{id}/edit")
	public String edit(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	@RequestMapping(value="/doedit")
	public String doEdit(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	
	@RequestMapping(value="add")
	public String add(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "/letsgo/photo/photo-add";
	}
	@RequestMapping(value="/doadd")
	public String doAdd(ModelMap model,@RequestParam(value="photoFile", required=false)MultipartFile file,Photo photo, HttpServletRequest request, HttpServletResponse response){
		String dir = request.getSession().getServletContext().getRealPath("/")+"/images/photo";
		String name = file.getOriginalFilename();
		File f = new java.io.File(dir,name);
		try {
			if(f.exists()){
				f.mkdirs();
			}
			file.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/photo/add";
	}
	
}

class baseManagerInface{
	public String index() {
		return "/letsgo/home";
	}
	
	public String edit() {
		return null;
	}
	public String doEdit() {
		return null;
	}
	public String add() {
		return null;
	}
	public String doAdd() {
		return null;
	}
}
