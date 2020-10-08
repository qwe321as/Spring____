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
					<li><a href="admin.ad">회원조회</a></li>
					<li class="active"><a href="addNotice.ad">공지사항추가</a></li>
					<li><a href="addQA.ad">Q&A추가</a></li>
					<li><a href="puddinglist.ad">푸딩DJ</a></li>
					<li><a href="addmusic.ad">노래추가</a></li>
					<li><a href="finebuylist.ad">구매내역조회</a></li>
					<li><a href="addCategory.ad">카테고리추가</a></li>
					<li><a href="Main.pd">회원메인</a></li>
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
							<h2>공지사항 추가</h2>
						</header>
<form action="addgonjiPro.jsp" method="post">
	<table border="1" align="center" cellspacing="0" width="100%">
		<tr>
			<th align="center">제목</th>
			<td><input type="text" name="title" style="width: 100%;height: 55.98438px;"></td>
		</tr>
		<tr>
		<tr>
			<th>내용</th>
			<td style="height: 600px;"><input type="text" name="content" style="width: 100%;height: 555.98438px;"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="추가하기">
				<input type="button" value="목록이동하기"
				onclick="location.href='addNotice.ad'">
			</td>
		</tr>
	</table>
</form>
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