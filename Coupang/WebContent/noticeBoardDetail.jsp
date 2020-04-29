<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String go = request.getParameter("go");
String contents = request.getParameter("contents");
String check = request.getParameter("check");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="./logo_favicon.ico"/>
	<title>게시판 상세</title>
<style type="text/css">

body{
	margin: 0px;
}

/* 헤더 */
#outlineDivH{
	height: 150px;
	margin: auto;
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

/* 메인 */
table,tr,th,td{
	border: 1px solid black;
}

table{
	width: 800px;
	height: 500px;
}

th{
	font-size: 18px;
	width: 110px;
	height: 25px;
}

#outlineDiv{
	width: 1024px;
	height: 768px;
	margin: auto;
}

#mainDiv{
	margin: 0px 75px;
	width: 800px;
	height: 668px;
}

#titleDiv{
	text-align: center;
	margin: 5px 0px;
}

#titleName{
	font-family: 굴림;
	font-size: 18px;
}

.inputText{
	width: 230px;
	height: 20px;
}

#inputTextPw{
	width: 222px;
	height: 20px;
}

#inputTextArea{
	overflow: scroll;
	overflow-x: hidden;
	width: 700px;
	height: 390px;
	resize: none;
}

#buttonDiv{
	margin-top: 15px;
	margin-right: 10px;
	text-align: right;
}

.actionBtn{
	width: 50px;
	background-color: #F0F0F0;
}

</style>	
<script type="text/javascript">
	//헤더부분
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
	
	window.onload = function() {
		var name = "<%=name%>";
		var inputNameText = document.getElementById('nameInput');
		var inputTextWriter = document.getElementById('inputTextWriter');
		
		if(name == 'null'){
			name = " ";
		}
		inputNameText.innerHTML = name;
		inputTextWriter.value = name;
		
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
	}
// 	기존부분
	function validation() {
		var checkTitle = document.getElementById('inputTextTitle');
		var checkWriter = document.getElementById('inputTextWriter');
		var checkPwd = document.getElementById('inputTextPw');
		var checkContent = document.getElementById('inputTextArea');
		
		
		if(checkTitle.value == ""){
			alert("제목을 입력하세요");
			return false;
		}else if(checkWriter.value == ""){
			alert("작성자를 입력하세요");
			return false;
		}else if(checkPwd.value == ""){
			alert("비밀번호를 입력하세요");
			return false;
		}else if(checkContent.value == ""){
			alert("내용을 입력하세요");
			return false;
		}else{
			return true;
		}
		
	}
	function noticeFnc() {
		var name = "<%=name%>";
 		location.href = 'noticeboard.jsp?name='+name;
 		history.back();
	}
	
	function logoutFnc() {
		var name = "<%=name%>";
		location.href='logout.jsp?name='+name;
	}
	

</script>
</head>

<body>

<!-- 헤더 -->
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
					<li class='slotList'><a id='nameInput' href=""onclick="alertMsg();"><%=name%></a><a href='' onclick="alertMsg();">님</a></li>
					<li class='slotList'><img style="width: 10px; height: 13px; margin-right: 3px;" alt="cash" src="./imgs/cash.jpg"><a href='' onclick="alertMsg();">쿠팡캐시 0원</a></li>
					<li class='slotList'><a onclick="logoutFnc();">로그아웃</a></li>
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
			
				<img alt="sectionImg" src="./imgs/sectionImg.png" onclick="noticeFnc();">				

		</div>
		<div id='greyLine'></div>
	</div>
	
<!-- 메인 -->
	<form onsubmit="return validation();" action="noticeboard.jsp">
		<div id='outlineDiv'>
			<div id='mainDiv'>
			
				<div id='titleDiv'>
					<span id='titleName'>게시판 등록</span>
				</div>
				
				<div>
					<table>
						<tr class='textTr'>
							<th>제목</th>
							<td><input id='inputTextTitle' class='inputText' type="text" name="title"></td>
						</tr>
						<tr class='textTr'>
							<th>작성자</th>
							<td><input id='inputTextWriter' class='inputText' type="text" name="writer" value="<%=name%>"></td>
						</tr>
						<tr class='textTr'>
							<th>비밀번호</th>
							<td><input id='inputTextPw' type="password" name="pwd"></td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea id='inputTextArea'></textarea>
							</td>
						</tr>
					</table>
				</div>
				
				<div id='buttonDiv'>
					<input type="hidden" name="name" value="<%=name%>">
					<input class='actionBtn' type="button" value='목록' onclick="noticeFnc();">
					<input class='actionBtn' type="submit" value='작성' name="go">
					<input class='actionBtn' type="button" value='취소' onclick="noticeFnc();">
				</div>
				
			</div>
		</div>
	</form>
</body>
</html>