/*
 * Powered By [Jenmi]
 * Web Site: http://www.ijenmi.cn 
 * Since 2016 - 2016
 */
package com.ijenmi.letsgo.vo.query;

import java.io.Serializable;
import java.util.Date;

//import org.apache.commons.lang.builder.ToStringBuilder;
//import org.apache.commons.lang.builder.ToStringStyle;


/**
 * @author Jenmi it(a)ijenmi.cn
 * @version 2.0
 * @since 1.0
 */
 
public class CurrPage {//extends BaseQuery
    
	private String pageName; //当前页面
    private Integer operation;//0表示主页   1、表示add 2、表示edit  3表示show
    private Integer type;//类型
    private Integer currPage;
    private Integer rowNum;
    public CurrPage(){}
    
    public CurrPage(String pageName, Integer operation, Integer type) {
    	super();
    	this.pageName = pageName;
    	this.operation = operation;
    	this.type = type;
    }
    
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	public Integer getOperation() {
		return operation;
	}
	public void setOperation(Integer operation) {
		this.operation = operation;
	}
	public Integer getCurrPage() {
		return currPage;
	}

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public Integer getRowNum() {
		return rowNum;
	}

	public void setRowNum(Integer rowNum) {
		this.rowNum = rowNum;
	}
}

