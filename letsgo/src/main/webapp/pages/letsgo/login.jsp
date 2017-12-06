<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/commons/taglib.jsp" %>
<title>用户登录</title>
<script src="<c:url value="/utils/easyui/jquery.easyui.min.js"/>"></script>
  <script src="<c:url value="/utils/easyui/jquery.easyui.min.js"/>"></script>
  <script src="<c:url value="/utils/easyui/locale/easyui-lang-zh_CN.js"/>"></script>
  <script src="<c:url value="/utils/easyui/custom/common.js"/>"></script> 
  <link rel="stylesheet" href="<c:url value="/utils/easyui/themes/material/easyui.css"/>" />
  <link rel="stylesheet" href="<c:url value="/utils/easyui/themes/icon.css"/>" />
  <link rel="stylesheet" href="<c:url value="/utils/easyui/themes/color.css"/>" />
  <link rel="stylesheet" href="<c:url value="/utils/easyui/custom/common.css"/>" />
  <link href="<c:url value="/style/home/login.css"/>" rel="stylesheet" type="text/css" media="all">
<style type="text/css">
	/* .center{
		position: absolute;
		left: 40%;
		top: 40%;
		margin-left:-100px;
		margin-top:-50px;
	} */
	a.c8:hover {
	background:rgb(0, 160, 234);
	filter:none;
	}
	.c8 ,.c8:hover{
	border-color:rgb(0, 160, 234);
	background:linear-gradient(to bottom,rgb(0, 160, 234) 0,rgb(0, 160, 234) 100%);
	}
	#eMsg {
	display:none;
	}
</style>
</head>
<body id="loginBody" >
	<div class="easyui-panel center" style="width:305px;background: rgba(255,255,255,0.5);border-radius:16px;"  data-options="border:false">
   	  	<form id="loginForm" action="${ctx}/dologin" method="post">
    	  	<input type="hidden" name="uriPath" value="${pre_uri}"/>
	       	<div style="margin: 20px; font-size: 17px; text-align: center;margin-top:30px;color:#000"><span style="display:inline-block; font-size:18px;color:#000" ></span>用户登陆</div>
	       	<label style="margin-left:25px;color:red">${userInfo.message }</label>
	        <div style="margin-bottom:15px;margin-left:25px;">
	            <input class="easyui-textbox easyui-validatebox" id="j_username" name="loginName" placeholder="请输入您的账号" style="width:255px;height:40px;padding:12px" data-options="iconCls:'icon-man',iconAlign:'left',iconWidth:38,required:true,validateOnCreate:false,missingMessage:'用户名不能为空'" value=""/>
	        </div>
	        <div style="margin-bottom:30px;margin-left:25px;">
	            <input class="easyui-textbox easyui-validatebox" id="j_password" name="password" type="password" placeholder="请输入您的密码" style="width:255px;height:40px;padding:12px" data-options="iconCls:'icon-lock',iconAlign:'left',iconWidth:38,required:true,validateOnCreate:false,missingMessage:'密码不能为空'" value=""/>
	        </div>
	        <div style="margin-bottom:30px; margin-left:25px;">
	        	<!-- <input type="text" name="code" id="code"
					class="easyui-validatebox large txt"
					data-options="missingMessage:'Enter Verification code',prompt:'Enter Verification code',required:true"
					autocomplete="off" /> -->
				<input class="easyui-textbox easyui-validatebox" id="code1" name="code" type="" placeholder="请输入您的密码" style="width:130px;height:40px;padding:12px" data-options="iconCls:'icon-more',iconAlign:'left',iconWidth:38,required:true,validateOnCreate:false,missingMessage:'验证码不能为空'" value=""/>
				<img id="kaptcha" src="${ctx }/kaptcha/?${now }"
					alt="Click to change the verification code"
					title="Click to change the verification code" />
	        </div>
	        <div class="clearfix">
	        	
	        </div>
	         <!-- <div style="margin-bottom:20px;">
	            <input type="checkbox" name="rmbUser" id="rmbUser" style="margin: 0px;zoom:0.9;vertical-align: middle;"/>
	            <label style="vertical-align: middle;">记住我</label>
	        </div>  -->
	        
	        <div style="margin-bottom: 60px;margin-left:25px;">
	        	<p id="eMsg" style="">用户名或密码错误</p>
	            <a id="login" href="javascript:" class="easyui-linkbutton c8" style="">
	                <span style="font-size:20px;">登 陆</span>
	            </a>
	        </div>
	    </form>
    </div>	`
</body>

<script type="text/javascript">
/*<![CDATA[*/
	$(function(){
		$('body').css('height',$(window).height());
		$('.center').css({'marginTop':($(window).height()-$('.center').height())*0.5,'marginLeft':($(window).width()-$('.center').width())*0.5,'position':'absolute'})
		
		//错误信息
		var eFlag = window.location.href.split("?").length > 1;
		if(eFlag){
			$("#eMsg").show();
			$.cookie("rmbUserTrc", "false", {expires : -1});
			$.cookie("userName", '', {expires : -1});
			$.cookie("passWord", '', {expires : -1});
		}
		
		$("#login").click(function(){
			var form = $("#loginForm");
			$("#j_username").textbox({required:true});
			$("#j_password").textbox({required:true});
			if(form.form("validate")){
				/* saveUserInfo();  */
				form.submit();
			}
		});
		
	$('#kaptcha').click(
			function() {
				$(this).attr(
						'src',
						'${ctx}/kaptcha/?'+ Math.floor(Math.random() * 100));
		});
	$("#code1").keyup(function(e){
		alert(1);
		if(e.which == 13){
			$("#loginForm").click(); 
			 return false; 
		} 
	}); 

		
		/* if ($.cookie("rmbUserTrc") == "true") {
			$("#rmbUser").attr("checked", true);
			$("#j_username").textbox("setText",$.cookie("userName"));
			$("#j_password").textbox("setText",$.cookie("passWord"));
		} */
	});
	
	/* function saveUserInfo() {
		if (document.getElementById("rmbUser").checked == true) {
			var userName = $("#j_username").val();
			var passWord = $("#j_password").val();
			$.cookie("rmbUserTrc", "true", {expires : 7}); // 存储一个带7天期限的 cookie
			$.cookie("userName", userName, {expires : 7}); // 存储一个带7天期限的 cookie
			$.cookie("passWord", passWord, {expires : 7}); // 存储一个带7天期限的 cookie
		} else {
			$.cookie("rmbUserTrc", "false", {expires : -1});
			$.cookie("userName", '', {expires : -1});
			$.cookie("passWord", '', {expires : -1});
		}
	} */
/*]]>*/
</script>
</html>
