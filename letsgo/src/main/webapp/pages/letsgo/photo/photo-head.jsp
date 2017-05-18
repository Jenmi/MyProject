<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="blog-head">
	<div class="tabbable" > 
		<ul class="nav nav-tabs"><!-- 头标签名 -->
			<li class="<c:if test="${page.operation==0 }">active</c:if>"><a href="${ctx }/blog" data-toggle="">图&nbsp;&nbsp;片</a></li>
			<c:if test="${user_content.loginName!=null }">
				<li class="<c:if test="${page.operation==1 }">active</c:if>"><a href="${ctx }/blog/add" data-toggle=" ">添&nbsp;&nbsp;加</a></li>
				<li class="<c:if test="${page.operation==2 }">active</c:if>"><a href="${ctx }/blog/doedit" data-toggle=" ">编&nbsp;&nbsp;辑</a></li>
			</c:if>
		</ul>
	</div>
	
	<div style="height:20px;"></div>		
	<div class="content-search" style="padding:20px 30px 0px 20px; text-align: right">
		<div style="float:left">
			>><a href="${ctx }/photo">图片</a>
			<c:choose>
				<c:when test="${page.operation==1 }">>>新建</c:when>
				<c:when test="${page.operation==2 }">>>编辑</c:when>
				<c:when test="${page.operation==3 }">>>显示</c:when>
			</c:choose>
			
		</div>
		<div class="input-append input-prepend">
			<input type="text" name="s" id="search" placeholder="Search" value="" class="placeholder" style="width:250px;">
			<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button><!--icon-search icon-white  -->
		</div>
	</div>
</div>
		