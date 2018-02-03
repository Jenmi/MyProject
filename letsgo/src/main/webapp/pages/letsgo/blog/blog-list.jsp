<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/commons/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>博客</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="jenmi个人博客记录自己生活日志以及自己在程序之路的学习与见解">
	<meta name="keywords" content="jenmi博客,个人博客,jenmi,java博客,java">
	<meta name="author" content="jenmi">
	<meta name="360-site-verification" content="ff5562b02f3c854e3f12b6274e1bd7c6" />
	<link rel="stylesheet" href="<c:url value='/css/hippo-off-canvas.css'/>"  type="text/css">
	<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.carousel.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.theme.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.transitions.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/rs-plugin/css/settings.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/flexslider/flexslider.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/isotope/isotope.css'/>">
	<link rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">
	<link rel="stylesheet" href="<c:url value='/js/magnific-popup/magnific-popup.css'/>">
	<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
	<link href='<c:url value="/style/bootstrap/bootstrap-datepicker3.min.css"/>' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="<c:url value='/css/icomoon/style.css'/>" type="text/css">
	<link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>" type="text/css">
	<!-- SKIN -->
	<link rel="stylesheet" href="<c:url value='/css/color-scheme/default-black.css'/>" type="text/css">
	<script src="<c:url value='/js/owl-carousel/owl.carousel.min.js'/>"></script>
</head>
<body id="portfolio-wide-four-m">
<div id="main-wrapper">
	<div class="offcanvas-pusher">
		<div class="content-wrapper">
			<div class="outer-wrapper">
			<%@ include file="/pages/letsgo/head.jsp" %>
<!-- PAGE HEADER -->
<div class="page_header">
	<div class="page_header_parallax">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3><span>博客</span>生活有度，人生添寿。 <br> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
					—— 书摘</h3>
				</div>
			</div>
		</div>
	</div>
	<div class="bcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="bcrumbs">
						<li><a href="${ctx}/"><i class="fa fa-home"></i>主页</a></li>
						<li>博客</li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- INNER CONTENT -->
