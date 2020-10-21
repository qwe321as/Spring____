<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common.jsp" %>
    MyPageUpdate.jsp<br><br>
    

<form:form commandName="customer" method="get" action="myPageUpdate.me" > 
	<table border="1">
		<tr>
			<td>이름</td> 
			<td>
				
				<input type="hidden" name="customerno" id="name" value="${customer.customerno }">
				<input type="text" name="customer_name" id="name" value="${customer.customer_name }">
				<form:errors cssClass="err" path="customer_name" /> 
			</td>	
		</tr>
		<tr>
			<td>아이디</td>
			<td>
			<input type="text" name="customer_id" id="id" value="${customer.customer_id }">
			<form:errors cssClass="err" path="customer_id" /> 
			</td>	
		</tr>
		
		<tr>
			<td>이메일</td>
			<td>
				<input type="text" name="customer_email" id="email" value="${customer.customer_email }">
				<form:errors cssClass="err" path="customer_email" /> 
			</td>	
		</tr>
		<tr>
			<td>휴대폰 번호</td>
			<td>
				<input type="text" name="customer_hpnumber" id="hpnumber" value="${customer.customer_hpnumber }">
				<form:errors cssClass="err" path="customer_hpnumber" /> 	
			</td>	
		</tr>
		<tr>
			<td>구매 내역</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2"> 
			<input type="submit" value="수정하기">
			</td>
		</tr>
	</table>
</form:form>