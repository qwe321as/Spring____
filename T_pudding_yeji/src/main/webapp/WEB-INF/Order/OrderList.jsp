<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %> 
    <h2>주문 완료 페이지</h2>
    
    <table border=1>
    	
    <tr>
    <th colspan="5">${orderuser } 님의 주문이 완료되었습니다  </th>
  </tr>  
  <tr> 
    <td>앨범이미지</td>
    <td>노래제목</td>
    <td>가수</td>
    <td>가격</td>
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
  </tr>
 </c:forEach>
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
     </c:if>
     
     <tr>
     	<td colspan=4>
		 <a href="Main.ms">메인으로 돌아가기</a>
		 <a href="puddingmusic_chart.ms">노래목록으로 돌아가기</a>
		 
     	</td>
     
     </tr>
    
    
    
    
    </table>