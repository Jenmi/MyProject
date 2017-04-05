package com.ijenmi.letsgo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ijenmi.letsgo.model.EmailRecord;
import com.ijenmi.letsgo.service.EmailRecordService;
@Controller
@RequestMapping("/email")
public class EmailRecordController {
	@Autowired
	private EmailRecordService emailRecordService;
	
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
	
	@RequestMapping(value="/send")
	public String sendEmail(EmailRecord emailRecord,HttpServletRequest request, HttpServletResponse response){
		String err = emailRecordService.validEmail(emailRecord);
		if(!"".equals(emailRecordService.validEmail(emailRecord))){
			return err;
		}
		int num = emailRecordService.insert(emailRecord);
		if(num>0){
			err = emailRecordService.sendEmail(emailRecord);
		}
		return err;
	}
	
}
