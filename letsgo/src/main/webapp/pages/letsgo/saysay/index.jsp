<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HOME</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Peculiar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<link href="<c:url value="/style/home/style.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/style/home/home.css"/>" rel='stylesheet' type='text/css' />

<!-- base 包 -->
<%@ include file="/commons/taglib.jsp" %>
<script src="<c:url value="/utils/ueditor/ueditor.config.js"/>"></script>
<script src="<c:url value="/utils/ueditor/ueditor.all.js"/>"> </script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/utils/ueditor/lang/zh-cn/zh-cn.js"/>"></script>

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
	 	 
	 	var editor = new UE.ui.Editor({
	 		 toolbars: [
		 	   ['emotion']
			] 
	 	});
	 	editor.render("editor");
	 	editor.render("editor-list");
	});
</script>
</head>
<body class="" style="background-color: rgba(0, 0, 0, 0.50);" >
	<div class="blog-backimg" style=" width:100%;height:100%;position: fixed; z-index:-1"></div>
	<!-- header -->
	<%@ include file="../head.jsp" %>
	<div class="container"  style="height:1024px;">
	<%@ include file="say-head.jsp" %>
	<!-- 内容 -->
	<div class="content-message" style="">
		<div style="padding:20px 20px;height:100%;width:100%; border: 1px solid rgba(162, 163, 177, 0.36)">
			<div style="width:70%;height:10%; margin-left: 15%"> 
				<script id="editor" type="text/plain" style="width:100%;height:100%;"></script>
			    <div>
			    	<div class="contact-but">
						<input type="submit" value="发表文章" class="btn btn-primary" />
						<input type="submit" value="保存草稿" class="btn btn-primary" />
						<input type="submit" value="取消" class="btn btn-default" />
					</div>
			    </div>
			    <br>
			    <div style="width:100%;border:1px solid rgb(195, 193, 193)">
			    	<div style="width:100%; padding: 10px 10px">asdasdasdasd</div>
				    <div class="op-list" style="height:35px;">
						<span>更新于 2016-05-08 17:16:55</span>&nbsp;&nbsp;
						<a href="javascript:" onclick="javascript:$('.reply').css('display','block')" title="查看"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>(10)</a>&nbsp;&nbsp;
						<a href="javascript:" title=""><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>(10)</a>&nbsp;&nbsp;
						<a href="javascript:"><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>(10)</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:">标签：</a>
					</div>
					<div class="reply" style="display: none;">
				       <script id="editor-list" type="text/plain" style="width:100%;height:100%;"></script>
					    <div>
					    	<div class="">
								<input type="submit" value="确定" class="btn btn-primary" />
								<input type="button" value="取消" onclick="$('.reply').css('display','none')" class="btn btn-default" />
							</div>
					    </div>
					</div>
			    </div>
			    <br>
			    <div style="width:100%;border:1px solid rgb(195, 193, 193)">
			    	<div style="width:100%; padding: 10px 10px">asdasdasdasd</div>
				    <div class="op-list" style="height:35px;">
						<span>更新于 2016-05-08 17:16:55</span>&nbsp;&nbsp;
						<a href="javascript:" onclick="javascript:$('.reply').css('display','block')" title="查看"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>(10)</a>&nbsp;&nbsp;
						<a href="javascript:" title=""><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>(10)</a>&nbsp;&nbsp;
						<a href="javascript:"><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>(10)</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:">标签：</a>
					</div>
					<div class="reply" style="display: none;">
				       <script id="editor-list" type="text/plain" style="width:100%;height:100%;"></script>
					    <div>
					    	<div class="">
								<input type="submit" value="确定" class="btn btn-primary" />
								<input type="button" value="取消" onclick="$('.reply').css('display','none')" class="btn btn-default" />
							</div>
					    </div>
					</div>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>