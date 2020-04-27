<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
<style type="text/css">

table,tr,th,td{
	border: 1px solid black;
}

table{
	width: 800px;
	height: 500px;
}

th{
	width: 110px;
	height: 25px;
}

#outlineDiv{
	width: 1024px;
	height: 768px;
	margin: auto;
/* 	border: 1px solid black; */
}

#mainDiv{
	margin: 5px 10px;
	width: 800px;
	height: 668px;
}

#titleDiv{
	text-align: center;
}

#titleName{

}

#boardDiv{

}

.inputText{
	width: 230px;
	height: 20px;
}

#inputTextPw{
	width: 220px;
	height: 20px;
}

#inputTextArea{
	overflow: scroll;
	overflow-x: hidden;
	width: 675px;
	height: 390px;
	resize: none;
}

#buttonDiv{
	margin-top: 15px;
	text-align: right;
}

.actionBtn{

}

</style>	
<script type="text/javascript">

</script>
</head>

<body>
	<form action="noticeboard.jsp" method="get">
		<div id='outlineDiv'>
			<div id='mainDiv'>
				<div id='titleDiv'>
					<span id='titleName'>게시판 등록</span>
				</div>
				
				<div id='boardDiv'>
					<table>
						<tr class='textTr'>
							<th>제목</th>
							<td><input class='inputText' type="text" name="title"></td>
						</tr>
						<tr class='textTr'>
							<th>작성자</th>
							<td><input class='inputText' type="text" name="writer"></td>
						</tr>
						<tr class='textTr'>
							<th>비밀번호</th>
							<td><input id='inputTextPw' type="password" name="pwd"></td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea id='inputTextArea' name="contents"></textarea>
							</td>
						</tr>
					</table>
				</div>
				
				<div id='buttonDiv'>
					<a href='noticeboard.jsp'><input class='actionBtn' type="button" value='목록'></a>
					<input class='actionBtn' type="submit" value='작성' name="go">
					<a href='noticeboard.jsp'><input class='actionBtn' type="button" value='취소'></a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>