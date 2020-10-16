<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                     <h2>글쓰기</h2>
                     <br>
                  </header>
  
    <form:form commandName="bo" method="post" action="insert.bd" >   <!--  form에쓸때는 onSubmit, submit에 쓸때는 onClick -->
    <table border="1" width="100%" cellspacing="0">
    <tr>
    <th>이름</th>
    <td><input type="text"style="width: 1127.97728px;"  maxlength="10" name="board_writer" value="홍길동"></td>
   </tr>
    
    <tr>
    <th>제목</th>
    <td><input type="text" style="width: 1127.97728px;" name="board_title"></td>
   </tr>

    <tr>
    <th valign="middle" align="center">내용</th>
    <td><textarea style="margin: 0px; width: 1129px; height: 259px; resize: none;" name="board_content" id="abc" ></textarea> </td>
   </tr>
   
    <tr>
    <th >비밀번호 &nbsp; &nbsp; </th>
    <td ><input  type="password" style="width: 1127.97728px;" maxlength="12" name="board_passwd" value="1234"></td>
   </tr>
   <tr>
   <th>&nbsp;</th></tr>
    <tr>
    <td colspan="2" align="center">
    <input type="submit" value="글쓰기" >
    <input type="reset" value="다시작성">
    <input type="button" value="목록보기" onClick="location.href='boarderList.bd'">
    
    </td>
   </tr>
    
    </table>
    </form:form>
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