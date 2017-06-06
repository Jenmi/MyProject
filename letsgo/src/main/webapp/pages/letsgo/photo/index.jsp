<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片</title>
<%@ include file="/commons/taglib.jsp" %>
</head>
<body id="header6">
	<div id="main-wrapper">
        <div class="offcanvas-pusher">
          <div class="content-wrapper">
			<div class="outer-wrapper">
	<!-- HEADER -->
	<%@ include file="/pages/letsgo/head.jsp" %>
	<!-- PAGE HEADER -->
	<div class="page_header">
		<div class="page_header_parallax">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3><span>  孔丘</span>知者乐水，仁者乐山。<br></h3>
					</div>
				</div>
			</div>
		</div>
		<div class="bcrumb-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="bcrumbs">
							<li><a href="${ctx }/home"><i class="fa fa-home"></i> 主页</a></li>
							<li>图片</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- PORTFOLIO CONTENT -->
	<div class="inner-content no-padding-bottom">
		<div class="container container-full">
			<section id="portfolio-section">
				<ul class="filter no-margin-top" data-option-key="filter">
					<li><a class="selected" href="#filter" data-option-value="*">全&nbsp;&nbsp;部</a></li>
					<li><a href="#" data-option-value=".photoType1">美&nbsp;&nbsp;景</a></li>
					<li><a href="#" data-option-value=".photoType2">人&nbsp;&nbsp;物</a></li>
					<li><a href="#" data-option-value=".photoType3">物&nbsp;&nbsp;品</a></li>
					<li><a href="#" data-option-value=".photoType9">其&nbsp;&nbsp;他</a></li>
				</ul>
				<div id="portfolio-home" class="isotope folio-boxed-4col ">
					<div class="project-item photoType1">
						<a href="<c:url value='/images/projects/1.jpg'/>" class="mp-lightbox" >
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
					<div class="project-item photoType2 photoType3 photoType2">
						<a href="<c:url value='/images/projects/2.jpg'/>" class="mp-lightbox" >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/2.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType2 photoType9">
						<a href="<c:url value='/images/projects/3.jpg'/>" class="mp-lightbox" tppabs="http://ckthemes.com/html/maxima/maxima/portfolio-single-slider.html">
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
					<div class="project-item photoType3">
						<a href="<c:url value='/images/projects/4.jpg'/>" class="mp-lightbox">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/4.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType1">
						<a href="<c:url value='/images/projects/5.jpg'/>"  class="mp-lightbox"  class="mp-lightbox">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/5.jpg'/>"class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType2 photoType3 photoType9">
						<a href="<c:url value='/images/projects/6.jpg'/>" class="mp-lightbox">
							<div class="project-gal">
								<img src="<c:url value='/images/projects/6.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType1 photoType2">
						<a href="portfolio-single-slider.html"  class="mp-lightbox"  >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/7.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType2 photoType3">
						<a href="portfolio-single-slider.html"  class="mp-lightbox" >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/8.jpg'/>" class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType1 photoType3 photoType9">
						<a href="portfolio-single-slider.html"  class="mp-lightbox"  >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/9.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType1">
						<a href="portfolio-single-slider.html"  class="mp-lightbox"  >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/10.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType1 photoType3">
						<a href="portfolio-single-slider.html"  class="mp-lightbox"   >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/11.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<div class="project-item photoType1">
						<a href="portfolio-single-slider.html"  class="mp-lightbox"   >
							<div class="project-gal">
								<img src="<c:url value='/images/projects/12.jpg'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>Vestibulum auctor</h2>
										<p>Image Gallery</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					<c:forEach var="item" items="${photos }">
							<div class="project-item photoType${item.type }">
						<a href="<c:url value='${item.photoPath }'/>"  class="mp-lightbox" >
							<div class="project-gal">
								<img src="<c:url value='${item.photoPath }'/>"  class="img-responsive" alt="">
								<div class="overlay-folio2">
									<div class="project-info">
										<h2>${item.photoTitle }</h2>
										<p>${item.photoContent }</p>
									</div>
								</div>
							</div>
						</a>
					</div>
					</c:forEach>
				</div>
			</section>
		</div>
	</div>
	
	<!-- TWEET / SUBSCRIBE -->
	<div class="footer-top">
		<div class="container">
			<div class="row">
			</div>
		</div>
	</div>
	<%@ include file="/pages/letsgo/foot2.jsp" %>
</div>
          </div> <!-- /.content-wrapper -->
        </div> <!-- .offcanvas-pusher -->
    </div><!-- /#main-wrapper -->
<!-- STYLE SWITCHER 
============================================= -->
<%@ include file="/pages/letsgo/color_block.jsp" %>
<!-- END STYLE SWITCHER 
============================================= -->
    <!-- Preloader -->
    <div id="preloader">
      <div id="status">
        <div class="status-mes"></div>
      </div>
    </div>
<script src="<c:url value='/js/main.js'/>"></script>
<script src="<c:url value='/js/gmaps/greyscale.js'/>"></script>
</body>
</html>