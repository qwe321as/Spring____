<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common.jsp"%>
<h2>주문 상세 내역</h2>
<table border="1" style="border-collapse: collapse;">
	<tr>
		<td colspan="2">고객: ${sessionScope.loginInfo.name }(${sessionScope.loginInfo.id})</td>
		<td colspan="3">송장번호:${oid}</td>
	</tr>
	<tr>
		<td colspan="5">배송지: ${loginInfo.address1 } ${loginInfo.address2 }
		</td>
	</tr>

	<tr>
		<th>순번</th>
		<th>상품명(상품번호)</th>
		<th>수량</th>
		<th>단가</th>
		<th>금액</th>
	</tr>
	<c:forEach var="lists" items="${lists }" varStatus="status">
		<tr>
			<td align="center">${status.count}</td>
			<td align="center">${lists.pname }(${lists.pnum })</td>
			<td align="center">${lists.qty }</td>
			<td align="center">
			<fmt:formatNumber value="${lists.price }" pattern="###,###" />
			</td>
			<td align="center">
			<fmt:formatNumber value="${lists.amount }" pattern="###,###" />
			
			</td>
		</tr>
	</c:forEach>

</table>