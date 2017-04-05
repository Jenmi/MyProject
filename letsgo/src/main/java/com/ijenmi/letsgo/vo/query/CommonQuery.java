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
 
public class CommonQuery {//extends BaseQuery
    
    private Date beginDate;//开始时间
    private Date endDate;//结束时间
    private String content;//内容
    private Integer id;//id
    private Integer operation;//0表示主页   1、表示add 2、表示edit  3表示show
    
	public Integer getOperation() {
		return operation;
	}
	public void setOperation(Integer operation) {
		this.operation = operation;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
    
}

