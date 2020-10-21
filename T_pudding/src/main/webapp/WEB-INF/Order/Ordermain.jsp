<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %> 
   
 <html>  
 <title> 이곳은 결제 메인 페이지 입니다</title>
 
    <h3 align="center"> 결제 페이지</h3>
    
    <table align="center" border="1">
  <tr>
    <th colspan="5">주문자 정보 :  </th>
  </tr>
  <tr>
    <td>앨범이미지</td>
    <td>노래제목</td>
    <td>가수</td>
    <td>가격</td>
    <td>삭제하기</td>
  </tr>
  
  
  <c:if test="${!empty lists}">
  <c:forEach items="${lists}" var="cart">
  <tr >
  	<td align="center"><img alt="앨범이미지" width="100px"
			height="100px"
			src="<%=request.getContextPath() %>/resources/imgs/${cart.cart_album}">
			</td>
  	<td align="center">${cart.cart_title } </td>
  	<td align="center">${cart.cart_singer }</td>
  	<td align="center">${cart.cart_price } </td> 	
  	<td align="center"><a href="cartdelete.ms?cno=${cart.cart_num }">삭제하기   </a> </td>
  </tr>
 </c:forEach>
  <tr>
  	<td colspan="3">
  	<a href="insertorder.od?orderuser=${'최지훈'}">결제하기</a> &nbsp;&nbsp;   
  	</td>
  </tr>
   </c:if>
   
   
   
   <c:if test="${!empty music}">
   
   <tr>
  	<td align="center"><img alt="앨범이미지" width="100px"
			height="100px"
			src="<%=request.getContextPath() %>/resources/imgs/${music.music_image}">
			</td>
  	<td align="center">${music.music_title } </td>
  	<td align="center">${music.music_singer }</td>
  	<td align="center">${music.music_price } </td> 	
  	<td align="center"><a href="cartdelete.ms?cno=${music.mno }">삭제하기   </a> </td>
  </tr>
  
  <tr>
  	<td colspan="3">
  	<a href="insertorderone.od?orderuser=${'최지훈'}&mno=${music.mno}">결제하기</a> &nbsp;&nbsp;   
  	</td>
  </tr>
   
   </c:if>
</table>

</html> 