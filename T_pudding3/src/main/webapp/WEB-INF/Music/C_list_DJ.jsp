<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="../common.jsp"%>
<!DOCTYPE HTML>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>푸딩메인</title>

<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="${path}/resources/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="${path}/resources/css/responsive/responsive.css"
	rel="stylesheet">
<link href="${path}/resources/assets/css/bootstrap.css" rel="stylesheet" />
<link href="${path}/resources/assets/css/login-register.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${path}/resources/http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script src="${path}/resources/assets/js/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="${path}/resources/assets/js/bootstrap.js"
	type="text/javascript"></script>
<script src="${path}/resources/assets/js/login-register.js"
	type="text/javascript"></script>

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

				</div>
				<!--  Login Register Area -->
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<div class="login">
								<a href="loginForm.me">Sing in</a>
							</div>
							<div class="register">
								<a href="${path}/resources/register.html">Sing up</a>
							</div>
						</div>
						<!-- Search Button Area -->
						<div class="search_button">
							<a class="searchBtn" href="${path}/resources/#"><i
								class="fa fa-search" aria-hidden="true"></i></a>
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
						<a href="${path}/resources/index.html" class="yummy-logo">PUDDING</a>
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
								<li class="nav-item "><a class="nav-link"
									href="${path}/resources/index.html">Home <span
										class="sr-only">(current)</span></a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="${path}/resources/#"
									id="yummyDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="puddingmusic_chart.ms">노래보기</a>
										<a class="dropdown-item" href="puddingmusic_chart.ms">좋아요순위</a>
										<a class="dropdown-item" href="puddingmusic_chart.ms">인기도순위</a>
									</div></li>
								<li class="nav-item active"><a class="nav-link"
									href="c_Djlist.ms">Pudding DJ</a></li>
								<li class="nav-item"><a class="nav-link" class="nav-link"
									href="javascript:void(0)" onclick="openLoginModal();">Cart</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="boarderList.bd">Boarder</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${path}/resources/archive.html">QnA</a></li>
								<li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="window.open('loginForm.me','window팝업','width=570, height=320, menubar=no, status=no, toolbar=no');">login</a>
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
	<div class="breadcumb-area" style="background-color: #ffd400;">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>
							<font style="text-decoration: underline;">DJ LIST</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb"></nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	<!-- ****** Archive Area Start ****** -->
		<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
			
										<c:forEach items="${lists }" varStatus="status" var="lists">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
						<img src="${path}/resources/img/catagory-img/${status.count}.jpg" alt="">
						<div class="catagory-title">
							<a href="C_dj_C.ms?dj_no=${lists.dj_no}">
								<h5>${lists.dj_code }</h5>
							</a>
						</div>
					</div>
				</div>
				</c:forEach>
			
				
			</div>
		</div>
	</section>
	<!-- ****** Archive Area End ****** -->
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
							<a href="${path}/resources/index.html" class="yummy-logo">
								PUDDING</a>
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
									<li class="nav-item"><a class="nav-link" href="admin.ad">회원조회</a></li>
									<li class="nav-item"><a class="nav-link"
										href="addNotice.ad">공지사항 추가</a></li>
									<li class="nav-item"><a class="nav-link" href="addQA.ad">QnA추가</a>
									</li>
									<li class="nav-item active"><a class="nav-link"
										href="Djlist.ms">푸딩 DJ</a></li>
									<li class="nav-item"><a class="nav-link"
										href="addmusic.ms">노래추가</a></li>
									<li class="nav-item"><a class="nav-link"
										href="finebuylist.ad">구매내역조회</a></li>
									<li class="nav-item"><a class="nav-link" href="Main.pd">회원메인</a></li>
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
								href="${path}/resources/https://colorlib.com" target="_blank">Colorlib</a>
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