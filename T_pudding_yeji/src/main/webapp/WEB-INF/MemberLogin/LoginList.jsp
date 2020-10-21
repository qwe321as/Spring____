<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %> 
  
ProductList.jsp<br><br>
<form action="listss.me" method="get">
	<table border="1">
	<tr>
							
		<td colspan="6" align="right">
			조회할 회원 아이디 입력: &nbsp;&nbsp;&nbsp; 
					<input type="text" name="keyword"> &nbsp;&nbsp; 
					<input type="submit" value="조회">
		</td>
	</tr>


	
	<tr>
		<th>회원번호</th>
		<th>이름</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이메일</th>
		<th>휴대폰번호</th>
		<th>삭제</th>
	</tr>
	<c:forEach items="${lists }" var="customer">
								<tr>
									<td align="center">${customer.customerno }</td>
								</tr>
								<tr>
									<td align="center">${customer.customer_name }</td>
								</tr>
								<tr>
									<td align="center">${customer.customer_id }</td>
								</tr>
								<tr>
									<td align="center">${customer.customer_passwd }</td>
								</tr>
								<tr>
									<td align="center">${customer.customer_email }</td>
								</tr>
								<tr>
									<td align="center">${customer.customer_hpnumber }</td>
								</tr>
								
							</c:forEach>
	</table>
</form>

${pageInfo.pagingHtml } 


















