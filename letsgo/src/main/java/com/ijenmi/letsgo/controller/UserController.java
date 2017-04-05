/*
 * Powered By [Jenmi]
 * Web Site: http://www.ijenmi.cn 
 * Since 2016 - 2016
 */

package com.ijenmi.letsgo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ijenmi.letsgo.model.User;
import com.ijenmi.letsgo.service.UserManager;



/**
 * @author Jenmi it(a)ijenmi.cn
 * @version 2.0
 * @since 1.0
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@Autowired
	private UserManager userManager;
	
	/** 列表 */
	@RequestMapping
	public ModelAndView indexList(){
		System.out.println("1121231");
//		model.addAllAttributes(toModelMap(page, query));
		
		/*try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/letsgo", "root", "");
			PreparedStatement ps = con.prepareStatement("select * from au_user");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getString("user_id"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		User user = userManager.getUserById(1);
		System.out.println(user);
		
		userManager.addUser();
		return null;
	}
	
	@RequestMapping("/{id}/show")
	public String show(ModelMap model,@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
		
		User user = userManager.getUserById(id);
		if(user == null){
			
		}
		model.addAttribute("user", user);
		return "/letsgo/user/show";
	}
	
	
}

