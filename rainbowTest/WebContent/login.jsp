<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	String signName = request.getParameter("name");
	session.setAttribute(signName, "name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<form action="mainPage.jsp" onsubmit="return checkAll();" method="get">
		<div style="width: 1024px; height: 768px; margin: 0px auto;">
			<div>
				<div>
					<span>아이디</span> 
					<input type="text" name='logId' id='logId'>
				</div>

				<div>
					<span>비밀번호</span> 
					<input type="password" name='logPwd' id='logPwd'>
				</div>
				<input type="hidden" name="signName" value="<%=signName%>">
				<div>
					<input type="submit" id='loginBtn' value='로그인'>
				</div>
			</div>
		</div>
	</form>
</body>

<script type="text/javascript">

	var logId = document.getElementById('logId');
	var logPwd = document.getElementById('logPwd');
	
	var signId ="<%=id%>";
	var signPwd ="<%=pwd%>";

	function loginCheck() {
		if (logId.value != signId) {
			alert('아이디가 없습니다');
			return false;
		} else if (logPwd.value != signPwd) {
			alert('비밀번호가 틀립니다.')
			return false;
		}
		alert('로그인 됨');
		return true;
	}

	function checkAll() {
		if (!loginCheck()) {
			return false;
		}
		return signName;
		return true;
	}
</script>
</html>











