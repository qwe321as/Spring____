
<%@page import="Boarder.model.Boarder"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
body {
    width: 100%;
    text-align : center;
}
table {
    margin: 0 auto;  
}   
</style>     
	content.jsp<br>
	글내용 보기
	<table border="1" width="450" align="center" cellspacing="0">
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
	
	
	
		댓글
		<form method="post" action="recontentinsert.bd">
		<table  border=1>
		<!-- 글번호 -->
		<tr>
		<td>작성자<input type="hidden" name="recontent_boardno" value="${lists.boardno }"></td>
		<td><input type="text" name="recontent_writer" value="홍길동 "></td>
		</tr>
		<tr>
		<td>댓글 내용</td>
		<td><textarea name="recontent_content" id="abc" rows="5" cols="50"></textarea></td>
		</tr>
		<tr>
		<td>작성자</td>
		<td><input type="password" name="recontent_passwd" value="1234 "></td>
		</tr>
		<tr>
		<td colspan=2><input type="submit" value="댓글쓰기"></td>
		</tr>
		</table>
		</form>
	
	
		댓글목록
		
			<table border=1>
			  <c:forEach var="recontent" items="${recontent }"> 
				<tr>
				
				<td>${recontent.recontent_writer }(${recontent.recontent_date })</td>
				<td rowspan=2>수정</td>
				<td rowspan=2>삭제</td>
				</tr>
				
				<tr>
				<td>${recontent.recontent_content }</td>
				</tr>
			
			 </c:forEach>

			</table>
		
 		
	
	
	