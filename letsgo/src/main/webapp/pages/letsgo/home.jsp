<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">

	<%@ include file="/commons/taglib.jsp" %>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>" type="text/css">
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
						<a href="index.html" class="navbar-brand"><img src="<c:url value='/images/basic/logo.png'/>" width="40" alt=""/></a>
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
						<img src="images/slider/1/1.jpg"   alt="kenburns1"  data-bgposition="left center" data-kenburns="on" data-duration="14000" data-ease="Linear.easeNone" data-bgfit="100" data-bgfitend="130" data-bgpositionend="right center">
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
							Clean Design
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
							>Your website should look great across all devices, no matter how big <br>
							or small. Take control of your contentâ€™s presentation.
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
						<img src="images/dummy.png" tppabs="http://ckthemes.com/html/maxima/maxima/images/dummy.png"  alt="2" data-lazyload="images/slider/1/2.jpg" data-bgposition="right top" data-kenburns="on" data-duration="12000" data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center bottom">
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
	<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
	<div class="padding80 border-top">
		<div class="container" id="2">
			<div class="col-md-8 col-md-offset-2 text-center space50">
				<h2>励志格言</h2>
				<p>Sed dapibus, leo ut placerat bibendum, ligula ligula consectetur eros, sed efficitur justo ex ut risus. Integer nec eros non elit finibus dictum quis sit amet augue.</p>
			</div>
		</div></div>
	<div class="pattern-grey">
		<div id="stats1" class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="${ctx }/blog"><i class="icon-trophy"></i></a>
						<p><span class="count count1">187</span></p>
						<h2>Competitions</h2>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="javascript:"><i class="icon-lock"></i></a>
						<p><span class="count count1">123</span></p>
						<h2>New Members</h2>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="${ctx }/photo"><i class=" icon-camera"></i></a>
						<p><span class="count count1">499</span></p>
						<h2>Photos Taken</h2>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="stats1-info">
						<a href="javascript:"><i class="icon-telescope"></i></a>
						<p><span class="count count1">923</span></p>
						<h2>Job Openings</h2>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="border-top padding80">
		<div class="container home-blog" id="5">
			<div class="text-center space40">
				<h2 class="title uppercase">我的博客</h2>
				<p>Sed laoreet libero eget tempus blandit praesent eu erat sed sem facilisis rutrum metus<br>facilisis eros justo non ipsum aliquam lacinia non eu ex.</p>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="hb-info">
						<div class="hb-thumb">
							<img src="<c:url value='/images/blog/1.jpg'/>" class="img-responsive" alt="经典博客"/>
							<div class="date-meta">
								<fmt:formatDate  value="${blog.createDate }" pattern="yyyy"/><span><fmt:formatDate  value="${blog.createDate }" pattern="MM"/></span><fmt:formatDate  value="${blog.createDate}" pattern="dd"/>
							</div>
						</div>
						<h4><a href="${ctx}/blog/${blog.blogId}/show" target="_blank">${blog.title}-Climb the mountain</a></h4>
						<p>${blog.contentVice}Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque volutpat mi tellus, euismod viverra dolor ultrices sit amet.</p>
						<a href="${ctx}/blog/${blog.blogId}/show" target="_blank" class="readmore">Read more...</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="hb-info">
						<div class="hb-thumb">
							<img src="<c:url value='/images/blog/3.jpg'/>" class="img-responsive" alt="生活博客"/>
							<div class="date-meta">
								<fmt:formatDate  value="${liveBlog.createDate }" pattern="yyyy"/><span><fmt:formatDate  value="${liveBlog.createDate }" pattern="MM"/></span><fmt:formatDate  value="${liveBlog.createDate}" pattern="dd"/>
							</div>
						</div>
						<h4><a href="${ctx}/blog/${liveBlog.blogId}/show" target="_blank">${liveBlog.title}-Girl showing stats</a></h4>
						<p>${liveBlog.contentVice}Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque volutpat mi tellus, euismod viverra dolor ultrices sit amet.</p>
						<a href="${ctx}/blog/${liveBlog.blogId}/show" target="_blank" class="readmore">Read more...</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="hb-info">
						<div class="hb-thumb">
							<img src="<c:url value='/images/blog/2.jpg'/>" class="img-responsive" alt="项目博客"/>
							<div class="date-meta">
								<fmt:formatDate  value="${proBlog.createDate }" pattern="yyyy"/><span><fmt:formatDate  value="${proBlog.createDate }" pattern="MM"/></span><fmt:formatDate  value="${proBlog.createDate}" pattern="dd"/>
							</div>
						</div>
						<h4><a href="${ctx}/blog/${proBlog.blogId}/show" target="_blank">${proBlog.title }--A photographers heart</a></h4>
						<p>${proBlog.contentVice }---Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque volutpat mi tellus, euismod viverra dolor ultrices sit amet.</p>
						<a href="${ctx}/blog/${proBlog.blogId}/show" target="_blank" class="readmore">Read more...</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="clearfix space90"></div>

	<section id="portfolio-section">
		<div class="container container-full" id="3">
			<section id="portfolio-section">
				<div class="container">
					<h3 class="uppercase text-center">我的图片</h3>
				</div>
				<ul class="filter" data-option-key="filter">
					<li><a class="selected" href="#filter" data-option-value="*">All</a></li>
					<li><a href="#" data-option-value=".branding">Branding</a></li>
					<li><a href="#" data-option-value=".illustration">Illustration</a></li>
					<li><a href="#" data-option-value=".web-design">Web Design</a></li>
					<li><a href="#" data-option-value=".print">Print</a></li>
				</ul>
				<div id="portfolio-home" class="isotope folio-boxed-3col" style="position: relative; height: 867px;">
					<div class="project-item branding" style="position: absolute; left: 0px; top: 0px;">
						<a href="${ctx}/photo">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/1.jpg'/>" class="img-responsive" alt="">
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
						<a href="./portfolio-single-slider.html">
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
				<p>我是一名软件开发工程师，目前主流开发于java /Lorem ipsum dolor sit amet, viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. </p>
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
											Lorem ipsum dolor sit amet consectetur adipiscing elit
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseOne1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Etiam cursus pellentesque neque, eget ullamcorper augue eleifend a. In sit amet pulvinar purus. Ut in nibh tortor. Nullam quis magna sed nunc facilisis blandit vel at erat. Donec blandit et nulla sed lacinia. Quisque ullamcorper tincidunt ante, ut feugiat felis consectetur ut.</p>
									</div>
								</div>
							</div>
							<div class="clearfix space10"></div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo1">
											Curabitur et diam vitae dolor aliquet et in massa
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseTwo1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Nam ullamcorper imperdiet luctus. Vestibulum tincidunt malesuada mi, in posuere augue cursus nec. Morbi et vehicula risus, fermentum lacinia justo. Etiam tellus arcu, eleifend tristique enim rutrum iaculis risus, id tincidunt dui fringilla sed bibendum lorem.</p>
									</div>
								</div>
							</div>
							<div class="clearfix space10"></div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree1">
											Proin faucibus sem sed dapibus dapibus
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseThree1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Etiam cursus pellentesque neque, eget ullamcorper augue eleifend a. In sit amet pulvinar purus. Ut in nibh tortor. Nullam quis magna sed nunc facilisis blandit vel at erat. Donec blandit et nulla sed lacinia. Quisque ullamcorper tincidunt ante, ut feugiat felis consectetur ut.</p>
									</div>
								</div>
							</div>
							<div class="clearfix space10"></div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour1">
											Lorem ipsum dolor sit amet consectetur adipiscing elit
											<span class="fa fa-plus"></span>
										</a>
									</h4>
								</div>
								<div id="collapseFour1" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Etiam cursus pellentesque neque, eget ullamcorper augue eleifend a. In sit amet pulvinar purus. Ut in nibh tortor. Nullam quis magna sed nunc facilisis blandit vel at erat. Donec blandit et nulla sed lacinia. Quisque ullamcorper tincidunt ante, ut feugiat felis consectetur ut.</p>
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
								<div class="progress-label">Graphic Design - 78%</div>
								<div class="progress-scale">
									<div style="width: 78%;" class="progress-line m-3"></div>
								</div>
							</div>
							<div class="b-progress-bar" data-capacity="100" data-value="65">
								<div class="progress-label">WordPress - 65%</div>
								<div class="progress-scale">
									<div style="width: 65%;" class="progress-line m-4"></div>
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
			<p>Sed laoreet libero eget tempus blandit praesent eu erat sed sem facilisis rutrum metus<br>facilisis eros justo non ipsum aliquam lacinia non eu ex.</p>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<div class="space90"></div>
				<ul class="features-left">
					<li>
						<i class="icon-mobile"></i>
						<h3>打篮球</h3>
						<p> Sed suscipit, nisl sed auctor justo ante rhoncus ullamcorper justo quam non venenatis elit eget enim pharetra iaculis</p>
					</li>
					<li>
						<i class="icon-hazardous"></i>
						<h3>健身</h3>
						<p> Sed suscipit, nisl sed auctor justo ante rhoncus ullamcorper justo quam non venenatis elit eget enim pharetra iaculis</p>
					</li>
					<li>
						<i class="icon-lock"></i>
						<h3>编程 </h3>
						<p> Sed suscipit, nisl sed auctor justo ante rhoncus ullamcorper justo quam non venenatis elit eget enim pharetra iaculis</p>
					</li>
				</ul>
			</div>
			<div class="col-sm-4 col-sm-push-4">
				<div class="space90"></div>
				<ul class="features-right">
					<li>
						<i class="icon-lightbulb"></i>
						<h3>Pure &amp; Simple</h3>
						<p> Sed suscipit, nisl sed auctor justo ante rhoncus ullamcorper justo quam non venenatis elit eget enim pharetra iaculis</p>
					</li>
					<li>
						<i class="icon-strategy"></i>
						<h3>旅游</h3>
						<p> Sed suscipit, nisl sed auctor justo ante rhoncus ullamcorper justo quam non venenatis elit eget enim pharetra iaculis</p>
					</li>
					<li>
						<i class="icon-globe"></i>
						<h3>交友</h3>
						<p> Sed suscipit, nisl sed auctor justo ante rhoncus ullamcorper justo quam non venenatis elit eget enim pharetra iaculis</p>
					</li>
				</ul>
			</div>
			<div class="col-sm-4 col-sm-pull-4">
				<div> <img src="<c:url value='/images/other/3.png'/>" class="img-responsive center-block" alt=""> </div>
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
			<h2 class="title uppercase">做过的项目</h2>
		</div>
		<div class="row">
			<ul class="shop-grid">
				<li>
					<div class="product">
						<div class="text-center">
							<div class="product-thumbnail">
								<img src="<c:url value='/images/shop/1.jpg'/>" class="img-responsive" alt="">
								<div class="product-overlay">
									<a class="product-overlay-link" href="#"><i class="fa fa-search-plus"></i></a>
									<a class="product-overlay-cart" href="#"><i class="fa fa-cart-plus"></i></a>
								</div>
							</div>
							<h3 class="product-title"><a href="#">Grey jacket</a></h3>
							<span class="product-price">£ 69.99</span>
							<a href="#" class="button btn-md btn-radius btn-center color2 btn-radius add_to_cart_button">Add to cart</a>
						</div>
					</div>
				</li>
				<li>
					<div class="product">
						<span class="badge blue"><span>50%</span><br>Off</span>
						<div class="text-center">
							<div class="product-thumbnail">
								<img src="<c:url value='/images/shop/2.jpg'/>" class="img-responsive" alt="">
								<!-- <div class="product-overlay">
									<a class="product-overlay-link" href="#"><i class="fa fa-search-plus"></i></a>
									<a class="product-overlay-cart" href="#"><i class="fa fa-cart-plus"></i></a>
								</div> -->
							</div>
							<h3 class="product-title"><a href="#">Leather bag</a></h3>
							<span class="product-price">£ 119.99</span>
							<a href="#" class="button btn-md btn-radius btn-center color2 btn-radius add_to_cart_button">Add to cart</a>
						</div>
					</div>
				</li>
				<li>
					<div class="product">
						<div class="text-center">
							<div class="product-thumbnail">
								<img src="<c:url value='/images/shop/3.jpg'/>" class="img-responsive" alt="">
								<!-- <div class="product-overlay">
									<a class="product-overlay-link" href="#"><i class="fa fa-search-plus"></i></a>
									<a class="product-overlay-cart" href="#"><i class="fa fa-cart-plus"></i></a>
								</div> -->
							</div>
							<h3 class="product-title"><a href="#">Checked Shirt</a></h3>
							<span class="product-price">£ 39.99</span>
							<a href="#" class="button btn-md btn-radius btn-center color2 btn-radius add_to_cart_button">Add to cart</a>
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
				<p>Sed laoreet libero eget tempus blandit praesent eu erat sed sem facilisis rutrum metus<br>facilisis eros justo non ipsum aliquam lacinia non eu ex.</p>
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
		//var emailTitle = $("#emailTitle").val;
		var eamilContent = $("#eamilContent").val
		var emailName = $("#emailName").val
		var emailAddress = $("#emailAddress").val
		var emailPhone = $("#emailPhone").val
		/* $.post("${ctx }/email/send",{'emailTitle':emailTitle,'eamilContent':emailContent,'emailName':emailName,'emailAddress':emailAddress,'emailPhone':emailPhone},
		function(data){
			if(data!=""){
				alert(data);
			}
		}); */
	}
</script>


</body>
</html>