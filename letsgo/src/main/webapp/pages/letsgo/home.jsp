<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>Jenmi 主页</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">

	<%@ include file="/commons/taglib.jsp" %>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" type="text/css">
	<!-- 音乐 -->
	<%-- <link rel="stylesheet" href="<c:url value='/utils/music/APlayer.min.css'/>" type="text/css">
	<script src="<c:url value="/utils/music/APlayer.min.js"/>" type="text/javascript"></script> --%>
	<script src='<c:url value='/utils/musicMax/js/jaudio.js'/>'></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/utils/musicMax/css/main.css"/>" />
</head>
<body id="header6">
<div id="page-top"></div>
<div class="outer-wrapper">
	<div class="header-wrap">
		<!-- HEADER -->
		<header id="header-main">
			<div class="container">
				<div class="navbar yamm navbar-default">
					<div class="navbar-header">
						<button type="button" data-toggle="collapse" data-target="#navbar-collapse-1" class="navbar-toggle">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="index.html" class="navbar-brand"><img src="<c:url value='/images/basic/JENMI.png'/>" width="40" alt=""/></a>
					</div>
					<div class="navbar-header">
							<div id="player" class="aplayer"></div>
					</div>
				
					<!-- SEARCH -->
					<div class="header-x pull-right">
						<div class="s-search">
							<div class="ss-trigger"><i class="icon-search2"></i></div>
							<div class="ss-content">
								<span class="ss-close icon-cross2"></span>
								<div class="ssc-inner">
									<form>
										<input type="text" placeholder="Type Search text here...">
										<button type="submit"><i class="icon-search2"></i></button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div id="navbar-collapse-1" class="navbar-collapse collapse navbar-right">
						<ul class="nav navbar-nav">
							<li class="page-scroll"><a href="#page-top">主页</a></li>
							<li class="page-scroll"><a href="#5">博客</a></li>
							<%--<li class="page-scroll"><a href="#2">Services</a></li>--%>
							<li class="page-scroll"><a href="#3">照片</a></li>
							<li class="page-scroll"><a href="#6">项目</a></li>
							<li class="page-scroll"><a href="#4">个人爱好</a></li>
							<li class="page-scroll"><a href="#1">关于我</a></li>
							<li class="page-scroll"><a href="#7">联系我</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
	</div>
