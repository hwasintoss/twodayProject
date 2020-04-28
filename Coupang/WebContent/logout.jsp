<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그아웃</title>
	
<style type="text/css">

/* 헤더 */
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
/* 로그아웃 */
#outlineDiv{
	width: 1024px;
	height: 768px;
	margin: auto;
/*  	border: 1px solid black;  */
}

#mainDiv{
	width: 600px;
	height: 200px;
	border: 2px solid #0074e9;
	margin: auto;
	margin-top: 100px;
	
/*  	margin-top: 284px;  */
/* 	background-color: #F0F0F0; */
}

#textDiv2{
/* 	padding-top: 60px; */
	text-align: center;
}

#textDiv2 > span{
	font-size: 22px;
}

#btnDiv{
	margin-top: 30px;
	text-align: center;
}

#btnDiv > input{
	background-color: white;
	border: 1px solid #F0F0F0;
	width: 110px;
	height: 30px;
	color: #0074e9;
	font-size: 15px;
	margin-left: 15px;
	margin-right: 30px;
}

span{
	font-size: 20px;
}
</style>
<script type="text/javascript">

//헤더
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

//기존
	function btnEnter() {
		this.style.backgroundColor = '#0074e9';
		this.style.color = 'white';
	}
	
	function btnLeave() {
		this.style.backgroundColor = 'white';
		this.style.color = '#0074e9';
	}
	
	window.onload = function() {
		//헤더
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
		
		//기존
		var btnObj = document.getElementsByClassName('inputBtn');
		
		btnObj[0].addEventListener('mouseenter',btnEnter);
		btnObj[0].addEventListener('mouseleave',btnLeave);
		btnObj[1].addEventListener('mouseenter',btnEnter);
		btnObj[1].addEventListener('mouseleave',btnLeave);
	}

</script>
</head>

<body>
<!-- 	헤더 -->
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
					<li class='slotList'><a href=''>로그아웃</a></li>
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
<!-- 	기존 -->
	<div id='outlineDiv'>

		<div id='mainDiv'>
			<div style="text-align: center; margin-top: 10px;">
				<img alt="customerImg" src="./imgs/customerImg.PNG">
			</div>
			<div id='textDiv2'>
				<span>정말 로그아웃 하시겠습니까?</span>
			</div>
			<div id='btnDiv'>
				<input class='inputBtn' type="button" value="예">
				<input class='inputBtn' type="button" value="아니요">
			</div>
		</div>
	</div>
	
</body>
</html>