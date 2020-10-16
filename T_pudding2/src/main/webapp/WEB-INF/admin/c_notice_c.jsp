<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>
<html>
<head>
<title>Ex Machina by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:700italic,400,300,700'
	rel='stylesheet' type='text/css'>
<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="${path}/resources/js/skel.min.js"></script>
<script src="${path}/resources/js/skel-panels.min.js"></script>
<script src="${path}/resources/js/init.js"></script>
<link rel="stylesheet" href="${path}/resources/css/skel-noscript.css" />
<link rel="stylesheet" href="${path}/resources/css/style.css" />
<link rel="stylesheet" href="${path}/resources/css/style-desktop.css" />
</head>
<style>
<!--
-->
</style>
<body class="no-sidebar">

	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">PUDDING</a>
				</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Main.pd">메인</a></li>
					<li><a href="${path}/resources/left-sidebar.html">푸딩차트</a></li>
					<li><a href="Dj.ms">푸딩 DJ</a></li>
					<li><a href="list.bd">게시판</a></li>
					<li><a href="${path}/resources/right-sidebar.html">Q&A</a></li>
					<li class="active"><a href="CNotice.ad">공지사항</a></li>
					<li><a href="loginForm.me">로그인</a></li>
					<li><a href="admin.ad">관리자</a></li>
				</ul>
			</nav>

		</div>
	</div>
	<!-- Header -->

	<!-- Banner -->
	<div id="banner">
		<div class="container"></div>
	</div>
	<!-- /Banner -->

	<!-- Main -->
	<div id="page">

		<!-- Main -->
		<div id="main" class="container">
			<div class="row">
				<div class="12u">
					<section>
						<header>
							<h2>공지사항</h2>
						</header>
						<table border="1" align="center" cellspacing="0" width="100%">
							<tr>

								<td colspan="3" align="center" style="font-weight: bold;">제목:
									${notice.notice_title }</td>
							</tr>
							<tr>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>

							</tr>

							<tr>

								<td align="right">글쓴이:관리자</td>
								<td align="right" style="width: 20%">
									작성일:${notice.notice_date }</td>
								<td align="right" style="width: 10%">
									조회수:${notice.notice_recount }</td>
							</tr>
							<tr>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>
								<td>
									<hr>
								</td>

							</tr>
							<tr>
								<td colspan="3" align="center"
									style="width: 100%;text-align: left;font-weight: bolder;padding-left: 50px;padding-top: 30px;">
									${notice.notice_content }</td>
							</tr>
							<tr><td colspan="3" align="right">
							<input type="button" value="목록이동" onclick="location.href='CNotice.ad'">
							</td>
							</tr>
						</table>
				</div>
			</div>
		</div>
		<!-- Main -->

	</div>
	<!-- /Main -->
	<!-- Copyright -->
	<div id="copyright" class="container">
		Design: <a href="http://templated.co">TEMPLATED</a> Images: <a
			href="http://unsplash.com">Unsplash</a> (<a
			href="http://unsplash.com/cc0">CC0</a>)
	</div>


</body>
</html>