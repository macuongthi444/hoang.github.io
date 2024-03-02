<%-- 
    Document   : forget-password
    Created on : Jan 11, 2024, 7:10:02 PM
    Author     : MH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="Shopping Online" />
	
	<!-- OG -->
	<meta property="og:title" content="Shopping Online" />
	<meta property="og:description" content="Shopping Online" />
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="data:image/png;base64,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" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="data:image/png;base64,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" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>Shopping Online </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
	
</head>
<body id="bg">
<div class="page-wraper">
	<div id="loading-icon-bx"></div>
	<div class="account-form">
		<div class="account-head" style="background-image:url(data:image/jpeg;base64,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);">
			<a href="index.html"><img src="https://bota.vn/wp-content/uploads/2019/02/dspl_ban_hang_online_3.jpg" alt=""></a>
		</div>
		<div class="account-form-inner">
			<div class="account-container">
				<div class="heading-bx left">
					<h2 class="title-head">Forget <span>Password</span></h2>
					<p>Login Your Account <a href="login.jsp">Click here</a></p>
				</div>	
				<form class="contact-bx">
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Your Email Address</label>
									<input name="dzName" type="email" required="" class="form-control">
								</div>
							</div>
						</div>
						<div class="col-lg-12 m-b30">
							<button name="submit" type="submit" value="Submit" class="btn button-md">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/contact.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
</body>

</html>