<div class="inner-content">
	<div class="container">
		<div class="row">
			<!-- Sidebar -->
			<aside class="col-sm-3 ">
			<%-- 	<div class="side-widget space50">
					<h4>Search</h4>
					<form role="" action="${ctx }/blog" class="" method="post">
						<input type="text" style="height:30px;width:250px;" class="datepicker form-control" id="beginDate"  name="beginDate" value="<fmt:formatDate value="${query.beginDate }" pattern="yyyy-MM-dd"/>" placeholder="Start date">
						<input type="text" style="height:30px;width:250px;" class="datepicker form-control" id="endDate" name="endDate" value="<fmt:formatDate value="${query.endDate }" pattern="yyyy-MM-dd"/>"  placeholder="End date">
						<input class="form-control" type="text " placeholder="请输入内容">&nbsp;
						<input type="hidden" name="type" value="${query.type}"/>
						<input type="hidden" name="type_child" value="${query.type}"/>

						<!--icon-search icon-white  -->
						<button type="submit" class="btn btn-primary">
							Search
						</button>
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div> --%>
				<%-- <div class="side-widget space50">
					<h4>博客 &nbsp;&nbsp;<a href="${ctx }/blog/add"><i class="icon-plus2"></i></a></h4>
					<ul class="list-unstyled cat-list">
						<li> <a href="${ctx }/blog?type=3">java博客</a> <a href="${ctx }/blog/add"><i class="icon-plus2"></i></a></li>
						<li> <a href="${ctx }/blog?type=7">mysql博客</a> <a href="${ctx }/blog/add"><i class="icon-plus2"></i></a></li>
						<li> <a href="${ctx }/blog?type=2">jquery博客</a> <a href="${ctx }/blog/add"><i class="icon-plus2"></i></a></li>
						<li> <a href="${ctx }/blog?type=10">项目博客</a><a href="${ctx }/blog/add"> <i class="icon-plus2"></i></a></li>
						<li> <a href="${ctx }/blog?type=10">生活博客</a> <a href="${ctx }/blog/add"><i class="icon-plus2"></i></a></li>
					</ul>
				</div> --%>
				<div class="side-widget space50">
					<h4>热门文章</h4>
					<ul class="list-unstyled popular-post">
						<c:forEach var="item" items="${hotList }" varStatus="index">
							<li>
								<%-- <div class="popular-img">
									<a href="#"> <img src="<c:url value='/images/blog/1/${index.index+1 }.jpg'/>"  class="img-responsive" alt=""></a>
								</div> --%>
								<div class="popular-desc">
									<h5> <a href="${ctx }/blog/${item.blogId}/show" target="_blank">${index.index+1}.${item.title }</a></h5>
									<span>Jenmi</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- <div class="side-widget space50">
					<h4>Archives</h4>
					<ul class="list-unstyled cat-list">
						<li> <a href="#">2016 春季</a> <i class="icon-plus2"></i></li>
						<li> <a href="#">2016 夏季</a> <i class="icon-plus2"></i></li>
						<li> <a href="#">2016 秋季</a> <i class="icon-plus2"></i></li>
						<li> <a href="#">2016 冬季</a> <i class="icon-plus2"></i></li>
					</ul>
				</div> -->
				<div class="side-widget">
					<h4>标签</h4>
					<div class="tag-list">
						<a href="javascript:">java</a>
						<a href="javascript:">web</a>
						<a href="javascript:">News</a>
						<a href="javascript:">Fashion</a>
						<a href="javascript:">Marketing</a>
						<a href="javascript:">video</a>
						<a href="javascript:">vector</a>
						<a href="javascript:">Photoshop</a>
					</div>
				</div>
			</aside>
			<div class="col-md-9 blog-content">
				<c:forEach var="items" items="${ newList}">
					<article class="blogpost">
						<h3 class="post-title"><a href="javascript:">最新文章</a></h2>
						<div class="post-meta">
							<span><a href="javascript:"><i class="icon-clock2"></i> ${items.createDate }</a></span>
							<span><a href="javascript:"><i class="icon-user"></i> Jenmi</a></span>
							<span><a href="#"><i class="icon-eye2"></i> ${items.seeNum }</a></span>
							<span><a href="javascript:zan(${items.blogId})" title=""><i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i> <span id="zanNum${blog.blogId }">${blog.zanNum==null?0:blog.zanNum}</span></a></span>
							<span><a href="javascript:bad(${items.blogId})"><i class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></i> <span id="badNum${blog.blogId }">${blog.badNum==null?0:blog.badNum}</span></a></span>
						</div>
						<div class="space20"></div>
						<!-- Media Gallery -->
						<div class="post-media">
							<div id="blog-slider" class="owl-carousel owl-theme">
								<div class="item">
									<img src="<c:url value='/images/blog/1.jpg'/>" tppabs="" class="img-responsive" alt="">
								</div>
								<div class="item">
									<img src="<c:url value='/images/blog/2.jpg'/>" tppabs="" class="img-responsive" alt="">
								</div>
								<div class="item">
									<img src="<c:url value='/images/blog/3.jpg'/>" tppabs=""  class="img-responsive" alt="">
								</div>
							</div>
						</div>
						<div class="post-excerpt">
							<h4><a href="${ctx }/blog/${items.blogId }/show" target="_blank" >${items.title }:</a></h4>
							<p>
								${items.contentVice }...
							</p>
						</div>
					</article>
				</c:forEach>
				<article class="blogpost">
					<h4>文章列表</h4>
					<form role="" action="${ctx }/blog" class="" method="post">
						<select class="form-control"  name="type" style="width: 120px;  float:left; margin-bottom:10px;"
							placeholder="Choose a type">
								<option value="" <c:if test="${empty query.type }">selected</c:if> >--选择类型--</option>
								<option value="3" <c:if test="${query.type==3 }">selected</c:if> >Java博客</option>
								<option value="7" <c:if test="${query.type==7 }">selected</c:if>>Mysql博客</option>
								<option value="2" <c:if test="${query.type==2 }">selected</c:if>>JQuery博客</option>
								<option value="11" <c:if test="${query.type==11 }">selected</c:if>>项目博客</option>
								<option value="10" <c:if test="${query.type==10 }">selected</c:if>>生活博客</option>
						</select>&nbsp;
						<span><input type="text" style="height:34px;width:250px; display: inline-block;margin-bottom:10px;" class="datepicker form-control" id="beginDate"  name="beginDate"  value="<fmt:formatDate value="${query.beginDate }" pattern="yyyy-MM-dd"/>" placeholder="开始日期"> </span>
						<span><input type="text" style="height:34px;width:250px; display:inline-block;margin-bottom:10px; " class="datepicker form-control" id="endDate" name="endDate" value="<fmt:formatDate value="${query.endDate }" pattern="yyyy-MM-dd"/>"  placeholder="结束日期"></span>
					<!-- 	<input class="form-control" type="text" placeholder="请输入内容" style="margin-bottom:10px;" name="content">&nbsp; -->
						<%-- <input type="hidden" name="type" value="${query.type}"/>
						<input type="hidden" name="type_child" value="${query.type}"/> --%>

						<!--icon-search icon-white  -->
						<button type="submit" class="btn btn-primary">
							搜索
						</button>
						<%--<button type="submit" class="btn btn-primary">Search</button>--%>
					</form>
				</article>
				<div class="blog-sep" style="padding-top:10px;"></div>
				<c:forEach items="${blogs }" var="blog" varStatus="index">
				<article class="blogpost">
					<%--<span class="icon-quote"></span>--%>
					<blockquote class="style1" style="float: left"></blockquote>
					<h4 class="post-title"><a href="${ctx }/blog/${blog.blogId }/show" target="_blank" style="color: #122b40">${blog.title }</a></h4>
					<div class="post-meta">
						<span><a href="#"><i class="icon-clock2"></i><fmt:formatDate  value="${blog.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/></a></span>
						<span><a href="#"><i class="icon-eye2"></i> ${blog.seeNum }</a></span>
						<span><a href="#"><i class="icon-user"></i> Jenmi </a></span>
						<span><a href="javascript:zan(${blog.blogId})" title=""><i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i> <span id="zanNum${blog.blogId }">${blog.zanNum==null?0:blog.zanNum}</span></a></span>
						<span><a href="javascript:bad(${blog.blogId})"><i class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></i> <span id="badNum${blog.blogId }">${blog.badNum==null?0:blog.badNum}</span></a></span>

						<%--<span><i class="icon-archive3"></i> <a href="">Fashion</a>, <a href="#">Marketing</a></span>
						<span><a href="#"><i class="icon-speech-bubble"></i> 7 Comments</a></span>--%>

					</div>
					<div class="space20"></div>
					<div class="post-excerpt">
						<p><%-- Morbi interdum, lectus eget mattis vehicula, est nisi dapibus risus, a vestibulum enim leo sed velit. Etiam rhoncus dui quis tellus consectetur laoreet et a nulla. Suspendisse eleifend velit vitae lectus faucibus, vel consectetur magna pellentesque. Aliquam a efficitur ipsum. --%>
							${fn:trim(blog.contentVice)}...
						</p>
					</div>
					<a href="${ctx }/blog/${blog.blogId }/show" target="_blank" class="button btn-xs">阅　读&nbsp;&nbsp;<i class="fa fa-angle-right"></i></a>
				</article>
				<div class="blog-sep">
				</div>
				</c:forEach>
				<!-- Pagination -->
				<div class="page_nav">
					<a href="${ctx }/blog?currPage=${(query.currPage-1)<=1?1:query.currPage}"><i class="fa fa-angle-left"></i></a>
					<c:choose>
						<c:when test="${pageInfo.pages > 10}" >
							<c:forEach var="index" begin="${pageInfo.pageNum }" end="${pageInfo.pageNum+5 }" varStatus="status">  
								<a href="${ctx }/blog?currPage=${index}" class="active">${index}2</a>
							</c:forEach>
							<a class="no-active">...</a>
							<a class="active">${pageInfo.pages}</a>
						</c:when>
						<c:otherwise>
							<c:forEach var="index" begin="1" end="${pageInfo.pages }" varStatus="status">
								<a href="${ctx }/blog?currPage=${index}" class="active">${index}</a>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- <a href="" class="active">1</a>
					<a href="">2</a>
					<a href="">3</a> 
					<a class="no-active">...</a>
					<a href="">9</a>-->
					<a href="${ctx }/blog?currPage=${(query.currPage+1)>=pageInfo.pages ?pageInfo.pages:(query.currPage+1)}"><i class="fa fa-angle-right"></i></a>
				</div>
				<!-- End Pagination -->
			</div>
		</div>
	</div>
