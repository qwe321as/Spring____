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
						<a href="${path}/resources/#"><i class="fa fa-facebook"
							aria-hidden="true"></i></a> <a href="${path}/resources/#"><i
							class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="${path}/resources/#"><i class="fa fa-linkedin"
							aria-hidden="true"></i></a> <a href="${path}/resources/#"><i
							class="fa fa-skype" aria-hidden="true"></i></a> <a
							href="${path}/resources/#"><i class="fa fa-dribbble"
							aria-hidden="true"></i></a>
					</div>
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
								<li class="nav-item"><a class="nav-link" href="admin.ad">회원조회</a></li>
								<li class="nav-item"><a class="nav-link"
									href="addNotice.ad">공지사항 추가</a></li>
								<li class="nav-item"><a class="nav-link" href="addQA.ad">QnA추가</a>
								</li>
								<li class="nav-item active"><a class="nav-link"
									href="Djlist.ms">푸딩 DJ</a></li>
								<li class="nav-item"><a class="nav-link" href="addmusic.ms">노래추가</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="finebuylist.ad">구매내역조회</a></li>
								<li class="nav-item"><a class="nav-link" href="Main.pd">회원메인</a></li>
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
							<font style="text-decoration: underline;">PUDDING DJ</font>
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
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${path}/resources/#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Archive
								Page</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->

	<!-- ****** Archive Area Start ****** -->
	<section class="archive-area section_padding_80">
		<div class="container">
			<div class="row">

		<c:forEach items="${lists }" var="music">
				<!-- Single Post -->
				<%-- <c:forEach varStatus="status"  var="i" items="abc" >
				<c:if test="cnt<3*${status.count}"> --%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="${path}/resources/imgs/${music.music_image }" alt="노래이미지">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
<%-- 								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										${music.music_song }
									</div>
									<!-- Post Date -->
									<div class="post-date">
										${music.music_lyics }
									</div>
									<div class="post-date">
										${music.music_recount }
									</div>
									<div class="post-date">
										${music.music_date }
									</div>
								</div> --%>
								<div class="post-author-date-area d-flex">
                                    <!-- Post Author -->
                          
                                    <!-- Post Date -->
                                    <div class="post-date">
                                        <a href="${path}/resources/#">${music.music_date }</a>
                                    </div>
                                </div>
								<!-- Post Comment & Share Area -->
								<div class="post-comment-share-area d-flex">
									<!-- Post Favourite -->
									<div class="post-favourite">
										<a href="${path}/resources/#"><i class="fa fa-heart-o"
											aria-hidden="true"></i> ${music.music_heart}</a>
									</div>
									<!-- Post Comments -->
									<div class="post-comments">
										<a href="${path}/resources/#"><i class="fa fa-comment-o"
											aria-hidden="true"></i>${music.music_recount }</a>
									</div>
									<!-- Post Share -->

								</div>
							</div>
							<a href="content.ms?mno=${music.mno }">
								<h4 class="post-headline">
								[${music.music_ganre }]
								${music.music_title } - ${music.music_singer }</h4>
							</a>
						</div>
					</div>
				</div>
</c:forEach>
				
				<div class="col-12">
					<div class="pagination-area d-sm-flex mt-15">
						<nav aria-label="#">
							<ul class="pagination">
								<li class="page-item active"><a class="page-link"
									href="${path}/resources/#">1 <span class="sr-only">(current)</span></a>
								</li>
								<li class="page-item"><a class="page-link"
									href="${path}/resources/#">2</a></li>
								<li class="page-item"><a class="page-link"
									href="${path}/resources/#">3</a></li>
								<li class="page-item"><a class="page-link"
									href="${path}/resources/#">Next <i
										class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
							</ul>
						</nav>

					</div>
				</div>

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