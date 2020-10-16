<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="style.css"  rel="stylesheet" type="text/css"> 
    findpwd.jsp<br><br>
   
   <form action = "findpwd.me" method = "post">
    	<table border="1" align = "center">
    		<tr>
    			<td align="center">아이디</td>
    			<td> <input type="text" name="customer_id" value="park"/> </td>
    		</tr> 

    		<tr>
    			<td align="center">이름</td>
    			<td> <input type="text" name="customer_name" value="박청호"/> </td>
    		</tr> 

			<tr>
				<td colspan = "2" align="center">
					<input type = "submit" value = "비밀번호 찾기">
				</td>
			</tr> 
    	</table>
    
    
    
    </form>