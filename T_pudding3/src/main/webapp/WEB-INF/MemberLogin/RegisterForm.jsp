<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common.jsp"%>
<head>
<style type="text/css">
	.err{
	font-size: 9pt;
	color: red;
	font-weight: bold;
	}
	.container {
	margin:30PX;
}
</style>
<c:set var="path" value="${pageContext.request.contextPath }" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<link href="${path}/resources/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="${path}/resources/css/other/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="${path}/style.css" media="screen"
	title="no title">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="${path}/resources/js/bootstrap/bootstrap.min.js"></script>
<script defer src="/static/fontawesome/fontawesome-all.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="login-box well" style="width: 100%;">
	<form:form commandName="customer" accept-charset="UTF-8" role="form" method="post" style="width:100%" action="registerForm.me" >
					<legend>회원가입</legend>
					<div class="input-group">
						<span class="input-group-addon"><img
							src="${path}/resources/img/icon/id.png" width="30" height="30"></span>
						<input type="text" name="customer_id"
							placeholder="아이디를 입력하세요" class="form-control" />			
							<form:errors cssClass="err" path="customer_id" /> 
							
					</div>
					<div class="input-group">
						<span class="input-group-addon"><img
							src="${path}/resources/img/icon/user.png" width="30" height="30"></span>
						<input type="text" name="customer_name"
							placeholder="이름을 입력하세요" class="form-control" />			<form:errors cssClass="err" path="customer_name" />
					</div>
					
					<div class="input-group">
						<span class="input-group-addon"><img
							src="${path}/resources/img/icon/자물쇠.png" width="30" height="30"></span>
						<input type="text" name="customer_passwd"
							placeholder="비밀번호를 입력하세요" class="form-control" />
					</div>
					
					<div class="input-group">
						<span class="input-group-addon"><img
							src="${path}/resources/img/icon/이메일.png" width="30" height="30"></span>
						<input type="text" name="customer_email"
							placeholder="이메일을 입력하세요" class="form-control" />
					</div>
					
					<div class="input-group">
						<span class="input-group-addon"><img
							src="${path}/resources/img/icon/핸드폰.png" width="30" height="30"></span>
						<input type="text" name="customer_hpnumber"
							placeholder="핸드폰번호를 입력하세요" class="form-control" />
					</div>
					<input type = "submit" id="login-submit"	class="btn btn-default btn-block" value="아이디 찾기" />
										<span class='text-center'><a href="loginForm.me"
						class="text-sm">로그인 하기</a>/ <a href="findpwd.me" class="text-sm">아이디
							찾기</a>/<a href="registerForm.me" class="text-sm"> 회원가입</a> </span>
	</form:form>
			</div>

		</div>
	</div>
</body>


