package test;

import com.ijenmi.letsgo.dao.BlogMapper;
import com.ijenmi.letsgo.dao.SaysayMapper;
import com.ijenmi.letsgo.service.UserManager;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class Main {
	/*public static final A a = new A();
	public static void aa(){
		
	}*/
	public static void main(String[] args){
//		A2 a2 = new A2("你好！");
//		Main main = new Main();
//		System.out.println(a.i);
//		System.out.println(++a.i);
//		main.aaa1();
	/*	A2 a2 = new A2();
		aa();
		
		try {
			FileInputStream fs = new FileInputStream(new File("/asdfsa"));
		}catch (FileNotFoundException e) {
			System.out.println("1");
		} catch(Exception e2){
			// TODO Auto-generated catch block
			System.out.println("2");
			e2.printStackTrace();
		}*/
		
//		String st1 = "123";
//		String st2 = "123";
//		System.out.println("result = " + (st1 == st2));
//
//		System.out.println("as415dgdgfg".matches("[a-z]*"));



		ApplicationContext atc = new ClassPathXmlApplicationContext("/spring/applicationContext-datasource.xml");

		BlogMapper blogMapper = atc.getBean(BlogMapper.class);

		blogMapper.selectByPrimaryKey(10);
	}


}
