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
	
	#outlineDiv{
	margin: 0px auto;
	width: 1024px;
	height: 150px;
/* 	border: 1px solid black; */
}

#logoutDiv{
	background-color: lightgrey;
	height: 30px;
}

#logoutDiv > div{
	margin: 0px 75px;	
}

#logoutDiv > div > a{
	float: left;
	font-size: 12px;
	margin-right: 10px;
	margin-top: 5px;
}

#logoDiv{
	margin: 0px 75px;
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
		
		if(go == "작성"){
			var bodyObj = document.getElementById('body');
			var tableObj = document.getElementsByTagName('table')[0];
			var trObj = document.getElementsByTagName('tr')[0];			
			
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
			
			tableObj.insertBefore(rowObj, tableObj.children[1]);
			
		}
		
	}
</script>
<body>
<div id='outlineDiv'>
		<div id='logoutDiv'>
			<div>
				<a style="float: left;">즐겨찾기</a>
				<a style="float: left;">입점신청</a>
				<a style="float: right;">차정경님</a>
				<a style="float: right;">쿠팡캐시 0원</a>
				<input style="float: right; margin-right: 10px; margin-top: 5px; height: 16px; font-size: 10px; padding: unset;" type="button" value='로그아웃'>
				<a style="float: right;">고객센터</a>
			</div>
		</div>
		
		<div id='logoDiv'>
			<img alt="sectionImg" src="./imgs/sectionImg.png">
		</div>
	</div>



	<div style="width: 1024px; height: 768px; margin: 0px auto;">
		<div>
			<h1>샘플 게시판</h1>
			<form action="noticeBoardDetail.jsp" method="post">
				<input type="submit" value="게시판 작성" name="notice" style="float: right; margin-bottom: 10px;">
			</form>
		</div>
	
		<div style=" width: 1024px; height:200px; clear:both;">
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
					<td>165</td>
					<td class="titleTd"><a href="num165.jsp">새 스티커 상품이 출시되었네요~</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>2</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>163</td>
					<td class="titleTd"><a href="num163.jsp">입문자를 위한 안내</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>0</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>134</td>
					<td class="titleTd"><a href="num134.jsp">웹사이트 만들 때 유용한 도구들</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>3</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>131</td>
					<td class="titleTd"><a href="num131.jsp">안녕하세요!좋은 아침입니다</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>1</td>
					<td>0</td>
				</tr>
				
				<tr>
					<td>129</td>
					<td class="titleTd"><a href="num129.jsp">워드프레스 게시판 사용법1</a></td>
					<td>admin</td>
					<td>2013.06.21</td>
					<td>1</td>
					<td>0</td>
				</tr>
			</tbody>
			</table>
		</div>
		
		<div style="width: 220px; margin: 10px auto;">
			<input type="button" value="페이지 1 의 2" style="height: 25px;"><input type="button" value="1" style="color: white; background-color: #6A84B7; height: 25px;"><a href="noticeboard2.jsp"><input type="button" value="2" style="height: 25px;"></a>
			<a href="noticeboard2.jsp"><input type="button" value="다음" style="border: none; background-color: white;"></a>
		</div>
			
	</div>
</body>
</html>