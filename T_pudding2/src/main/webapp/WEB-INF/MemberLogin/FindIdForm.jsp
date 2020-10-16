<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common.jsp"%>

    findid.jsp<br>
    
    
    <form method="post" action="findid.me" >
    	<table border="1" align = "center">
	
    		<tr>
    			<td align="center">이름</td>
    			<td> 
    			<input type="text" name="customer_name" value="박청호"/> 
    		
    			
    			</td>
    			
    		</tr> 

			<tr>
    			<td>휴대폰</td>
              <td> 
              	<input type="text" name="customer_hpnumber" value="11111">
              	
                </td>
    		</tr> 
			
			<tr>
				<td colspan = "2" align="center">
					<input type = "submit" value = "아이디찾기">
				</td>
			</tr> 
			
    	</table>
    </form>
