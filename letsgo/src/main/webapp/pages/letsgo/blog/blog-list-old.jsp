<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HOME</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Peculiar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<c:url value="/style/home/style.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/style/home/home.css"/>" rel='stylesheet' type='text/css' />

<!-- base 包 -->
<script src="<c:url value="/scripts/jquery-1.8.2-min.js"/>"></script>
<%@ include file="/commons/taglib.jsp" %>
<!-- 当滑轮欢动触发的事件 -->
<script src="<c:url value="/scripts/home/posfixed.js"/>"></script>
 <link href="<c:url value="/style/blog/blog.css"/>" rel="stylesheet" type="text/css" media="all">
<script src="<c:url value="/scripts/blog/blog.js"/>"></script>
<script type="text/javascript">
	$(function(){
	 	$("#scroll").posfixed({
			distance:1,
			pos:"top",
			type:"while",
			hide:false,
			voffset:100
		}); 
	 	
	 	 $(".datepicker").datepicker({
             autoclose: true,//选中之后自动隐藏日期选择框
             clearBtn: true,//清除按钮
             todayBtn: 'linked',//今日按钮
             format: "yyyy-mm-dd",//日期格式
    	  });
	});
	
	function zan(blogId){
		$.post("${ctx}/blog/"+blogId+"/good",function(data){
			if(data == 'false'){
				alert("对不起，您已经赞过，请明天再来吧！");
			}else if(data=='true'){
				var num = $("#zanNum"+blogId).text();
				$("#zanNum"+blogId).text(parseInt(num)+1);
			}
		});
	}
	function bad(blogId){
		$.post("${ctx}/blog/"+blogId+"/bad",function(data){
			if(data == 'false'){
				alert("对不起，您已经鄙视过，不好勿喷，请给建议，我将万分感谢！");
			}else if(data=='true'){
				var num = $("#badNum"+blogId).text();
				$("#badNum"+blogId).text(parseInt(num)+1);
			}
		});
	}
</script>
<style type="text/css">
		#blogContent{
			height:60px;
			display:block;/*内联对象需加*/
			word-break:keep-all;/* 不换行 */
			white-space:nowrap;/* 不换行 */
			overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */
			text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
		}
