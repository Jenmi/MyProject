<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">

	<title>Jenmi博客 | ${blog.title }</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
<script src="<c:url value="/scripts/jquery-1.8.2-min.js"/>"></script>
<script src="<c:url value="/scripts/bootstrap/bootstrap.js"/>"></script>
<link rel="stylesheet" href="<c:url value='/css/hippo-off-canvas.css'/>"  type="text/css">
<link rel="stylesheet" href="<c:url value='/js/flexslider/flexslider.css'/>">
<link rel="stylesheet" href="<c:url value='/js/isotope/isotope.css'/>">
<link rel="stylesheet" href="<c:url value='/js/magnific-popup/magnific-popup.css'/>">
<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
<link rel="stylesheet" href="<c:url value='/css/icomoon/style.css'/>" type="text/css">
<link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>" type="text/css">
<link href='<c:url value="/style/bootstrap/bootstrap.css"/>' rel='stylesheet' type='text/css' />
</head>
<body>
<div class="outer-wrapper" id="page-top">
	<%@ include file="/pages/letsgo/head.jsp" %>
	<!-- PAGE HEADER -->
	<div class="page_header">
		<div class="page_header_parallax">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3><span>博客</span>一个人的豁达，体现在落魄</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="bcrumb-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="bcrumbs">
							<li><a href="${ctx}/home"><i class="fa fa-home"></i> 主页</a></li>
							<li><a href="${ctx}/blog">博客</a></li>
							<li>详情</li>
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
				<div class="col-sm-8 col-sm-offset-2">
					<div class="blog-single">
						<article class="blogpost">
							<h2 class="post-title"><a href="#">${blog.title }</a></h2>
							<div class="post-meta">
								<span><a href="#"><i class="icon-clock2"></i><fmt:formatDate  value="${blog.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/></a></span>
								<span><a href="#"><i class="icon-eye2"></i> ${blog.seeNum }</a></span>
								<span><a href="#"><i class="icon-user"></i> Jenmi </a></span>

								<span><a href="javascript:zan(${blog.blogId})" title=""><i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i> <span id="zanNum${blog.blogId }">${blog.zanNum==null?0:blog.zanNum}</span></a></span>
								<span><a href="javascript:bad(${blog.blogId})"><i class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></i> <span id="badNum${blog.blogId }">${blog.badNum==null?0:blog.badNum}</span></a></span>
								<%--<span><i class="icon-archive3"></i> <a href="">Vector</a>, <a href="#">Design</a></span>
								<span><a href="#"><i class="icon-speech-bubble"></i> 13 Comments</a></span>--%>
							</div>
							<div class="space30"></div>
							<p>
								${blog.content }
							</p>
						</article>
						<div style="width: auto;margin-top:10px; text-align: center">
							<span><a href="javascript:zan(${blog.blogId})" title=""><i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span><a href="javascript:bad(${blog.blogId})"><i class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></i></a></span>

						</div>
					</div>
					<%-- <div class="padding70">
						<h4 class="uppercase space30">Comments&nbsp;&nbsp;<span>(3)</span></h4>
						<ul class="comment-list">
							<li>
								<a class="pull-left" href="#"><img class="comment-avatar" src="<c:url value='/images/quote/1.jpg'/>" alt="" height="50" width="50"></a>
								<div class="comment-meta">
									<a href="#">John Doe</a>
									<span>
									<em>Feb 17, 2015, at 11:34</em>
									<a href="#" class="button btn-xs reply"><i class="fa fa-comment"></i>&nbsp;回复</a>
									</span>
								</div>
								<p>
									希望你再接再厉，更加努力
								</p>
							</li>
							<li class="comment-sub">
								<a class="pull-left" href="#"><img class="comment-avatar" src="<c:url value='/images/quote/2.jpg'/>" alt="" height="50" width="50"></a>
								<div class="comment-meta">
									<a href="#">John Doe</a>
									<span>
									<em>March 08, 2015, at 03:34</em>
									<a href="#" class="button btn-xs reply"><i class="fa fa-comment"></i>&nbsp;回复</a>
									</span>
								</div>
								<p>
									不错写的很好，我很赞赏你
								</p>
							</li>
							<li>
								<a class="pull-left" href="#"><img class="comment-avatar" src="<c:url value='/images/quote/1.jpg'/>" alt="" height="50" width="50"></a>
								<div class="comment-meta">
									<a href="#">John Doe</a>
									<span>
									<em>June 11, 2015, at 07:34</em>
									<a href="#" class="button btn-xs reply"><i class="fa fa-comment"></i>&nbsp;回复</a>
									</span>
								</div>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor sit amet urna nec tempor. Nullam pellentesque in orci in luctus. Sed convallis tempor tellus a faucibus. Suspendisse et quam eu velit commodo tempus.
								</p>
							</li>
						</ul>
					</div> --%>
					<!-- <h4 class="uppercase space30">Leave a comment</h4>
					<form method="post" action="#" id="form" role="form" class="form">
						<div class="row">
							<div class="col-md-6 space20">
								<input name="name" id="name" class="input-md form-control" placeholder="Name *" maxlength="100" required="" type="text">
							</div>
							<div class="col-md-6 space20">
								<input name="email" id="email" class="input-md form-control" placeholder="Email *" maxlength="100" required="" type="email">
							</div>
						</div>
						<div class="space20">
							<input name="website" id="website" class="input-md form-control" placeholder="Website" maxlength="100" required="" type="text">
						</div>
						<div class="space20">
							<textarea name="text" id="text" class="input-md form-control" rows="6" placeholder="Comment" maxlength="400"></textarea>
						</div>
						<button type="submit" class="button btn-small">
							Submit Comment
						</button>
					</form>
					<div class="space60"></div>
					<div class="clearfix prevnext">
						<a href="#" class="left"><i class="fa fa-angle-left"></i>&nbsp;Prev post</a>
						<a href="#" class="right">Next post&nbsp;<i class="fa fa-angle-right"></i></a>
					</div> -->
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<%-- <footer>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h4 class="space30">About us</h4>
					<img src="<c:url value='/images/basic/logo-ico.png'/>" class="img-responsive space20" width="262" alt=""/>
					<p>Lorem ipsum dolor sit amet consec tetur elit vel quam ligula. Duis vel pulvinar diam in lacus non nisl commodo convallis.</p>
					<p>Phasellus rutrum urna ut nibh congue, ut vehicula nibh ultricies.</p>
				</div>
				<div class="col-md-3">
					<h4 class="space30">Recent Posts</h4>
					<ul class="f-posts">
						<li>
							<img src="<c:url value='/images/blog/1.jpg'/>" class="img-responsive" alt=""/>
							<h5><a href="#">Lorem ipsum post title</a></h5>
							<p><i class="fa fa-comments"></i> 5 Comments</p>
						</li>
						<li>
							<img src="<c:url value='/images/blog/2.jpg'/>" class="img-responsive" alt=""/>
							<h5><a href="#">Lorem ipsum post title</a></h5>
							<p><i class="fa fa-comments"></i> 5 Comments</p>
						</li>
						<li>
							<img src="<c:url value='/images/blog/3.jpg'/>" class="img-responsive" alt=""/>
							<h5><a href="#">Lorem ipsum post title</a></h5>
							<p><i class="fa fa-comments"></i> 5 Comments</p>
						</li>
						<li>
							<img src="<c:url value='/images/blog/4.jpg'/>" class="img-responsive" alt=""/>
							<h5><a href="#">Lorem ipsum post title</a></h5>
							<p><i class="fa fa-comments"></i> 5 Comments</p>
						</li>
					</ul>
				</div>
				<div class="col-md-3">
					<h4 class="space30">Contact</h4>
					<ul class="c-info">
						<li><i class="fa fa-map-marker"></i> 72 Wall street Rd<br>Some county<br>Newyork 20001
						</li>
						<li>
						</li>
						<li><i class="fa fa-phone"></i> (012) 345 5678 910</li>
						<li><i class="fa fa-envelope-o"></i> support@dk-themes.com</li>
						<li><i class="fa fa-skype"></i> myskypeid</li>
					</ul>
					<div class="clearfix space10"></div>
				</div>
				<div class="col-md-3">
					<h4 class="space30">Flickr</h4>
					<ul id="flickr" class="thumbs"></ul>
				</div>
			</div>
		</div>
	</footer>
 --%>
	<!-- FOOTER COPYRIGHT -->
	<!-- <div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<p>&copy; Copyright 2015. Maxima. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
				</div>
				<div class="col-md-4">
					<div class="f-social pull-right">
						<a class="fa fa-twitter" href="#"></a>
						<a class="fa fa-facebook" href="#"></a>
						<a class="fa fa-linkedin" href="#"></a>
						<a class="fa fa-dribbble" href="#"></a>
						<a class="fa fa-google-plus" href="#"></a>
						<a class="fa fa-skype" href="#"></a>
						<a class="fa fa-behance" href="#"></a>
						<a class="fa fa-stumbleupon" href="#"></a>
						<a class="fa fa-rss" href="#"></a>
					</div>
				</div>
			</div>
		</div>
	</div> -->
</div>

<!-- jQuery -->
<script type="application/javascript" >
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

</body>
</html>