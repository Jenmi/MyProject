package com.ijenmi.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class baseControllerInface {
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request, HttpServletResponse response){
		return "";
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