</div>
<!-- TWEET / SUBSCRIBE -->
<!-- <div class="footer-top">
	<div class="container">
		<div class="row">
			<div class="col-md-6 f-tweet">
				<small>Follow<em>Twitter</em></small>
				<div class="tweet-info">
					<div id="tweetcool"></div>
				</div>
			</div>
			<div class="col-md-6 f-subscribe">
				<small>Sign up<em>Newsletter</em></small>
				<form>
					<input placeholder="Search here ..." type="text">
					<button type="submit">Subscribe</button>
				</form>
			</div>
		</div>
	</div>
</div> -->

 <%@ include file="/pages/letsgo/foot2.jsp" %>
</div>
</div> <!-- /.content-wrapper -->
</div> <!-- .offcanvas-pusher -->
</div><!-- /#main-wrapper -->

<!-- STYLE SWITCHER
============================================= -->
<div class="b-settings-panel">
	<div class="settings-section">
		<span>
		Boxed
		</span>
		<div class="b-switch">
			<div class="switch-handle"></div>
		</div>
		<span>
		Wide
		</span>
	</div>
	<hr class="dashed" style="margin: 15px 0px;">
	<h5>Main Background</h5>
	<div class="settings-section bg-list">
		<div class="bg-pattern1"></div>
		<div class="bg-pattern2"></div>
		<div class="bg-pattern6"></div>
		<div class="bg-pattern10"></div>
		<div class="bg-pattern16"></div>
		<div class="bg-pattern4"></div>
		<div class="bg-pattern5"></div>
		<div class="bg-pattern7"></div>
		<div class="bg-pattern9"></div>
		<div class="bg-pattern11"></div>
		<div class="bg-pattern12"></div>
		<div class="bg-pattern13"></div>
		<div class="bg-pattern17"></div>
		<div class="bg-pattern8"></div>
		<div class="bg-pattern14"></div>
		<div class="bg-pattern15"></div>
		<div class="bg-pattern3"></div>
		<div class="bg-pattern18"></div>
	</div>
	<hr class="dashed" style="margin: 15px 0px;">
	<h5>Color Scheme</h5>
	<div class="settings-section color-list">
		<div data-src="<c:url value='/css/color-scheme/moderate-green.css'/>"  style="background: #8ec249"></div>
		<div data-src="<c:url value='/css/color-scheme/vivid-blue.css'/>" style="background: #228dff"></div>
		<div data-src="<c:url value='/css/color-scheme/orange.css'/>" style="background: #fa6900"></div>
		<div data-src="<c:url value='/css/color-scheme/brown.css'/>" style="background: #a68c69"></div>
		<div data-src="<c:url value='/css/color-scheme/yellow.css'/>"  style="background: #fabe28"></div>
		<div data-src="<c:url value='/css/color-scheme/violet.css'/>" style="background: #ba01ff"></div>
		<div data-src="<c:url value='/css/color-scheme/strong-cyan.css'/>" style="background: #00b9bd"></div>
		<div data-src="<c:url value='/css/color-scheme/soft-cyan.css'/>"  style="background: #4bd5ea"></div>
		<div data-src="<c:url value='/css/color-scheme/red.css'/>" style="background: #ff0104"></div>
		<div data-src="<c:url value='/css/color-scheme/lite-brown.css'/>" style="background: #f3a76d"></div>
		<div data-src="<c:url value='/css/color-scheme/lime-green.css'/>" style="background: #3bdbad"></div>
		<div data-src="<c:url value='/css/color-scheme/light-voilet.css'/>"style="background: #aaa5ff"></div>
		<div data-src="<c:url value='/css/color-scheme/gray-green.css'/>" style="background: #697060"></div>
		<div data-src="<c:url value='/css/color-scheme/gray-cyan.css'/>" style="background: #aeced2"></div>
		<div data-src="<c:url value='/css/color-scheme/de-green.css'/>" style="background: #b6cd71"></div>
		<div data-src="<c:url value='/css/color-scheme/cream.css'/>" style="background: #e0d6b2"></div>
	</div>
	<div class="btn-settings"></div>
