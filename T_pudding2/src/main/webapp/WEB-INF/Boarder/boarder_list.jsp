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
<link
   href='http://fonts.googleapis.com/css?family=Roboto+Condensed:700italic,400,300,700'
   rel='stylesheet' type='text/css'>
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
               <li><a href="${path}/resources/index.html">메인</a></li>
               <li><a href="${path}/resources/left-sidebar.html">푸딩차트</a></li>
               <li><a href="Dj.ms">푸딩 DJ</a></li>
               <li class="active"><a href="boarderList.bd">게시판</a></li>
               <li><a href="${path}/resources/right-sidebar.html">Q&A</a></li>
               <li><a href="${path}/resources/right-sidebar.html">공지사항</a></li>
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
                     <h2>게시판</h2><br>
                  <p class="subtitle">곡에대한 이야기를 나눌수 있습니다.</p>
                  </header>

                  <form action="boarderList.bd" method="post" style="text-align: right;">
                     <select name="whatColumn">
                        <option value="all">전체검색
                        <option value="board_title">제목으로 검색
                        <option value="board_writer">작성자 검색
                     </select> <input type="text" name="keyword" value="홍길동"> <input
                        type="submit" value="검색">
                  </form>
                  <table border=1 style="width: 100%">

                     <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회</th>
                     </tr>
                     <tr>
                     <td> <hr></td>
                     <td> <hr></td>
                     <td> <hr></td>
                     <td> <hr></td>
                     <td> <hr></td>
                     <td> <hr></td>
                     </tr>
                     <c:forEach items="${lists }" var="bean">
                        <tr>
                           <td>${bean.boardno }</td>
                           <td><a href="content.bd?boardno=${bean.boardno }">${bean.board_title }</a></td>
                           <td>${bean.board_writer }</td>
                           <td>${bean.board_date }</td>
                           <td>${bean.board_recount }</td>
                        </tr>
                     </c:forEach>
                     <tr>
                        <td align="right" colspan="6">
                        <input type="button" value="게시글 등록" onclick="location.href='insert.bd'"></td>
                     </tr>


                  </table>
</body>
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