<div class="slider-wrap">
		<div class="tp-banner-container">
			<div class="tp-banner" >
				<ul>
					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="1" data-masterspeed="1500" data-thumb="" data-delay="13000"  data-saveperformance="off"  data-title="Our Workplace">
						<img src="${ctx }/images/slider/1/1.jpg"   alt="kenburns1"  data-bgposition="left center" data-kenburns="on" data-duration="14000" data-ease="Linear.easeNone" data-bgfit="100" data-bgfitend="130" data-bgpositionend="right center">
						<div class="tp-caption customin customout tp-resizeme"
							data-x="left" data-hoffset="60"
							data-y="170"
							data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000"
							data-start="500"
							data-easing="Back.easeInOut"
							data-endspeed="300"
							style="font-size:80px;color:#fff;text-transform:uppercase;font-weight: 800 !important;letter-spacing: 0px;line-height: 120% !important;"
							>Creative <br> 
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;miracles
						</div>
						<div class="tp-caption light_title customin customout tp-resizeme"
							data-x="left" data-hoffset="60"
							data-y="370"
							data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000"
							data-start="700"
							data-easing="Back.easeInOut"
							data-endspeed="300" 
							style="font-size:18px;color:#fff;"
							>I can because i think i can.<br>
								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Believe in yourself.
						</div>
						<!-- <a href="#" class="tp-caption small_title  customin customout tp-resizeme"
							data-x="left" data-hoffset="60"
							data-y="450"
							data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1600"
							data-start="900"
							data-easing="Back.easeInOut"
							data-endspeed="300" style="	background: #000;
							padding:18px 28px;
							color: #fff;
							text-transform: uppercase;
							border: none;
							font-size: 13px;
							letter-spacing: 2px;
							border-radius: 0px;
							display: table;
							transition: .4s;
							border-radius:5px;
							">Buy now</a> -->
					</li>
					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7" data-masterspeed="2000" data-saveperformance="on"  data-title="Ken Burns Slide">
						<!-- MAIN IMAGE -->
						<img src="${ctx }/images/dummy.png"  alt="2" data-lazyload="${ctx }/images/slider/1/2.jpg" data-bgposition="right top" data-kenburns="on" data-duration="12000" data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center bottom">
						<!-- LAYERS -->
						<!-- LAYER NR. 1 -->
						<div class="tp-caption small_text lft tp-resizeme rs-parallaxlevel-0"
							data-x="center"
							data-y="210" 
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500"
							data-start="1200"
							data-easing="Power3.easeInOut"
							data-splitin="none"
							data-splitout="none"
							data-elementdelay="0.05"
							data-endelementdelay="0.1"
							style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;
							min-height: 0px;
							position: absolute;
							color: #fff;
							text-shadow: none;
							font-weight: 400;
							font-size: 14px;
							line-height: 20px;
							margin: 0px;
							border-width: 0px;
							border-style: none;
							text-transform: uppercase;
							white-space: nowrap;
							letter-spacing: 1.8px;
							"><span>Why you choose this template</span>
						</div>
						<!-- LAYER NR. 2 -->
						<div class="tp-caption small_text customin tp-resizeme rs-parallaxlevel-0"
							data-x="center"
							data-y="256"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500"
							data-start="1400"
							data-easing="Power3.easeInOut"
							data-splitin="none"
							data-splitout="none"
							data-elementdelay="0.1"
							data-endelementdelay="0.1"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;   width: 60px !important;
							height: 1px !important;
							background: #fff !important;
							">
							<p class="line white"></p>
						</div>
						<!-- LAYER NR. 3 -->
						<div class="tp-caption finewide_medium_white lfl tp-resizeme rs-parallaxlevel-0 center-align"
							data-x="center"
							data-y="280" 
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500"
							data-start="1800"
							data-easing="Power3.easeInOut"
							data-splitin="none"
							data-splitout="none"
							data-elementdelay="0.1"
							data-endelementdelay="0.1"
							style="z-index: 8; max-width: auto; max-height: auto; white-space: nowrap;  color: #222222;
							text-shadow: none;
							font-size: 48px;
							line-height: 50px;
							font-weight: 900;
							background-color: none;
							text-decoration: none;
							font-family:Open Sans, sans-serif;
							text-transform: uppercase;
							border-width: 0px;
							color: #fff;
							text-align:center;
							border-color: transparent;
							border-style: none;
							letter-spacing: 2.5;
							"><span>A Creative way to show <br> your projects</span>
						</div>
						<!-- LAYER NR. 4 -->
						<div class="tp-caption small_text customin tp-resizeme rs-parallaxlevel-0"
							data-x="center"
							data-y="405" 
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500"
							data-start="2000"
							data-easing="Power3.easeInOut"
							data-splitin="none"
							data-splitout="none"
							data-elementdelay="0.1"
							data-endelementdelay="0.1"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">
							<p class="line white"></p>
						</div>
						<!-- LAYER NR. 5 -->
						<div class="tp-caption small_text lfr tp-resizeme rs-parallaxlevel-0"
							data-x="center"
							data-y="435" 
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500"
							data-start="2400"
							data-easing="Power3.easeInOut"
							data-splitin="none"
							data-splitout="none"
							data-elementdelay="0.1"
							data-endelementdelay="0.1"
							style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;  position: absolute;
							color: #222222;
							text-shadow: none;
							font-weight: 400;
							font-size: 14px;
							line-height: 20px;
							margin: 0px;
							border-width: 0px;
							font-family:Open Sans, sans-serif;
							text-transform: uppercase;
							white-space: nowrap;
							color: #fff;
							letter-spacing: 1.8px;
							"><span>Create UNLIMITED portfolios and showcase them ANYWHERE</span>
						</div>
						<!-- LAYER NR. 6 -->
					<!-- 	<a href="#" class="tp-caption lfb tp-resizeme rs-parallaxlevel-0"
							data-x="center"
							data-y="490"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="500"
							data-start="2800"
							data-easing="Power3.easeInOut"
							data-splitin="none"
							data-splitout="none"
							data-elementdelay="0.1"
							data-endelementdelay="0.1"
							data-linktoslide="next"
							style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;padding:18px 28px;
							color: #fff;
							text-transform: uppercase;
							border: none;
							background:#000;
							font-size: 13px;
							letter-spacing: 2px;
							font-family: Montserrat;
							border-radius: 0px;
							display: table;
							transition: .4s;
							border-radius:5px;">buy this theme</a> -->
					</li>
					<!-- SLIDE  -->
				</ul>
				<div class="tp-bannertimer"></div>
			</div>
		</div>
	</div>

	<div class="clearfix"></div>
	<div class="copyrights">Collect from <a href="javascript:" >企业网站模板</a></div>
	<div class="padding80 border-top">
		<div class="container" id="2">
			<div class="col-md-8 col-md-offset-2 text-center space50">
				<h2>励志格言</h2>
				<p>志向是天才的幼苗，经过热爱劳动的双手培育，在肥田沃土里将成长为粗壮的大树。不热爱劳动，不进行自我教育，志向这棵幼苗也会连根枯死。确定个人志向，选好专业，这是幸福的源泉。</p>
			</div>
		</div></div>
	<div class="pattern-grey">
		<div id="stats1" class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="${ctx }/blog"><i class="icon-trophy"></i></a>
						<p><span class="count count1">187</span></p>
						<h2>博客</h2>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="javascript:"><i class="icon-lock"></i></a>
						<p><span class="count count1">123</span></p>
						<h2>说说</h2>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="${ctx }/photo"><i class=" icon-camera"></i></a>
						<p><span class="count count1">499</span></p>
						<h2>照片</h2>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="javascript:"><i class="icon-telescope"></i></a>
						<p><span class="count count1">923</span></p>
						<h2>随笔</h2>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="border-top padding80">
		<div class="container home-blog" id="5">
			<div class="text-center space40">
				<h2 class="title uppercase">我的博客</h2>
				<p>记录生活的点点滴滴，让生活更加充实。让博客记录岁月的消磨，过往不流逝</p>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="hb-info">
						<div class="hb-thumb" title="经典博客">
							<img src="<c:url value='/images/blog/1.jpg'/>" class="img-responsive" alt="经典博客"/>
							<div class="date-meta">
								<fmt:formatDate  value="${blog.createDate }" pattern="yyyy"/><span><fmt:formatDate  value="${blog.createDate }" pattern="MM"/></span><fmt:formatDate  value="${blog.createDate}" pattern="dd"/>
							</div>
						</div>
						<h4>
							<c:choose>
								<c:when test="${not empty blog.title}"><a href="${ctx}/blog/${blog.blogId}/show" target="_blank">${blog.title}</a></c:when>
								<c:otherwise>
									<a href="${ctx}/blog" target="_blank"> —经典博客</a>
								</c:otherwise>
							</c:choose>
						</h4>
						<c:choose>
								<c:when test="${not empty blog.title}">
									<p>${blog.contentVice}</p>
									<a href="${ctx}/blog/${blog.blogId}/show" target="_blank" class="readmore">查&nbsp;&nbsp;看...</a>
								</c:when>
								<c:otherwise>
									<p>世上最快乐的事，莫过于为理想而奋斗。 —— 苏格拉底</p>
									<a href="${ctx}/blog" target="_blank" class="readmore">查&nbsp;&nbsp;看...</a>
								</c:otherwise>
							</c:choose>
					</div>
				</div>
				<div class="col-md-4">
					<div class="hb-info">
						<div class="hb-thumb" title="生活博客">
							<img src="<c:url value='/images/blog/3.jpg'/>" class="img-responsive" alt="生活博客"/>
							<div class="date-meta">
								<fmt:formatDate  value="${liveBlog.createDate }" pattern="yyyy"/><span><fmt:formatDate  value="${liveBlog.createDate }" pattern="MM"/></span><fmt:formatDate  value="${liveBlog.createDate}" pattern="dd"/>
							</div>
						</div>
						<h4>
							<c:choose>
								<c:when test="${not empty blog.title}"><a href="${ctx}/blog/${liveBlog.blogId}/show" target="_blank">-${blog.title}</a></c:when>
								<c:otherwise>
									<a href="${ctx}/blog" target="_blank"> —生活博客</a>
								</c:otherwise>
							</c:choose>
						</h4>
						<c:choose>
								<c:when test="${not empty liveBlog.title}">
									<p>${liveBlog.contentVice}</p>
									<a href="${ctx}/blog/${liveBlog.blogId}/show" target="_blank" class="readmore">查&nbsp;&nbsp;看...</a>
								</c:when>
								<c:otherwise>
									<p>每个人都必须按自己心灵的良心来生活，但不是按任何理想。使良心屈从于信条，或理念，或传统，甚至是内在冲动，那是我们的堕落。 —— 劳伦斯</p>
									<a href="${ctx}/blog" target="_blank" class="readmore">查&nbsp;&nbsp;看...</a>
								</c:otherwise>
							</c:choose>
					</div>
				</div>
				<div class="col-md-4">
					<div class="hb-info">
						<div class="hb-thumb" title="工作博客">
							<img src="<c:url value='/images/blog/2.jpg'/>" class="img-responsive" alt="项目博客"/>
							<div class="date-meta">
								<fmt:formatDate  value="${proBlog.createDate }" pattern="yyyy"/><span><fmt:formatDate  value="${proBlog.createDate }" pattern="MM"/></span><fmt:formatDate  value="${proBlog.createDate}" pattern="dd"/>
							</div>
						</div>
						<h4>
							<c:choose>
								<c:when test="${not empty blog.title}"><a href="${ctx}/blog/${proBlog.blogId}/show" target="_blank">-${blog.title}</a></c:when>
								<c:otherwise>
									<a href="${ctx}/blog" target="_blank"> —项目博客</a>
								</c:otherwise>
							</c:choose>
						</h4>
						<c:choose>
								<c:when test="${not empty proBlog.title}">
									<p>${proBlog.contentVice}</p>
									<a href="${ctx}/blog/${proBlog.blogId}/show" target="_blank" class="readmore">查&nbsp;&nbsp;看...</a>
								</c:when>
								<c:otherwise>
									<p>在当前现实的狭隘基础上，有高尚理想，全面的计划；在一步一步行动上，想到远大前途，脚踏实地地稳步前进，才能有所成就。 —— 徐特立</p>
									<a href="${ctx}/blog" target="_blank" class="readmore">查&nbsp;&nbsp;看...</a>
								</c:otherwise>
							</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="clearfix space90"></div>

	<section id="portfolio-section">
		<div class="container container-full" id="3">
			<section id="portfolio-section">
				<div class="text-center space40">
					<h2 class="title uppercase">我的图片</h2>
					<p>沿途中的风景生活的事物，随手一拍</p>
				</div>
				<!-- <div class="container">
					<h3 class="uppercase text-center">我的图片</h3>
					
					<p>旅途中的风景生活的事物，随手一拍</p>
				</div> -->
				<ul class="filter" data-option-key="filter">
					<li><a class="selected" href="#filter" data-option-value="*">全&nbsp;&nbsp;部</a></li>
					<li><a href="#" data-option-value=".branding">美&nbsp;&nbsp;景</a></li>
					<li><a href="#" data-option-value=".illustration">人&nbsp;&nbsp;物</a></li>
					<li><a href="#" data-option-value=".web-design">物&nbsp;&nbsp;品</a></li>
					<li><a href="#" data-option-value=".print">其&nbsp;&nbsp;他</a></li>
				</ul>
				<div id="portfolio-home" class="isotope folio-boxed-3col" style="position: relative; height: 867px;">
					<div class="project-item branding" style="position: absolute; left: 0px; top: 0px;">
						<a href="${ctx}/photo" target="_blank">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/1.jpg'/>"   class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Aliquam tincidunt risus.</h2>
										<p>Web , Creative</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item illustration web-design illustration" style="position: absolute; left: 449px; top: 0px;">
						<a href="javascript:" target="_blank">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/2.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item illustration print" style="position: absolute; left: 899px; top: 0px;">
						<a href="./portfolio-single-slider.html">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/3.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item web-design" style="position: absolute; left: 0px; top: 289px;">
						<a href="./portfolio-single-slider.html">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/4.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item branding" style="position: absolute; left: 449px; top: 289px;">
						<a href="./portfolio-single-slider.html">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/5.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item illustration web-design print" style="position: absolute; left: 899px; top: 289px;">
						<a href="./portfolio-single-slider.html">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/6.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
			</section>
		</div>
	</section>


	<!-- INNER CONTENT -->
	<div class="container-fluid no-padding" >
		<div class="container padding80">
			<div class="col-md-8 col-md-offset-2 text-center space50" id="1">
				<h2 class="uppercase">What we do?</h2>
				<p>我是一名软件开发工程师，目前主流开发于Java Web，开发一些企业级web项目</p>
			</div>
			<div class="container">
				<div class="section-info ">
					<div class="col-md-6">
						<h4>技术名称</h4>
						<div class="space30"></div>
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne1">
											Java EE
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseOne1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Java是一门面向对象编程语言,Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程.
										Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等</p>
										</div>
								</div>
							</div>
							<div class="clearfix space10"></div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo1">
											HTML/CSS
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseTwo1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>
											HTML是网页内容的载体。内容就是网页制作者放在页面上想要让用户浏览的信息，可以包含文字、图片、视频等。
												CSS样式是表现。就像网页的外衣。比如，标题字体、颜色变化，或为标题加入背景图片、边框等。所有这些用来改变内容外观的东西称之为表现。
										</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive1">
											Javascript/JQuery
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseFive1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>
											javascript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型
											 是可插入 HTML 页面的编程代码。插入 HTML 页面后，可由所有的现代浏览器执行。
											 jQuery是一个快速、简洁的JavaScript框架，是继Prototype之后又一个优秀的JavaScript代码库（或JavaScript框架）
										</p>
									</div>
								</div>
							</div>
							<div class="clearfix space10"></div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree1">
											MySql
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseThree1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>MySQL是一个关系型数据库管理系统，由瑞典MySQL AB 公司开发，目前属于 Oracle 旗下产品。MySQL 是最流行的关系型数据库管理系统之一，在 WEB 应用方面，MySQL是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件。</p>
									</div>
								</div>
							</div>
							<div class="clearfix space10"></div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour1">
											Maven
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseFour1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Maven项目对象模型(POM)，可以通过一小段描述信息来管理项目的构建，报告和文档的软件项目管理工具</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<h4>熟练度</h4>
						<div class="space30"></div>
						<div id="skills">
							<div class="b-progress-bar" data-capacity="100" data-value="97">
								<div class="progress-label">Web Design - 97%</div>
								<div class="progress-scale">
									<div style="width: 97%;" class="progress-line"></div>
								</div>
							</div>
							<div class="b-progress-bar" data-capacity="100" data-value="86">
								<div class="progress-label">HTML/CSS - 86%</div>
								<div class="progress-scale">
									<div style="width: 86%;" class="progress-line m-2"></div>
								</div>
							</div>
							<div class="b-progress-bar" data-capacity="100" data-value="78">
								<div class="progress-label">Javascript/Jquery - 78%</div>
								<div class="progress-scale">
									<div style="width: 78%;" class="progress-line m-3"></div>
								</div>
							</div>
							<div class="b-progress-bar" data-capacity="100" data-value="78">
								<div class="progress-label">Graphic Design - 78%</div>
								<div class="progress-scale">
									<div style="width: 78%;" class="progress-line m-4"></div>
								</div>
							</div>
							<div class="b-progress-bar" data-capacity="100" data-value="65">
								<div class="progress-label">WordPress - 65%</div>
								<div class="progress-scale">
									<div style="width: 65%;" class="progress-line m-5"></div>
								</div>
							</div>
						</div>
						<div class="gap" style="height: 20px;">
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="container padding70" >
		<div class="text-center space40" id="4">
			<h2 class="title uppercase">个人爱好</h2>
			<p>做一个有爱好的人，我认为对于一切情况，只有“热爱”才是最好的老师。</p>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<div class="space90"></div>
				<ul class="features-left">
					<li>
						<i class="icon-mobile"></i>
						<h3>打篮球</h3>
						<p> 身体虚弱，它将永远不全培养有活力的灵魂和智慧。</p>
					</li>
					<li>
						<i class="icon-hazardous"></i>
						<h3>健身</h3>
						<p> 世界上没有比结实的肌肉和新鲜的皮肤更美丽的衣服</p>
					</li>
					<li>
						<i class="icon-lock"></i>
						<h3>编程 </h3>
						<p> 有两种生成一个软件设计方案的途径。一个是把它做得如此简单，以致于明显不会有漏洞存在。另一个是把它做的如此复杂，以致于不会有明显的漏洞存在。</p>
					</li>
				</ul>
			</div>
			<div class="col-sm-4 col-sm-push-4">
				<div class="space90"></div>
				<ul class="features-right">
					<li>
						<i class="icon-lightbulb"></i>
						<h3>看书</h3>
						<p> 读书使人充实，讨论使人机智，笔记使人准确，读史使人明智，读诗使人灵秀，数学使人周密，科学使人深刻，伦理使人庄重，逻辑修辞使人善辩。凡有所学，皆成性格。</p>
					</li>
					<li>
						<i class="icon-strategy"></i>
						<h3>旅游</h3>
						<p> 人之所以爱旅行，不是为了抵达目的地，而是为了享受旅途中的种种乐趣。</p>
					</li>
					<li>
						<i class="icon-globe"></i>
						<h3>交友</h3>
						<p>人之相识,贵在相知,人之相知,贵在知心。</p>
					</li>
				</ul>
			</div>
			<div class="col-sm-4 col-sm-pull-4">
				<div> <%-- <img src="<c:url value='/images/other/3.png'/>" class="img-responsive center-block" alt="">  --%>
					<div class='jAudio--player .progress-line'>
					<audio></audio>
					<div class='jAudio--ui'>
					  <div class='jAudio--thumb'></div>
					  <div class='jAudio--status-bar'>
						<div class='jAudio--details'></div>
						<div class='jAudio--volume-bar'></div>
						<div class='jAudio--progress-bar'>
						  <div class='jAudio--progress-bar-wrapper'>
							<div class='jAudio--progress-bar-played'>
							  <span class='jAudio--progress-bar-pointer'></span>
							</div>
						  </div>
						</div>
						<div class='jAudio--time'>
						  <span class='jAudio--time-elapsed'>00:00</span>
						  <span class='jAudio--time-total'>00:00</span>
						</div>
					  </div>
					</div>
					
					<div class='jAudio--playlist'>
					</div>
					<div class='jAudio--controls'>
					  <ul>
						<li><button class='btn' data-action='prev' id='btn-prev'><span></span></button></li>
						<li><button class='btn' data-action='play' id='btn-play'><span></span></button></li>
						<li><button class='btn' data-action='next' id='btn-next'><span></span></button></li>
					  </ul>
					</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>


	<%--<div class="pattern-grey padding70">
		<div class="container">
			<div class="row cta-dark">
				<div class="col-md-9">
					<h2 style="color: #000"><span>Welcome To MAXIMA</span> - Business HTML Template</h2>
					<p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque imperdiet purus quis metus imperdiet fermentum. Suspendisse hendrerit id lacus id lobortis. Vestibulum quam elit, dapibus ac augue ut.</p>
				</div>
				<div class="col-md-3">
					<a href="#" class="button btn-exlg pull-right">Download</a>
				</div>
			</div>
		</div>
	</div>--%>

	<div class="border-top"></div>

	<div class="container home-blog padding80">
		<div class="text-center space40" id="6">
			<h2 class="title uppercase">项目</h2>
			<p>项目是工作的成果，事业的基础，能力的证明</p>
		</div>
		<div class="row">
			<ul class="shop-grid">
				<li>
					<div class="product">
						<div class="text-center">
							<div class="product-thumbnail">
								<img src="<c:url value='/images/shop/1.png'/>" class="img-responsive" alt="">
								<div class="product-overlay">
									<a class="product-overlay-link" href="#"><i class="fa fa-search-plus"></i></a>
									<!-- <a class="product-overlay-cart" href="#"><i class="fa fa-cart-plus"></i></a> -->
								</div>
							</div>
							<h3 class="product-title"><a href="${ctx}/herp/login" target="_blank">ERP项目</a></h3>
							<span class="product-price"  style="font-size:1px;color:#878787">四川远海国际旅行社，根据公司业务做得一套项目</span>
							<a href="${ctx}/herp/login" target="_blank" class="button btn-md btn-radius btn-center color2 btn-radius add_to_cart_button">查看详情</a>
						</div>
					</div>
				</li>
				<li>
					<div class="product">
						<span class="badge blue"><span>50%</span><br>Off</span>
						<div class="text-center">
							<div class="product-thumbnail">
								<img src="<c:url value='/images/shop/oa.png'/>" class="img-responsive" alt="">
								<div class="product-overlay">
									<a class="product-overlay-link" href="#"><i class="fa fa-search-plus"></i></a>
									<a class="product-overlay-cart" href="#"><i class="fa fa-cart-plus"></i></a>
								</div>
							</div>
							<h3 class="product-title"><a href="${ctx}/oa" target="_blank">OA项目</a></h3>
							<span class="product-price" style="font-size:1px;color:#878787">四川天纵科技</span>
							<a href="${ctx}/oa" target="_blank" class="button btn-md btn-radius btn-center color2 btn-radius add_to_cart_button">查看详情</a>
						</div>
					</div>
				</li>
				<li>
					<div class="product">
						<div class="text-center">
							<div class="product-thumbnail">
								<img src="<c:url value='/images/shop/letsgo_img.png'/>" class="img-responsive" alt="">
								<!-- <div class="product-overlay">
									<a class="product-overlay-link" href="#"><i class="fa fa-search-plus"></i></a>
									<a class="product-overlay-cart" href="#"><i class="fa fa-cart-plus"></i></a>
								</div> -->
							</div>
							<h3 class="product-title"><a href="#">个人博客</a></h3>
							<span class="product-price" style="font-size:1px;color:#878787">属于自己的个人主页</span>
							<a href="#" class="button btn-md btn-radius btn-center color2 btn-radius add_to_cart_button">查看详情</a>
						</div>
					</div>
				</li>


			</ul></div>
	</div>
