<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>博客-新增</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Peculiar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<%@ include file="/commons/taglib.jsp" %>
<link href="<c:url value="/style/home/style.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/style/home/home.css"/>" rel='stylesheet' type='text/css' />

<!-- base 包 -->
<!-- 当滑轮欢动触发的事件 -->
<script src="<c:url value="/scripts/home/posfixed.js"/>"></script>
<link href="<c:url value="/style/blog/blog.css"/>" rel="stylesheet" type="text/css" media="all">
<script src="<c:url value="/scripts/blog/blog.js"/>"></script>
<script src="<c:url value="/utils/ueditor/ueditor.config.js"/>"></script>
<script src="<c:url value="/utils/ueditor/ueditor.all.js"/>"> </script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/utils/ueditor/lang/zh-cn/zh-cn.js"/>"></script>
<script type="text/javascript">
	function baseSubmit(){
		$("#photoContent").val(UE.getEditor('editor').getContent());
		$("#baseForm").submit();
	}
</script>
</head>
<body class="" style="background-color: rgba(0, 0, 0, 0.50);" >
	
	<div class="blog-backimg" style=" width:100%;height:100%;position: fixed; z-index:-1"></div>
	<!-- header -->
	<%@ include file="../head.jsp" %>
	<div class="container"  style="height:1024px;">
	<%@ include file="photo-head.jsp" %>
	<!-- 内容 -->
	<form action="${ctx }/photo/doadd" id="baseForm" method="POST"  enctype="multipart/form-data" >
		<%@ include file="form-include.jsp" %>
	</form>
	<script type="text/javascript">
	</script>
</div>
</body>
</html>