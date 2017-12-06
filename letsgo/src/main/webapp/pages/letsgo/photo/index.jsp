<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%-- <%@ include file="/commons/taglib.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片</title>
<script src="<c:url value="/scripts/jquery-1.8.2-min.js"/>"></script>
 <%-- <link rel="stylesheet" href="<c:url value='/css/hippo-off-canvas.css'/>"  type="text/css">
<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.carousel.css'/>">
<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.theme.css'/>">
<link rel="stylesheet" href="<c:url value='/js/owl-carousel/owl.transitions.css'/>"> --%>
<link rel="stylesheet" href="<c:url value='/js/rs-plugin/css/settings.css'/>">
<link rel="stylesheet" href="<c:url value='/js/flexslider/flexslider.css'/>">
<link rel="stylesheet" href="<c:url value='/js/isotope/isotope.css'/>">
<link rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">
<link rel="stylesheet" href="<c:url value='/js/magnific-popup/magnific-popup.css'/>">
<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
<link rel="stylesheet" href="<c:url value='/css/icomoon/style.css'/>" type="text/css">
<link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>" type="text/css">
<link href='<c:url value="/style/bootstrap/bootstrap.css"/>' rel='stylesheet' type='text/css' />

<%-- <script src="<c:url value='/js/flexslider/jquery.flexslider.js'/>"></script>
<script src="<c:url value='/js/tweecool.js'/>"></script>
<script src="<c:url value='/js/rs-plugin/js/jquery.themepunch.revolution.min.js'/>"></script>
<script src="<c:url value='/js/jquery.appear.js'/>"></script>
<script src="<c:url value='/js/owl-carousel/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/js/jflickrfeed.min.js'/>"></script>
<script src="<c:url value='/js/jquery.sticky.js'/>"></script>
<script src="<c:url value='/js/jquery.countdown.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.js'/>"></script>--%>
<script src="<c:url value="/scripts/bootstrap/bootstrap.js"/>"></script>
<script src="<c:url value='/js/magnific-popup/jquery.magnific-popup.min.js'/>"></script>
<script src="<c:url value='/js/isotope/isotope.pkgd.js'/>"></script> 
</head>
<body id="portfolio-wide-four-m">
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
							<li><a href="${ctx }/"><i class="fa fa-home"></i> 主页</a></li>
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
						<a href="<c:url value='/images/projects/7.jpg'/>"  class="mp-lightbox"  >
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
						<a href="<c:url value='/images/projects/8.jpg'/>"  class="mp-lightbox" >
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
						<a href="<c:url value='/images/projects/9.jpg'/>"  class="mp-lightbox"  >
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
						<a href="<c:url value='/images/projects/10.jpg'/>"  class="mp-lightbox"  >
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
						<a href="<c:url value='/images/projects/11.jpg'/>"  class="mp-lightbox"   >
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
						<a href="<c:url value='/images/projects/12.jpg'/>"  class="mp-lightbox"   >
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
    <script>
    //根据类项显示不一样的图片的功能---------start
    var $container = $('#portfolio-home');
    $container.isotope({
        itemSelector: '.project-item'
    });
    var $optionSets = $('#portfolio-section .filter'),
        $optionLinks = $optionSets.find('a');
    $optionLinks.click(function() {
        var $this = $(this);
        if ($this.hasClass('selected')) {
            return false;
        }
        var $optionSet = $this.parents('.filter');
        $optionSet.find('.selected').removeClass('selected');
        $this.addClass('selected');
        var options = {},
            key = $optionSet.attr('data-option-key'),
            value = $this.attr('data-option-value');
        value = value === 'false' ? false : value;
        options[key] = value;
        if (key === 'layoutMode' && typeof changeLayoutMode === 'function') {
            changeLayoutMode($this, options);
        } else {
            $container.isotope(options);
        }
        return false;
    });
  	
    $('.mp-lightbox').magnificPopup({
    	  removalDelay: 300,
    	        type: 'image',
    	        closeOnContentClick: true,
    	  mainClass: 'mfp-fade',
    	        image: {
    	            verticalFit: true
    	        },
    	 gallery:{
    	    enabled:true
    	  }
  	    });
  //根据类项显示不一样的图片的功能---------end
    
 	//设置外观和颜色的按钮  ---------start 
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
	//设置外观和颜色的按钮  ---------end
    </script>
<%-- <script src="<c:url value='/js/main.js'/>"></script> --%>
<script src="<c:url value='/js/gmaps/greyscale.js'/>"></script>
</body>
</html>