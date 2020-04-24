<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method="get">
		<div id='one'>
			<span>아이디 : </span>
			<input type="text" value="" name='id' id="id"><br>
		</div>
		
		<div id='two'>
			<span>비밀번호 : </span>
			<input type="password" value="" name='password' id="password" onblur="passwordFnc();"><br>
		</div>
		
		<div id='three'>
			<span>이름 : </span>
			<input type="text" value="" name='name' id="name"><br>
		</div>
		
		<div>
			<input type="submit" value='회원가입'>
		</div>
	</form>
</body>
</html>