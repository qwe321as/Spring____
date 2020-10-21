<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Title -->
<title>Yummy Blog - Food Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="${path}/resources/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="${path}/resources/css/responsive/responsive.css"
	rel="stylesheet">

</head>
<body>
</head>
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
							<a href="${path}/resources/register.html">Sing in</a>
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
					<a href="Main.ms" class="yummy-logo">PUDDING</a>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<nav class="navbar navbar-expand-lg">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#yummyfood-nav" aria-controls="yummyfood-nav"
						aria-expanded="false" aria-label="Toggle navigation">
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
									<a class="dropdown-item" href="puddingmusic_chart.ms">좋아요순위</a>
									<a class="dropdown-item" href="puddingmusic_chart.ms">인기도순위</a>
								</div></li>
							<li class="nav-item"><a class="nav-link"
								href="${path}/resources/#">Pudding DJ</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Cart</a></li>
							<li class="nav-item"><a class="nav-link"
								href="boarderList.bd">Boarder</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="${path}/resources/archive.html">QnA</a></li>
							<li class="nav-item "><a class="nav-link "
								href="CNotice.ad">Notice</a></li>
							<li class="nav-item"><a class="nav-link" href="loginForm.me">login</a>
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
						<font style="text-decoration: underline;">QnA</font>
					</h2>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="page">

	<!-- Main -->
	<div id="main" class="container">
		<div class="row">
			<div class="12u">
				<header>
					<br> <br>
					<br>
					<h2>QnA</h2>
					<br>
					<br>
				</header>
				<div class="container-fluid"
					style="min-height: calc(100vh - 136px);">
					<!-- 그룹 태그로 role과 aria-multiselectable를 설정한다. -->
					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
						<c:forEach items="${lists }" var="Qna" varStatus="num" >
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" style="background:#e2e2e2; width: 1030px;">
									<a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapse${num.count }"
										aria-expanded="false"><font style="font-weight: bolder; color: black; font-size: 13px;">[${Qna.qna_category}]
										${Qna.qna_qustion}</font>  </a>
								</div>
								<div id="collapse${num.count }" class="panel-collapse collapse"
									role="tabpanel">
									<div class="panel-body"><font style="font-size: 11px">${Qna.qna_answer}</font></div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Main -->

	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
					<p>
						Copyright @2018 All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="${path}/resources/https://colorlib.com" target="_blank">Colorlib</a>
					</p>
				</div>
			</div>
		</div>
	</div>
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