<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<style>

</style>
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
<script type="text/javascript">
function goDel(mno){ // 
    var answer = confirm("정말 삭제하시겠습니까?"); 
    if(answer){
       location.href = "deleteqna.ad?qna_no="+mno;
    }
 }
</script>
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
					<li ><a href="admin.ad">회원조회</a></li>
					<li><a href="addNotice.ad">공지사항추가</a></li>
					<li class="active"><a href="addQA.ad">Q&A추가</a></li>
					<li><a href="Djlist.ms">푸딩DJ</a></li>
					<li><a href="addmusic.ms">노래추가</a></li>
					<li><a href="finebuylist.ad">구매내역조회</a></li>
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
								<h2>Q&A</h2>
							</header>
					<table border="1" width="100%" align="center" cellspacing="0">
						<tr>
							<th>번호</th>
							<th>분류</th>
							<th>질문</th>
							<th>답</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<tr>
							<td> <hr> </td>
							<td> <hr> </td>
							<td> <hr> </td>
							<td>  <hr></td>
							<td> <hr></td>
							<td> <hr></td>

						</tr>
						<c:forEach items="${lists }" var="qna">
						<tr>
							<td align="center"> ${qna.qna_no } </td>
							<td align="center"> ${qna.qna_category }  </td>
							<td align="center"> ${qna.qna_qustion } </td>
							<td align="center">${qna.qna_answer } </td>
							<td align="center"><a href="updateqna.ad?qna_no=${qna.qna_no }"> 수정</a></td>
							<td align="center">
							<input type="button" value="삭제" onclick="goDel('${qna.qna_no }')">
							</td>

						</tr>
						</c:forEach>
								<tr><td> &nbsp; </td></tr>
						
								<tr>
								<td colspan="6" align="right">
								<input type="button" onclick="location.href='addQnA.ad'" value="Q&A 추가하기">
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