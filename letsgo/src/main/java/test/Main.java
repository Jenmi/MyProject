package test;

import com.ijenmi.letsgo.dao.BlogMapper;
import com.ijenmi.letsgo.dao.SaysayMapper;
import com.ijenmi.letsgo.service.UserManager;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class Main {
	/*public static final A a = new A();
	public static void aa(){
		
	}*/
	public static void main(String[] args) throws MalformedURLException{
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

		

//		ApplicationContext atc = new ClassPathXmlApplicationContext("/spring/applicationContext-datasource.xml");
//
//		BlogMapper blogMapper = atc.getBean(BlogMapper.class);
//
//		blogMapper.selectByPrimaryKey(10);
		
		/*URL url = new URL("http://data.zz.baidu.com/urls?site=www.ihonming.cn&token=IHZk9z1gzxI2VOz4");
		try {
			System.out.println(url.getContent());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		 /** 
	     * @param args 
	     */  
		String url = "http://data.zz.baidu.com/urls?site=www.ihonming.cn&token=IHZk9z1gzxI2VOz4";//网站的服务器连接  
		String[] param = {  
				"http://www.ihonming.cn/blog/25/show"
			};  
		String json = Post(url, param);//执行推送方法  
		System.out.println("结果是"+json);  //打印推送结果  
		
	
	}
	 /** 
     * 百度链接实时推送 
     * @param PostUrl 
     * @param Parameters 
     * @return 
     */  
    public static String Post(String PostUrl,String[] Parameters){  
        if(null == PostUrl || null == Parameters || Parameters.length ==0){  
            return null;  
        }  
        String result="";  
        PrintWriter out=null;  
        BufferedReader in=null;  
        try {  
            //建立URL之间的连接  
            URLConnection conn=new URL(PostUrl).openConnection();  
            //设置通用的请求属性  
            conn.setRequestProperty("Host","data.zz.baidu.com");  
            conn.setRequestProperty("User-Agent", "curl/7.12.1");  
            conn.setRequestProperty("Content-Length", "83");  
            conn.setRequestProperty("Content-Type", "text/plain");  
               
            //发送POST请求必须设置如下两行  
            conn.setDoInput(true);  
            conn.setDoOutput(true);  
               
            //获取conn对应的输出流  
            out=new PrintWriter(conn.getOutputStream());  
            //发送请求参数  
            String param = "";  
            for(String s : Parameters){  
                param += s+"\n";  
            }  
            out.print(param.trim());  
            //进行输出流的缓冲  
            out.flush();  
            //通过BufferedReader输入流来读取Url的响应  
            in=new BufferedReader(new InputStreamReader(conn.getInputStream()));  
            String line;  
            while((line=in.readLine())!= null){  
                result += line;  
            }  
               
        } catch (Exception e) {  
            System.out.println("发送post请求出现异常！"+e);  
            e.printStackTrace();  
        } finally{  
            try{  
                if(out != null){  
                    out.close();  
                }  
                if(in!= null){  
                    in.close();  
                }  
                   
            }catch(IOException ex){  
                ex.printStackTrace();  
            }  
        }  
        return result;  
    }

}
