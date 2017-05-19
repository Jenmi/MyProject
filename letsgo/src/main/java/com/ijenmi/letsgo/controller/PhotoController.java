package com.ijenmi.letsgo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.ijenmi.letsgo.model.Photo;
import com.ijenmi.letsgo.service.PhotoService;

@Controller
@RequestMapping("/photo")
public class PhotoController {
	@Autowired
	private PhotoService photoService;
	
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		//PageHelper.startPage(1, pageSize)
		List<Photo> photos = photoService.select();
		model.addAttribute("photos", photos);
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
	public String doAdd(ModelMap model, Photo photo, MultipartFile photoFile, HttpServletRequest request, HttpServletResponse response){
		boolean isSuccess = photoService.insert(photo, photoFile, request);//
		return "redirect:/photo/add";
	}
	
}

