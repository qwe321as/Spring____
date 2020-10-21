<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

myPage<br><br>
<%@ include file="../common.jsp" %>
<form >
	<table border="1">
		<tr>
			<td>이름</td> 
			<td>${lists.customer_name }</td>	
		</tr>
		<tr>
			<td>아이디</td>
			<td>${lists.customer_id}</td> 								
		</tr>
		
		<tr>
			<td>이메일</td>
			<td>${lists.customer_email}</td>
		</tr>
		<tr>
			<td>휴대폰 번호</td>
			<td>${lists.customer_hpnumber}</td>
		</tr>
		<tr>
			<td>구매 내역</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2"> 
			<input type="button" value="수정하기" onClick="location.href='myPageUpdate.me?customerno=${lists.customerno}'">
			</td>
		</tr>
	</table>
</form>





