/*
 * Powered By [Jenmi]
 * Web Site: http://www.ijenmi.cn 
 * Since 2016 - 2016
 */
package com.ijenmi.letsgo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ijenmi.letsgo.dao.UserMapper;
import com.ijenmi.letsgo.model.User;

/**
 * @author Jenmi it(a)ijenmi.cn
 * @version 2.0
 * @since 1.0
 */
@Service
@Transactional
public class UserManager {
	@Autowired
	private UserMapper userMapper;
	
	public User getUserById(Integer id){
		return userMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public void addUser(){
		/*User user1 = new User();
		user1.setLoginName("user");
		user1.setName("jenmi");
		user1.setPassword("123");
		userMapper.addUser(user1);
		User user2 = new User();
		user2.setUserId((long) 1);
		user2.setLoginName("user");
		user2.setName("jenmi");
		user2.setPassword("123");
		userMapper.addUser(user2);*/
	}

	public User getByNameAndPwd(User user){
		return userMapper.getByNameAndPwd(user);
	}
    ///TODO 请在后面添加你的业务代码

}
