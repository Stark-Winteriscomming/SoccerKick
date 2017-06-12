<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>관리자 페이지 입니다.</h3>
	<hr>
	<h4>
		<form action="/admin/admin_login.do" method="post">
		
			<h3>관리자 로그인</h3>
			<p>
			<input type="text" name="id" placeholder="아이디 입력">
			<input type="password" name="pass" placeholder="비밀번호 입력">
			</p>
			<button>로그인</button>	
		</form>
	</h4>
</body>
</html>









