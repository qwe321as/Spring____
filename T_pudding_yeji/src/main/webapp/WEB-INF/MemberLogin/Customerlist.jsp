<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../common.jsp" %>
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
					<a href="Main.ms">PUDDING</a>
				</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="active"><a href="admin_customerlist.me">회원조회</a></li>
					<li><a href="addNotice.ad">공지사항추가</a></li>
					<li><a href="addQA.ad">Q&A추가</a></li>
					<li><a href="puddinglist.ad">푸딩DJ</a></li>
					<li><a href="addmusic.ms">노래추가</a></li>
					<li><a href="finebuylist.ad">구매내역조회</a></li>
					<li><a href="Main.ms">회원메인</a></li>
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
							<h2>회원관리</h2>
						</header>
							<form action="admin_customerlist.me" method="post" style="text-align: right;">
								<select name="whatColumn">
									<option value="all">전체 검색
									<option value="customer_id">아이디로 검색
									<option value="customer_name">이름으로 검색
								</select>
								<input type="text" name="keyword"> &nbsp;&nbsp; 
								<input type="submit" value="조회">
							</form>
							<table border="1" width="100%" align="center" cellspacing="0">
								</td>
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
								<td>
									<hr>
								</td>

							</tr>
							<tr>
								<th class="line">회원번호</th>
								<th class="line">이름</th>
								<th class="line">아이디</th>
								<th class="line">비밀번호</th>
								<th class="line">이메일</th>
								<th class="line">휴대폰번호</th>
								<th class="line">삭제</th>
							</tr>
							 
							<tr>
								<td> <hr> </td>
								<td> <hr> </td>
								<td> <hr> </td>
								<td> <hr> </td>
								<td>  <hr></td>
								<td> <hr></td>
								<td> <hr></td>
								<td> <hr></td>
								<td> <hr></td>
								<td> <hr></td>
								<td> <hr></td>
							</tr>
							
							<c:forEach items="${lists }" var="customer">
								<tr>
									<td align="center">${customer.customerno }</td>			
									<td align="center">${customer.customer_name }</td>			
									<td align="center">${customer.customer_id }</td>			
									<td align="center">${customer.customer_passwd }</td>		
									<td align="center">${customer.customer_email }</td>		
									<td align="center">${customer.customer_hpnumber }</td>	
									<td><a href="delete.me?customerno=${customer.customerno}">삭제</a></td>
								</tr>
								
							</c:forEach>
							
						</table>
						
						${pageInfo.pagingHtml}
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