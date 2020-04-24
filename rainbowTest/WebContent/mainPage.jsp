<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("logId");
String pwd = request.getParameter("logPwd");
String name = request.getParameter("signName");
%>

<script type="text/javascript">
	
	var logId = "<%=id%>";
	var logPwd = "<%=pwd%>";
	var logName = "<%=name%>";

	
	
	window.onload = function() {
		var text = document.getElementById('idText');
		
		text.value = logName + '님';
	}
	
</script>
</head>
<body>

	<div>
		<div>
			<input type="text" id="idText">
		</div>
	
	</div>
</body>

</html>