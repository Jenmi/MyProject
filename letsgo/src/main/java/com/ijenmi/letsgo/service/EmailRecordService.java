package com.ijenmi.letsgo.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ijenmi.letsgo.dao.EmailRecordMapper;
import com.ijenmi.letsgo.model.EmailRecord;

@Service
public class EmailRecordService {
	@Autowired
	private EmailRecordMapper emailRecordMapper;
	@Autowired
    private MailSender mailSender;
	@Autowired
	private SimpleMailMessage simpleMailMessage;
	
	
	@Transactional
	public int insert(EmailRecord record){
		record.setCreateDate(new Date());
		return emailRecordMapper.insert(record);
	}
	public String validEmail(EmailRecord emailRecord){
		StringBuilder err = new StringBuilder();
		
		if("".equals(emailRecord.getEamilContent()) || emailRecord.getEamilContent() == null ){
			err.append("请填写您要发送的内容");
		}else if("".equals(emailRecord.getEmailAddress()) || emailRecord.getEmailAddress() == null){
			err.append("请填写您的邮箱地址");
		}else if("".equals(emailRecord.getEmailName()) || emailRecord.getEmailName() == null){
			err.append("请填写您的姓名");
		}else if("".equals(emailRecord.getEmailTitle()) || emailRecord.getEamilContent() == null){
			err.append("请填写您的标题");
		}
		
		if(!err.toString().equals("") || err.length()==0){
			return err.toString();
		}
		
		if(emailRecord.getEamilContent().length()>200){
			err.append("发送内容超过200字数");
		}
		if(emailRecord.getEmailAddress().length()>20){
			err.append("请填写正规的邮箱");
		}
		if(emailRecord.getEmailName().length()>10){
			err.append("请正确填写您的姓名");
		}
		if(emailRecord.getEmailTitle().length()>100){
			err.append("标题不能超过100字数");
		}
		return err.toString();
	}
	
	
	public String sendEmail(EmailRecord record){
		/*Properties pro = new Properties();
		try {
			pro.load(this.getClass().getClassLoader().getResourceAsStream("/email_property.properties"));//你就改了这里吗恩，我日
		} catch (IOException e1) {
			throw new RuntimeException(e1);
		}
		String host = pro.getProperty("host"); //服务器主机可以了//我把她妈日了我看看//是用的这个配置文件吗？用的我那个
		String name = pro.getProperty("username"); //登陆名
		String pass = pro.getProperty("password"); //登录密码
		System.out.println(host+name+pass+"====================================");
		Session session = MailUtils.createSession(host, name, pass);
		
		 * 创建mail对象
		 
		String from = pro.getProperty("from");
		String to = "815262163@qq.com";
		String subject = pro.getProperty("subject");
		//MessageForm.format方法会把第一个参数中{0},使用第二个参数来替换
		//例如MessaageFormat.format{"你好{0}"， “小明”}；返回结果为：你好，小明
		//String content = MessageFormat.format(pro.getProperty("content"),user.getActivationCode());
		System.out.println(host+name+pass+from+to);
		Mail mail = new Mail(from, to, subject, "你好！！！");
		 * 发送邮件
		 
			try {
				MailUtils.send(session, mail);
			} catch (MessagingException e) {
				throw new RuntimeException(e);
			} catch (IOException e) {
				throw new RuntimeException(e);
		}*/
		try {
			simpleMailMessage.setText("内容："+record.getEamilContent()+"，地址："+record.getEmailAddress()+",电话："+record.getEmailPhone());
			simpleMailMessage.setTo("ijenmi@foxmail.com");//
			simpleMailMessage.setSubject(record.getEmailName());
			mailSender.send(simpleMailMessage);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "消息发送失败！";
		}
		return "";
	}
	
}
