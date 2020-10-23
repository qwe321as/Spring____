<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %>
	
<div class="breadcumb-area">
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
				<div class="12u" style="width: 100%;">
					<section>
						<header>
						<br>
						
							<h2>Boarder</h2>
						<p class="subtitle">내용 보기</p></header>
	<table border="1" width="100%" align="center" cellspacing="0">
	<tr>
		<td  >글번호 </td>
		<td  >${lists.boardno }</td>  
		<td >조회수 </td>
		<td  >${lists.board_recount }</td>
		
	</tr>
	<tr>
		<td >작성자 </td>
		<td >${lists.board_writer }</td>
		<td  >작성일</td>
		<td >${lists.board_date }
		
	</tr>
	<tr>
		<td >글제목 </td>
		<td colspan="3" align="center" >${lists.board_title }</td>
		
		
	</tr>
	<tr>
		<td >글내용 </td>
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
		<textarea rows="100%" cols="100%" placeholder="댓글 내용을 입력하세요." style="height: 102px; width: 90%;" id="abc" name="recontent_content"></textarea>
		</td><TD>
		<input type="submit" value="댓글쓰기">
		</TD></tr>
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