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
#outlineDivH{
	height: 150px;
	margin: auto;
/* 	border: 1px solid black; */
}

#logoutDiv{
	background-color: #F0F0F0;
	height: 30px;
}

#textDiv{
	position: relative;
	margin: auto;
	width: 1024px;
}

menu{
	margin: 0px;
	padding: 0px 90px;
}

.slotList{
	float: left;
	margin-top: 10px;
	padding-right: 12px;
	font-size: 11px;
	list-style: none;
}

.slotList > a{
	color: black;
	text-decoration: none;
}

#listImg{
	margin-left: 2px;
	font-size: 10px;
}

#logoDiv{
	height: 120px;
	text-align: center;
}

#greyLine{
	background-color: #F0F0F0;
	height: 1px;
}

#listBox1{
	width: 100px;
	height: 130px;
	left: 120px;
	top: 30px;
	background-color: white;
	border: 1px solid grey; 
	position: absolute;
	box-shadow: 2px 2px 4px;
	visibility: hidden;
}

#listBox2{	
	width: 130px;
	height: 130px;
	top: 30px;
	right: 80px;
	background-color: white;
	border: 1px solid grey; 
	position: absolute;
	box-shadow: 2px 2px 4px;
	visibility: hidden;
}

#nameInput{
	font-weight: bold;
}

/*  */
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
	/*  */

</style>
</head>
<script type="text/javascript">
function enterListBox1() {
	var listBoxObj = document.getElementById('listBox1');
	
	listBoxObj.style.visibility = 'visible';
}

function leaveListBox1() {
	var listBoxObj = document.getElementById('listBox1');
	
	listBoxObj.style.visibility = 'hidden';
}

function enterListBox2() {
	var listBoxObj = document.getElementById('listBox2');
	
	listBoxObj.style.visibility = 'visible';
}

function leaveListBox2() {
	var listBoxObj = document.getElementById('listBox2');
	
	listBoxObj.style.visibility = 'hidden';
}

function alertMsg(){
	alert('미구현된 기능입니다 !');	
}
	
	
	/*  */
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
		/*  */
		var listBox1 = document.getElementById('slotList1');
		var listBox2 = document.getElementById('slotList2');
		var listBox1In = document.getElementById('listBox1');
		var listBox2In = document.getElementById('listBox2');
		
		listBox1.addEventListener('mouseenter', enterListBox1);
		listBox1.addEventListener('mouseleave', leaveListBox1);
		listBox1In.addEventListener('mouseenter', enterListBox1);
		listBox1In.addEventListener('mouseleave', leaveListBox1);
		
		listBox2.addEventListener('mouseenter', enterListBox2);
		listBox2.addEventListener('mouseleave', leaveListBox2);
		listBox2In.addEventListener('mouseenter', enterListBox2);
		listBox2In.addEventListener('mouseleave', leaveListBox2);
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
<div id='outlineDivH'>
		<div id='logoutDiv'>
			<div id='textDiv'>
				<menu style="float: left;">
					<li class='slotList'><a href='' onclick="alertMsg();">즐겨찾기</a></li>
					<li id='slotList1' class='slotList'><a>입점신청</a><span id='listImg'>▼</span></li>
				</menu>
					<div id='listBox1'>
						<ul style="padding-left: 20px; margin: 8px 0px;">
							<li class='slotList'><a href="" onclick="alertMsg();">오픈마켓</a></li>
							<li class='slotList'><a href="" onclick="alertMsg();">여행ㆍ티켓</a></li>
							<li class='slotList'><a href="" onclick="alertMsg();">로켓배송</a></li>
							<li class='slotList'><a href="" onclick="alertMsg();">제휴마케팅</a></li>
						</ul>						
					</div>
					
				<menu style="float: right;">
					<li class='slotList'><a id='nameInput' href=""onclick="alertMsg();">차정경</a><a href='' onclick="alertMsg();">님</a></li>
					<li class='slotList'><img style="width: 10px; height: 13px; margin-right: 3px;" alt="cash" src="./imgs/cash.jpg"><a href='' onclick="alertMsg();">쿠팡캐시 0원</a></li>
					<li class='slotList'><a href='logout.jsp'>로그아웃</a></li>
					<li id='slotList2' class='slotList'><a>고객센터</a></li>
				</menu>
					<div id='listBox2'>
						<ul style="padding-left: 20px; margin: 8px 0px;">
							<li class='slotList'><a href="" onclick="alertMsg();">자주묻는질문</a></li>
							<li class='slotList'><a href="" onclick="alertMsg();">1:1 채팅문의</a></li>
							<li class='slotList'><a href="" onclick="alertMsg();">고객의 소리</a></li>
							<li class='slotList'><a href="" onclick="alertMsg();">취소 / 반품 안내</a></li>
						</ul>	
					</div>
			</div>
		</div>
		
		<div id='logoDiv'>			
			<a href="">
				<img alt="sectionImg" src="./imgs/sectionImg.png">				
			</a>
		</div>
		<div id='greyLine'></div>
	</div>
	

<!--  -->

	<div style="width: 1024px; height: 768px; margin: 0px auto;">
		<div>
			<h1>샘플 게시판</h1>
			<form action="noticeBoardDetail.jsp" method="get">
				<input type="hidden" name="writer" value="<%=writer%>">
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