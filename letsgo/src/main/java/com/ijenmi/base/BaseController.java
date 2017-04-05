package com.ijenmi.base;

import com.ijenmi.letsgo.vo.Msg;

public class BaseController{
	private String SUCCESS = "success";
	
	/**
	 * 获取默认的消息对象，
	 * @param status
	 * @param success
	 * @param fail
	 * @return
	 */
	public Msg getMsg(boolean status,String fail){
		Msg msg = new Msg();
		if(status){
			msg.setMessage(SUCCESS);
		}else{
			msg.setMessage(fail);
		}
		msg.setStatus(status);
		return msg;
	}
	public Msg getMsg(boolean status, String success,String fail){
		Msg msg = new Msg();
		if(status){
			msg.setMessage(success);
		}else{
			msg.setMessage(fail);
		}
		msg.setStatus(status);
		return msg;
	}
	
	public Msg getLoginMsg(){
		Msg msg = new Msg();
		msg.setMessage("请先登陆再进行该操作！");
		msg.setStatus(false);
		return msg;
	}
	
}
