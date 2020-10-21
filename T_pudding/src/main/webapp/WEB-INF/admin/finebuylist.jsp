<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<center>
<h2>구매 내역 조회</h2>
</center>
<table border="1" width="800px" align="center" cellspacing="0">
							<tr>
								<td colspan="6" align="right">
									<form action="searchlist.ad" method="post">
									
									<select name="whatColumn">
										<option value="all">전체 검색
										<option value="orders_title">제목 검색
										<option value="orders_singer">가수 검색
										<option value="orders_userid">회원 검색
									
									</select> 
										검색할 항목 입력: &nbsp;&nbsp;&nbsp; 
										<input type="text" name="keyword"> &nbsp;&nbsp; 
										<input type="submit" value="조회">
								</form>
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
								<th>번호</th>
								<th>노래번호</th>
								<th>앨범이미지</th>
								<th>가수-제목</th>
								<th>가격</th>
								<th>ㅇㅇ</th>
							</tr>
							
							<c:forEach items="${lists }" var="order">
							<tr>
							<td>${order.ordersno }</td>
							<td>${order.orders_mno }</td>
								<td align="center">
								<img alt="앨범이미지" width="100px" height="100px" src="<%=request.getContextPath() %>/resources/imgs/${order.orders_album}">
								</td>
							<td>${order.orders_singer } - ${order.orders_title }</td>
							<td>${order.orders_price }</td>
							<td></td>
							</tr>
							</c:forEach>
						</table>