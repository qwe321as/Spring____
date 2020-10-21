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

</head>	<div id="preloader">
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
                                <li class="nav-item ">
                                    <a class="nav-link" href="${path}/resources/index.html">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="${path}/resources/#" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Pudding chart</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="puddingmusic_chart.ms">좋아요순위</a>
                                        <a class="dropdown-item" href="puddingmusic_chart.ms">인기도순위</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${path}/resources/#">Pudding DJ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Cart</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="boarderList.bd">Boarder</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${path}/resources/archive.html">QnA</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link " href="CNotice.ad">Notice</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="loginForm.me">login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="admin.ad">관리자페이지</a>
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
							<font style="text-decoration: underline;">Boarder</font>
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
					<section style="width: 1200px;"></section>
  <header>
  <br>
                     <h2>Boarder Content</h2>
                  <p class="subtitle">곡에대한 이야기를 나눌수 있습니다.</p>
                  </header>
	<table border="1" width="100%" align="center" cellspacing="0">
	<tr>
		<td width="125"  align="center"  >글번호 </td>
		<td width="125"  align="center">${lists.boardno }</td>  
		<td width="125"  align="center" >조회수 </td>
		<td width="125"  align="center">${lists.board_recount }</td>
		
	</tr>
	<tr>
		<td width="125"  align="center" >작성자 </td>
		<td width="125"  align="center" >${lists.board_writer }</td>
		<td width="125"  align="center"  >작성일</td>
		<td width="125"  align="center" >${lists.board_date }
		
	</tr>
	<tr>
		<td width="125"  align="center" >글제목 </td>
		<td colspan="3" align="center" >${lists.board_title }</td>
		
		
	</tr>
	<tr>
		<td width="125"  align="center" >글내용 </td>
		<td colspan="3">${lists.board_content }</td>
		
		
	</tr>
	<tr>
			<td colspan=4  align="center" height="30" >
				<input type="button" value="글수정" onClick="location.href='update.bd?boardno=${lists.boardno }'">  
				<input type="button" value="글삭제" onClick="location.href='delete.bd?boardno=${lists.boardno}'"> 
				<%-- <input type="reset"	value="답글쓰기" onClick="location.href='reply.bd?boardno=${lists.boardno }">  --%>
				<input type="button" value="목록보기" onClick="location.href='boarderList.bd'">
			</td>
		</tr>
	
	</table>
		<form method="post" action="recontentinsert.bd">
		<input type="hidden" name="recontent_boardno" value="${lists.boardno }">
		<table  border=1 style="width: 100%">
		<!-- 글번호 -->
		<tr>
		<td>
		<input type="text" name="recontent_writer" value="홍길동 ">
		
		<input type="password" name="recontent_passwd" placeholder="비밀번호 입력" value="">
		</td>
		</tr>
		<tr>
		<td>
		<input type="text" placeholder="댓글 내용을 입력하세요." id="abc" name="recontent_content"> 
		<input type="submit" value="댓글쓰기">
		</td>
		</tr>
		</table>
		</form>
			<table border=1 style="width: 100%">
			  <c:forEach var="recontent" items="${recontent }"> 
				<tr>
				
				<td>
				<font style="font-weight: bold;" >
				${recontent.recontent_writer }
				</font>
				<font style="font-weight: 200;">
				(${recontent.recontent_date })</font></td>
				<td rowspan=2><a href="recontentupdate.bd?recontentno=${recontent.recontentno }&boardno=${lists.boardno}">수정</a>
				/<a href="recontentdelete.bd?recontentno=${recontent.recontentno }&boardno=${lists.boardno}">삭제</a></td>
				</tr>
				
				<tr>
				<td>${recontent.recontent_content }</td>
				</tr>
			
			 </c:forEach>

			</table>
		
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