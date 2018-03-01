package com.ijenmi.util;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.ConvolveOp;
import java.awt.image.Kernel;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.swing.ImageIcon;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

/**
 * @author Administrator
 *	图片压缩工具类
 */
public class ImgCompressUtils {
	public static void main(String[] args) {
		 /** 
	     * d://3.jpg 源图片 
	     * d://31.jpg 目标图片 
	     * 压缩宽度和高度都是1000 
	     *  
	     */  
	    /*
	     * 第一种方式
	     * System.out.println("压缩图片开始...");  
	    File srcfile = new File("d://32.jpg");  
	    System.out.println("压缩前srcfile size:" + srcfile.length());  
	    reduceImg("d://32.jpg", "d://31.jpg", 100, 100,null);  
	    File distfile = new File("d://31.jpg");  
	    System.out.println("压缩后distfile size:" + distfile.length());  */
	    
	    /*第二种方式*/
		File srcfile = new File("d://32.jpg");  
	    System.out.println("压缩前srcfile size:" + srcfile.length());  
	    reduceImg("d://32.jpg", "d://31.jpg", 100, 100,null);  
	    try {
 			resize(srcfile,srcfile,1,0.5f);
 		} catch (IOException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
	    System.out.println("压缩后distfile size:" + srcfile.length());  
	}
	
	 /** 
     * @param originalFile  原文件 
     * @param resizedFile  压缩目标文件 
     * @param quality  压缩质量（越高质量越好）  //一般在0.5
     * @param scale  缩放比例;  1等大. 
     * @throws IOException 
     */  
    public static void resize(File originalFile, File resizedFile,double scale, float quality) throws IOException {    
        ImageIcon ii = new ImageIcon(originalFile.getCanonicalPath());    
        Image i = ii.getImage();    
        int iWidth = (int) (i.getWidth(null)*scale);    
        int iHeight = (int) (i.getHeight(null)*scale);   
        //在这你可以自定义 返回图片的大小 iWidth iHeight  
        Image resizedImage = i.getScaledInstance(iWidth,iHeight, Image.SCALE_SMOOTH);    
        // 获取图片中的所有像素  
        Image temp = new ImageIcon(resizedImage).getImage();    
        // 创建缓冲  
        BufferedImage bufferedImage = new BufferedImage(temp.getWidth(null),    
                temp.getHeight(null), BufferedImage.TYPE_INT_RGB);    
        // 复制图片到缓冲流中  
        Graphics g = bufferedImage.createGraphics();    
        // 清除背景并开始画图  
        g.setColor(Color.white);    
        g.fillRect(0, 0, temp.getWidth(null), temp.getHeight(null));    
        g.drawImage(temp, 0, 0, null);    
        g.dispose();  
        // 柔和图片.    
        float softenFactor =0.05f;    
        float[] softenArray = { 0, softenFactor, 0, softenFactor,    
                1 - (softenFactor * 4), softenFactor, 0, softenFactor, 0 };    
        Kernel kernel = new Kernel(3, 3, softenArray);    
        ConvolveOp cOp = new ConvolveOp(kernel, ConvolveOp.EDGE_NO_OP, null);    
        bufferedImage = cOp.filter(bufferedImage, null);    
        FileOutputStream out = new FileOutputStream(resizedFile);    
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);    
        JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(bufferedImage);    
        param.setQuality(quality, true);    
        encoder.setJPEGEncodeParam(param);    
        encoder.encode(bufferedImage);  
        bufferedImage.flush();  
        out.close();  
    }   
    /** 
     * 采用指定宽度、高度或压缩比例 的方式对图片进行压缩 
     * @param imgsrc 源图片地址 
     * @param imgdist 目标图片地址 
     * @param widthdist 压缩后图片宽度（当rate==null时，必传） 
     * @param heightdist 压缩后图片高度（当rate==null时，必传） 
     * @param rate 压缩比例  
     */  
    public static void reduceImg(String imgsrc, String imgdist, int widthdist,  
            int heightdist, Float rate) {  
        try {  
            File srcfile = new File(imgsrc);  
            // 检查文件是否存在  
            if (!srcfile.exists()) {  
                return;  
            }  
            // 如果rate不为空说明是按比例压缩  
            if (rate != null && rate > 0) {  
                // 获取文件高度和宽度  
                int[] results = getImgWidth(srcfile);  
                if (results == null || results[0] == 0 || results[1] == 0) {  
                    return;  
                } else {  
                    widthdist = (int) (results[0] * rate);  
                    heightdist = (int) (results[1] * rate);  
                }  
            }  
            // 开始读取文件并进行压缩  
            Image src = javax.imageio.ImageIO.read(srcfile);  
            BufferedImage tag = new BufferedImage((int) widthdist,  
                    (int) heightdist, BufferedImage.TYPE_INT_RGB);  
  
            tag.getGraphics().drawImage(  
                    src.getScaledInstance(widthdist, heightdist,  
                            Image.SCALE_SMOOTH), 0, 0, null);  
  
            FileOutputStream out = new FileOutputStream(imgdist);  
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);  
            encoder.encode(tag);  
            out.close();  
  
        } catch (IOException ex) {  
            ex.printStackTrace();  
        }  
    }  
    
    /** 
     * 获取图片宽度 
     *  
     * @param file 
     *            图片文件 
     * @return 宽度 
     */  
    public static int[] getImgWidth(File file) {  
        InputStream is = null;  
        BufferedImage src = null;  
        int result[] = { 0, 0 };  
        try {  
            is = new FileInputStream(file);  
            src = javax.imageio.ImageIO.read(is);  
            result[0] = src.getWidth(null); // 得到源图宽  
            result[1] = src.getHeight(null); // 得到源图高  
            is.close();  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        return result;  
    }  
}
