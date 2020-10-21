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
								<li class="nav-item "><a class="nav-link"
									href="Djlist.ms">푸딩 DJ</a></li>
								<li class="nav-item active">
								<a class="nav-link " href="addmusic.ms">노래추가</a>
								</li>
								<li class="nav-item">
								<a class="nav-link"	href="finebuylist.ad">구매내역조회</a></li>
								<li class="nav-item"><a class="nav-link" href="Main.ms">회원메인</a></li>
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
							<font style="text-decoration: underline;">Add Music </font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- ****** Breadcumb Area End ****** -->

	<!-- Main -->
		<div id="main" class="container">
			<div class="row">
				<div class="12u">
					<section style="width: 1100px;">
						<header>
						<br>
							<h2>노래 추가</h2>
						</header>
<form action="addmusic.ms" method="post" enctype="multipart/form-data">
	<table border="1" align="center" cellspacing="0" width="100%">
		<tr>
		<td style="width: 25%; text-align: center; "> 노래 제목 </td>
			<td><input type="text" name="music_title" style="width: 100%;height: 55.98438px;" placeholder="노래제목을 입력하세요." ></td>
		</tr>
		<tr>
		<td style="width: 25%; text-align: center; ">  가수명 </td>
			<td><input type="text" name="music_singer" style="width: 100%;height: 55.98438px;" placeholder="가수을 입력하세요." ></td>
		</tr>
		<tr>
		<td style="width: 25%; text-align: center; ">  장르 </td>
			<td	>
			<input type="radio" name="music_ganre" value="Ballade" style="height: 30px;"><font size="4"> 발라드 &nbsp;
			<input type="radio" name="music_ganre" value="pop"style="height: 30px;"><font size="4">팝송 &nbsp;
			<input type="radio" name="music_ganre" value="dance"style="height: 30px;"><font size="4">댄스 &nbsp;
			<input type="radio" name="music_ganre" value="hiphop"style="height: 30px;"><font size="4">힙합 &nbsp;
			<input type="radio" name="music_ganre" value="acoustic"style="height: 30px;"><font size="4">어쿠스틱 &nbsp;
			
			</td>
		</tr>
		<tr>
		<td style="width: 25%; text-align: center; ">  이미지 선택 </td>
			<td><input type="file" name="img_upload" style="width: 100%;height: 55.98438px;"  ></td>
		</tr>
		<tr>
		<td style="width: 25%; text-align: center; ">  노래 파일 선택 </td>
			<td><input type="file" name="song_upload" style="width: 100%;height: 55.98438px;" ></td>
		</tr>
		<tr>
		<td style="width: 25%; text-align: center; ">  가사 파일 선택 </td>
			<td><input type="file" name="lyics_upload" style="width: 100%;height: 55.98438px;" ></td>
		</tr>
		<tr>
		<td style="width: 25%; text-align: center; ">  발매일 선택 </td>
			<td><input type="date" name="music_date" style="width: 100%; height: 55.98438px;"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="추가하기">
				<input type="button" value="목록이동하기"
				onclick="location.href='list.ms'">
			</td>
		</tr>
	</table>
</form>
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
							Copyright @2018 All rights reserved | This template is made with
							<i class="fa fa-heart-o" aria-hidden="true"></i> by <a
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