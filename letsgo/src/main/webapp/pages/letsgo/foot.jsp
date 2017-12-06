<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- INNER CONTENT -->
<div class="inner-content">
	<div class="container">
		<div class="row">
			<div class="col-md-8 margin30">
				<div class="form-contact">
					<form name="sentMessage" action="" id="contactForm" method="post" novalidate="">
						<div class="row">
							<div class="col-md-6">
								<div class="row control-group">
									<div class="form-group col-xs-12 controls">
										<input class="form-control" name="emailName" placeholder="请输入您的名字" id="emailName" required="" data-validation-required-message="请输入您的名字" type="text">
										<p class="help-block"></p>
									</div>
								</div>
								<div class="row control-group">
									<div class="form-group col-xs-12 controls">
										<input class="form-control" name="emailAddress" placeholder="请输入您的地址" id="emailAddress" required="" data-validation-required-message="请输入您的地址" type="email">
										<p class="help-block"></p>
									</div>
								</div>
								<div class="row control-group">
									<div class="form-group col-xs-12  controls">
										<input class="form-control" name="emailPhone" placeholder="请输入您的电话" id="emailPhone" required="" data-validation-required-message="请输入您的电话" type="tel">
										<p class="help-block"></p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row control-group">
									<div class="form-group col-xs-12 controls">
										<textarea rows="7" name="eamilContent" class="form-control" placeholder="请输入内容" id="eamilContent" required="" data-validation-required-message="请输入内容"></textarea>
										<p class="help-block"></p>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-xs-12">
								<button type="button" onclick="contactSub()" class="btn btn-primary" style="background-color: rgba(2, 121, 206, 0.75)">发送消息</button>
							</div>
						</div>
					</form>
				</div>
				<!--contact form-->
			</div>
			<div class="col-md-4">
				<h3 class="no-margin">联系信息</h3>
				<div class="space20"></div>
				<ul class="contact-info">
					<li>
						<p><strong><i class="fa fa-map-marker"></i> 地址:</strong>成都市高新区天府五街</p>
					</li>
					<li>
						<p><strong><i class="fa fa-envelope"></i> 邮箱:</strong> <a href="#">ijenmi@foxmail.com</a></p>
					</li>
					<li>
						<p><strong><i class="fa fa-phone"></i> 电话:</strong> +182****3388</p>
					</li>
					<!-- <li>
						<p><strong><i class="fa fa-print"></i> Fax:</strong> +91 2345 2132</p>
					</li> -->
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- FOOTER COPYRIGHT -->
<div class="footer-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<p>&copy;  2016. Jenmi 蜀ICP备17011406号 </p>
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
</div>

	
		