<div class="border-top"></div>
	<div class="container-fluid no-padding" id="7">
		<div>
			<div class="text-center">
				<h2 class="title uppercase">Contact Us</h2>
				<p>人，真是奇怪，没有外人来证明你，就往往看不出自己的价值。我，需要你的来信，无论对与否</p>
			</div>
			<div class="space40"></div>
		</div>
	</div>
</div>
<!-- INNER CONTENT -->
<!-- STYLE SWITCHER
============================================= -->
<%@ include file="/pages/letsgo/color_block.jsp" %>
<!-- END STYLE SWITCHER
============================================= -->
<%@ include file="/pages/letsgo/foot.jsp" %>
<script src="<c:url value='/js/main.js'/>"></script>
<script src="<c:url value='/js/gmaps/greyscale.js'/>"></script>
<script type="text/javascript">
	function contactSub(){
		//var emailTitle = $("#emailTitle").val();
		var eamilContent = $("#eamilContent").val();
		var emailName = $("#emailName").val();
		var emailAddress = $("#emailAddress").val();
		var emailPhone = $("#emailPhone").val();
		//emailTitle:emailTitle,
		/* */ $.post("${ctx }/email/send",{eamilContent:eamilContent,emailName:emailName,emailAddress:emailAddress,emailPhone:emailPhone},
		function(data){
			if(data!=""){
				alert(data);
			}
		});
	}
	
