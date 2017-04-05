package com.ijenmi.letsgo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/saysay")
public class SaysayController {

	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "/letsgo/saysay/index";
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
		return "";
	}
	@RequestMapping(value="/doadd")
	public String doAdd(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "";
	}
	
}
