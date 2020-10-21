<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Yummy Blog - Food Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="${path}/resources/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="${path}/resources/css/responsive/responsive.css"
	rel="stylesheet">
<style type="text/css">
table {
	
}

td {
	/* padding: 15px; */
	border-bottom: 1px solid #a0a0a0;
}

.first {
	text-align: center;
	font-weight: bolder;
	color: gray;
}
</style>

</head>

<body>
	<!-- Preloader Start -->
	<div id="preloader">
		<div class="yummy-load"></div>
	</div>


	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<div class="col-5 col-sm-6">
					<!--  Top Social bar start -->
					<div class="top_social_bar">
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					</div>
				</div>
				<!--  Login Register Area -->
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<div class="login">
								<a href="register.html">Sing in</a>
							</div>
							<div class="register">
								<a href="register.html">Sing up</a>
							</div>
						</div>
						<!-- Search Button Area -->
						<div class="search_button">
							<a class="searchBtn" href="#"><i class="fa fa-search"
								aria-hidden="true"></i></a>
						</div>
						<!-- Search Form -->
						<div class="search-hidden-form">
							<form action="#" method="get">
								<input type="search" name="search" id="search-anything"
									placeholder="Search Anything..."> <input type="submit"
									value="" class="d-none"> <span class="searchBtn"><i
									class="fa fa-times" aria-hidden="true"></i></span>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->

	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="index.html" class="yummy-logo">Yummy Blog</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#yummyfood-nav"
							aria-controls="yummyfood-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars" aria-hidden="true"></i> Menu
						</button>
						<!-- Menu Area Start -->
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item "><a class="nav-link" href="Main.ms">Home
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item dropdown active"><a
									class="nav-link dropdown-toggle" href="${path}/resources/#"
									id="yummyDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="puddingmusic_chart.ms">노래
											목록</a> <a class="dropdown-item" href="puddingmusic_heartchart.ms">좋아요순위</a>
										<a class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="c_Djlist.ms">Pudding
										DJ</a></li>
								<li class="nav-item"><a class="nav-link" href="listcart.ms">Cart</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="boarderList.bd">Boarder</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${path}/resources/archive.html">QnA</a></li>
								<li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="window.open('loginForm.me','window팝업','width=570, height=240, menubar=no, status=no, toolbar=no');">login</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="admin.ad">관리자페이지</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ****** Header Area End ****** -->

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">Music Content</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ****** Contatc Area Start ****** -->
	<div class="contact-area section_padding_80">
		<div class="container">
			<header>
				<h2>곡 정보</h2>
				<br>
			</header>

			<table align="center" style="width: 100%">
				<tr>
					<td rowspan="2" style="width: 452px; height: 452px;" align="center"><img
						alt="앨범이미지" width="450px" height="450px"
						src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
					</td>
				</tr>

				<tr>
					<td style="padding: 80px"><font size="5"
						style="font-weight: 700; line-height: 2;">${music.music_title }</font>
						<br> <font size="3"
						style="font-weight: 500; line-height: 2;">
							${music.music_singer }</font> <br> <font size="3"
						style="font-weight: 300; line-height: 1.6;"> 곡 장르
							${music.music_ganre }<br>
					</font> <font size="3" style="font-weight: 300; line-height: 2;">
							발메일 ${music.music_date }<br>
					</font> <font size="3" style="font-weight: 300; line-height: 2;">조회수 : ${music.music_recount}<br></font>
					 <a
						href="heart.ms?musicheart=${music.music_heart }&mno=${music.mno}">
							♡ ${music.music_heart } </a> 장바구니 넣어주세용
					<br> <audio
							autoplay="autoplay" style="width: 100%" controls="controls"
							src="<%=request.getContextPath() %>/resources/song/${music.music_song}"></audio>
					</td>
				</tr>

				<tr>
					<td align="center" colspan="5"></td>

				</tr>
				<tr>
					<td colspan="6" style="text-align: center; padding: 10px;">${lyics }</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- ****** Contact Area End ****** -->



	<!-- ****** Our Creative Portfolio Area End ****** -->

	<!-- ****** Footer Social Icon Area Start ****** -->

	<!-- ****** Footer Social Icon Area End ****** -->

	<!-- ****** Footer Menu Area Start ****** -->
	<footer class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-content">
						<!-- Logo Area Start -->
						<div class="footer-logo-area text-center">
							<a href="index.html" class="yummy-logo">Yummy Blog</a>
						</div>
						<!-- Menu Area Start -->
						<nav class="navbar navbar-expand-lg">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#yummyfood-footer-nav"
								aria-controls="yummyfood-footer-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars" aria-hidden="true"></i> Menu
							</button>
							<!-- Menu Area Start -->
							<div class="collapse navbar-collapse justify-content-center"
								id="yummyfood-footer-nav">
								<ul class="navbar-nav" id="yummy-nav">
									<li class="nav-item "><a class="nav-link" href="Main.ms">Home
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="nav-item dropdown active"><a
										class="nav-link dropdown-toggle" href="${path}/resources/#"
										id="yummyDropdown " role="button" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
										<div class="dropdown-menu" aria-labelledby="yummyDropdown">
											<a class="dropdown-item" href="puddingmusic_chart.ms">노래
												목록</a> <a class="dropdown-item"
												href="puddingmusic_heartchart.ms">좋아요순위</a> <a
												class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
										</div></li>
									<li class="nav-item"><a class="nav-link"
										href="c_Djlist.ms">Pudding DJ</a></li>
									<li class="nav-item"><a class="nav-link"
										href="listcart.ms">Cart</a></li>
									<li class="nav-item"><a class="nav-link"
										href="boarderList.bd">Boarder</a></li>
									<li class="nav-item"><a class="nav-link"
										href="${path}/resources/archive.html">QnA</a></li>
									<li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#"
										onclick="window.open('loginForm.me','window팝업','width=570, height=240, menubar=no, status=no, toolbar=no');">login</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="admin.ad">관리자페이지</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Copywrite Text -->
					<div class="copy_right_text text-center">
						<p>
							Copyright @2018 All rights reserved | This template is made with
							<i class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- ****** Footer Menu Area End ****** -->

	<!-- Jquery-2.2.4 js -->
	<script src="${path}/resources/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="${path}/resources/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap-4 js -->
	<script src="${path}/resources/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins JS -->
	<script src="${path}/resources/js/others/plugins.js"></script>
	<!-- Active JS -->
	<script src="${path}/resources/js/active.js"></script>
</body>
