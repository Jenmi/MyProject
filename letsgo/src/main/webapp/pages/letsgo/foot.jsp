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
										<input class="form-control" name="emailName" placeholder="Name" id="name" required="" data-validation-required-message="Please enter your name." type="text">
										<p class="help-block"></p>
									</div>
								</div>
								<div class="row control-group">
									<div class="form-group col-xs-12 controls">
										<input class="form-control" name="emailAddress" placeholder="Email Address" id="email" required="" data-validation-required-message="Please enter your email address." type="email">
										<p class="help-block"></p>
									</div>
								</div>
								<div class="row control-group">
									<div class="form-group col-xs-12  controls">
										<input class="form-control" name="emailPhone" placeholder="Phone Number" id="phone" required="" data-validation-required-message="Please enter your phone number." type="tel">
										<p class="help-block"></p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row control-group">
									<div class="form-group col-xs-12 controls">
										<textarea rows="7" name="eamilContent" class="form-control" placeholder="Message" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
										<p class="help-block"></p>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-xs-12">
								<button type="submit" onclick="contactSub()" class="btn btn-primary">Send Message</button>
							</div>
						</div>
					</form>
				</div>
				<!--contact form-->
			</div>
			<div class="col-md-4">
				<h3 class="no-margin">Contact info</h3>
				<div class="space20"></div>
				<ul class="contact-info">
					<li>
						<p><strong><i class="fa fa-map-marker"></i> Address:</strong> No 123 , Wallstreet, Newyork NY123456</p>
					</li>
					<li>
						<p><strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a href="#">Support@website.com</a></p>
					</li>
					<li>
						<p><strong><i class="fa fa-phone"></i> Phone:</strong> +91 1800 2345 2132</p>
					</li>
					<li>
						<p><strong><i class="fa fa-print"></i> Fax:</strong> +91 2345 2132</p>
					</li>
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
				<p>&copy; Copyright 2016. Jenmi </p>
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

	
		