/* 	var ap2 = new APlayer({
        element: document.getElementById('player'),
        narrow: true,
        autoplay: false,
        showlrc: false,
        music: {
            title: 'Sugar',
            author: 'Maroon 5',
            url: '${ctx}/utils/music/Sugar.mp3',
            pic: '${ctx}/utils/music/pf1.jpg',
            height:5,
            width:5
        }
    });
    ap2.init(); */
	
    
    
	
</script>
<%-- <script src='<c:url value='/utils/musicMax/js/jquery-2.1.4.min.js'/>'></script> --%>

<script>

//setTimeout("",5000);
$(function(){
	var t = {
			playlist:[
				{
				  file: "utils/musicMax/tracks/01.mp3",
				  thumb: "utils/musicMax/thumbs/01.jpg",
				  trackName: "Dusk",
				  trackArtist: "Tobu & Syndec",
				  trackAlbum: "Single",
				},
				{
				  file: "utils/musicMax/tracks/02.mp3",
				  thumb: "utils/musicMax/thumbs/02.jpg",
				  trackName: "Blank",
				  trackArtist: "Disfigure",
				  trackAlbum: "Single",
				},
				{
				  file: "utils/musicMax/tracks/03.mp3",
				  thumb: "utils/musicMax/thumbs/03.jpg",
				  trackName: "Fade",
				  trackArtist: "Alan Walker",
				  trackAlbum: "Single",
				} 
			],
			autoPlay:true
		}
	var a = $('.jAudio--player').jAudio(t);
});
	
</script>

</body>
</html>