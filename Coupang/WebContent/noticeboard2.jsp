<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String pwd = request.getParameter("pwd");
String go = request.getParameter("go");
String contents = request.getParameter("contents");
String check = request.getParameter("check");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table,tr,td{
		border: 1px solid #CFCFCF;
		border-collapse: collapse;  
		border-left: hidden;
		border-right: hidden;
		height: 30px;
	}
	td{
		text-align: center;
	}
	
	.titleTd{
		color : #A0BAED;
		text-align: left;
	}
	a{
		color : #A0BAED;
		text-decoration: none;
	}
	
</style>
</head>
<script type="text/javascript">
	
	function intoTitleFnc() {
		var title = "<%=title%>";
		var writer = "<%=writer%>";
		var pwd = "<%=pwd%>";
		var go = "<%=go%>";
		var contents = "<%=contents%>";
		var check = "<%=check%>";

 		location.href = 'test.jsp?title='+title+'&writer='+writer+'&pwd='+pwd+'&contents='+contents+'&go='+go+'&contents='+check;
	}

	window.onload = function() {
		var title = "<%=title%>";
		var writer = "<%=writer%>";
		var go = "<%=go%>";
		
		if(go == "go"){
			var bodyObj = document.getElementById('body');
			var tableObj = document.getElementsByTagName('table')[0];
			var trObj = document.getElementsByTagName('tr')[0];
// 			var trClone = trObj[0].cloneNode(false);
			
			
			var rowObj = document.createElement('tr');
			
			var numObj = document.createElement('td');
			var titleObj = document.createElement('td');
			var writerObj = document.createElement('td');
			var dateObj = document.createElement('td');
			var viewsObj = document.createElement('td');
			var commentsObj = document.createElement('td'); 
			
			
			var tdObj = document.getElementsByTagName('td')[6].childNodes[0].nodeValue;
			tdObj = Number(tdObj)+1;
			var numText = document.createTextNode(tdObj);
			numObj.appendChild(numText);
			
			var titleText = document.createTextNode(title);
			titleObj.appendChild(titleText);
			titleObj.setAttribute('onclick', 'intoTitleFnc();');
			titleObj.setAttribute('class', 'titleTd');
			
			var writerText = document.createTextNode(writer);
			writerObj.appendChild(writerText);
			
			var today = new Date();
			var dateText = document.createTextNode(today.getFullYear()+ "-" + (today.getMonth()+1) + "-" +today.getDate());
			dateObj.appendChild(dateText);
			
			var viw = 0;
			var viewsText = document.createTextNode(viw); 
			viewsObj.appendChild(viewsText);
			
			var com = 0;
			var commentsText = document.createTextNode(com);
			commentsObj.appendChild(commentsText); 
			
			
			rowObj.appendChild(numObj);
			rowObj.appendChild(titleObj);
			rowObj.appendChild(writerObj);
			rowObj.appendChild(dateObj);
			rowObj.appendChild(viewsObj);
			rowObj.appendChild(commentsObj);
			
// 			var numObj = trClone.children[0];
// 			var titleObj = trClone.children[1];
// 			var writerObj = trClone.children[2];
// 			var dateObj = trClone.children[3];
// 			var viewsObj = trClone.children[4];
// 			var commentsObj = trClone.children[5];
			
			tableObj.insertBefore(rowObj, tableObj.children[1]);
			
		}
		
	}
</script>
<body>

	<div style="border:1px solid black; width: 1024px; height: 768px; margin: 0px auto;">
		<div style="margin-top:200px;">
			<h1>샘플 게시판</h1>
		</div>
	
		<div style=" width: 1024px; height:200px;">
			<table style="width: 1024px;">
				<tr style="background-color: #E1E1E1;">
					<td style="width: 60px; height: 10px;">번호</td>
					<td style="width: 600px; height: 10px; text-align: left;">제목</td>
					<td style="width: 80px; height: 10px;">작성자</td>
					<td style="width: 100px; height: 10px; text-align: left; padding-left: 20px;">날짜</td>
					<td style="width: 60px; height: 10px;">조회수</td>
					<td style="width: 60px; height: 10px;">댓글수</td>
				</tr>
				
				<tbody>
				<tr>
					<td>128</td>
					<td class="titleTd"><a href="num165.jsp">야!!!</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>2</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>126</td>
					<td class="titleTd"><a href="num163.jsp">뭘 봐</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>0</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>121</td>
					<td class="titleTd"><a href="num134.jsp">그만해</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>3</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>120</td>
					<td class="titleTd"><a href="num131.jsp">힘들어</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>1</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>109</td>
					<td class="titleTd"><a href="num129.jsp">이게 뭐야</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>1</td>
					<td>0</td>
				</tr>
			</tbody>
			</table>
		</div>
		
		<div style="width: 220px; margin: 10px auto;">
			<input type="button" value="페이지 1 의 2" style="height: 25px;"><a href="noticeboard.jsp"><input type="button" value="1" style="height: 25px;"></a><input type="button" value="2" style="color: white; background-color: #6A84B7; height: 25px;">
			<input type="button" value="다음" disabled style="border: none; background-color: white;">
		</div>
			
	</div>
</body>
</html>