</div>
<!-- END STYLE SWITCHER
============================================= -->
<!-- Preloader -->
<div id="preloader">
	<div id="status">
		<div class="status-mes"></div>
	</div>
</div>
<script src="<c:url value="/scripts/bootstrap/bootstrap-datepicker.js"/>"></script>
<%-- <script src="<c:url value='/js/main.js'/>"></script> --%>
<%-- <script src="<c:url value='/js/gmaps/greyscale.js'/>"></script> --%>
<script type="application/javascript" >
	

	$(function(){
		
		$(".datepicker").datepicker({
			autoclose: true,//选中之后自动隐藏日期选择框
			clearBtn: true,//清除按钮
			todayBtn: 'linked',//今日按钮
			format: "yyyy-mm-dd",//日期格式
		});
		
		//设置颜色按钮 ------------------start
		$('.btn-settings').on('click', function() {
			$(this).parent().toggleClass('active');
		});
		$('.switch-handle').on('click', function() {
			$(this).toggleClass('active');
			$('.outer-wrapper').toggleClass('boxed');
			
		});

		$('.bg-list div').on('click', function() {
			if ($(this).hasClass('active')) return false;
			if(!$('.switch-handle').hasClass('active')) $('.switch-handle').trigger('click');

			$(this).addClass('active').siblings().removeClass('active');    
			var cl = $(this).attr('class');
			$('body').attr('class', cl);
		});

		$('.color-list div').on('click', function() {
			if ($(this).hasClass('active')) return false;

			$('link.color-scheme-link').remove();
			
			$(this).addClass('active').siblings().removeClass('active');    
			var src 		= $(this).attr('data-src'),
				colorScheme = $('<link class="color-scheme-link" rel="stylesheet" />');

			colorScheme
				.attr('href', src)
				.appendTo('head');
		});
		//设置颜色按钮 ------------------end
		
		// BLOG SLIDER	  
	    $("#blog-slider").owlCarousel({

	        navigation: true, // Show next and prev buttons
	        slideSpeed: 300,
	        pagination: false,
	        paginationSpeed: 400,
	        singleItem: true

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

	
	/* 获取第一张图片  */
	 function getOneImage(str){
		 var reg = /<img[^>]*>/gi;
		 var strs = str.match(reg);
		if(strs == null ||  strs =="" || strs == undefined){
			return '<img src="${ctx }/images/blog/1.jpg"/>';
		}else{
			return strs[0];
		}
	};
	
	 //$(".chzn-select-deselect").chosen({allow_single_deselect:true,disable_search:true});
	// $('.chzn-select-deselect').selectpicker();
</script>

</body>


</html>