</style>
</head>
<body class="" style="background-color: rgba(0, 0, 0, 0.50);" >
	<div class="blog-backimg" style=" width:100%;height:100%;position: fixed; z-index:-1">
	</div>
	<!-- header -->
	<%@ include file="../head.jsp" %>
	<div class="container sidebar-nav sidebar-nav-fixed"  style="height:1024px;">
		<div class="tabbable " > 
			<ul class="nav nav-tabs"><!-- 头标签名 -->
				<li class="active"><a href="${ctx }/blog" data-toggle="">博&nbsp;&nbsp;客</a></li>
				<li class=""><a href="${ctx }/blog/add" data-toggle=" ">添&nbsp;&nbsp;加</a></li>
				<li class=""><a href="${ctx }/blog/editlist" data-toggle=" ">编&nbsp;&nbsp;辑</a></li>
			</ul>
		</div>
	<div style="height:20px;"></div>		
	<div class="leftsidebar_box" id="leftsidebar_box">
		<div class="line"></div>
		<dl class="system_log">
			<dt onClick="changeImage()">全部博文</dt>
			<dd class="first_dd"><a href="#">最新博文</a></dd>
			<dd><a href="#">最热博文</a></dd>
			<dd><a href="#">操作记录</a></dd>
		</dl>
		<dl class="custom">
			<dt onClick="changeImage()">java博文</dt>
			<dd class="first_dd"><a href="#"></a></dd>
			<dd><a href="#">JAVA SE</a></dd>
			<dd><a href="#">JAVA WEB</a></dd>
			<dd><a href="#">JAVE EE</a></dd>
		</dl>
		<dl class="channel">
			<dt>数据库博文</dt>
			<dd class="first_dd"><a href="#">MySql</a></dd>
			<dd><a href="#">Oracle</a></dd>
			<dd><a href="#">SqlServer</a></dd>
		</dl>
		<dl class="channel">
			<dt>Web前端</dt>
			<dd class="first_dd"><a href="#">JavaScript</a></dd>
			<dd><a href="#">JQuery</a></dd>
			<dd><a href="#">EasyUI</a></dd>
		</dl>
		<dl class="app">
			<dt onClick="changeImage()">APP博文</dt>
			<dd class="first_dd"><a href="#">Android</a></dd>
		</dl>
		<dl class="cloud">
			<dt></dt>
			<dd class="first_dd"><a href="#">平台运营商管理</a></dd>
		</dl>
		<dl class="syetem_management">
			<dt>系统管理</dt>
			<dd class="first_dd"><a href="#">后台用户管理</a></dd>
			<dd><a href="#">角色管理</a></dd>
			<dd><a href="#">客户类型管理</a></dd>
			<dd><a href="#">栏目管理</a></dd>
			<dd><a href="#">微官网模板组管理</a></dd>
			<dd><a href="#">商城模板管理</a></dd>
			<dd><a href="#">微功能管理</a></dd>
			<dd><a href="#">修改用户密码</a></dd>
		</dl>
		<dl class="source">
			<dt>素材库管理</dt>
			<dd class="first_dd"><a href="#">图片库</a></dd>
			<dd><a href="#">链接库</a></dd>
			<dd><a href="#">推广管理</a></dd>
		</dl>
	
		<dl class="statistics">
			<dt>统计分析</dt>
			<dd class="first_dd"><a href="#">客户统计</a></dd>
		</dl>
	</div>
	<div class="content content-search" style="padding:20px 20px; text-align: right">
		<form action="${ctx }/blog" method="post">
			<div class="input-append input-prepend">
				<input type="hidden" name="type" value="${query.type}"/>
				<input type="hidden" name="type_child" value="${query.type}"/>
				<input type="text" class="datepicker" id="beginDate"  name="beginDate" value="<fmt:formatDate value="${query.beginDate }" pattern="yyyy-MM-dd"/>" placeholder="开始日期"> ~
			 	<input type="text" class="datepicker" id="endDate" name="endDate" value="<fmt:formatDate value="${query.endDate }" pattern="yyyy-MM-dd"/>"  placeholder="结束日期"> &nbsp;&nbsp;
				<input type="text" name="content" id="search" placeholder="Search" value="${query.content }" class="placeholder" style="width:200px;">
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button><!--icon-search icon-white  -->
			</div>
		</form>
	</div>
	<!-- 内容 -->
	<div class="content content-list content-message" style="">
		<c:forEach items="${blogs }" var="blog" varStatus="index">
		<div class="content-list-child" style="">
			<!-- 标题 -->
			<div>
				${index.index+1}）
				<a href="${ctx }/blog/${blog.blogId }/show" style="font-size: 16px; " >${blog.title } </a>
			</div>
			<!-- 图片 -->
			<div style="height:50px; width:50px; float: left; margin:10px;" >&nbsp;</div>
			<!-- 内容 -->
			<div id="blogContent" style="padding:5px 10px;">
				${fn:trim(blog.contentVice)}
			</div>
			<!-- 操作 -->
			<div class="op-list">
				<span>更新于 <fmt:formatDate  value="${blog.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/><!-- 2016-05-08 17:16:55 --></span>&nbsp;&nbsp;
				<a href="${ctx }/blog/${blog.blogId}/show" title="查看"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>(<span id="">${blog.seeNum==null?0:blog.seeNum}</span>)</a>&nbsp;&nbsp;
				<a href="javascript:zan(${blog.blogId})" title=""><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>(<span id="zanNum${blog.blogId }">${blog.zanNum==null?0:blog.zanNum}</span>)</a>&nbsp;&nbsp;
				<a href="javascript:bad(${blog.blogId})"><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>(<span id="badNum${blog.blogId }">${blog.badNum==null?0:blog.badNum}</span>)</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<c:if test="${canedit==true }">
					<a href="${ctx }/blog/${blog.blogId}/edit"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;
				</c:if>
				<a href="javascript:">标签：</a>
			</div>
			<hr>
		</div>
		</c:forEach>
		<%-- <%@ include file="blog-list.jsp" %> --%>
		<%-- <%@ include file="blog-add-edit.jsp" %> --%>
	</div>
	<script type="text/javascript">
</script>
</div>
</body>
</html>