<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String pwdCheck = request.getParameter("pwdCheck");
String phone = request.getParameter("phone");
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <link rel="shortcut icon" href="./logo_favicon.ico"/>
   <title>로그인</title>
<style type="text/css">

#errorId {
	color: red;
	font-size: 12px;
	margin: 9px 12px 0px;
	font-family: dotum,sans-serif;
}

#errorPwd {
	color: red;
	font-size: 12px;
	margin: 9px 12px 0px;
	font-family: dotum,sans-serif;
}

body{
	margin: 0px;
}

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

#wrap {
	
   margin: 28px auto;
   width: 1024px;
   height: 768px;
   
}
#header{
   margin: auto;
   width: 222px;
   height: 60px;
}
.imgBox   {
   border: 1px solid #AAAAAA;
   border-right: none;
   float: left;
   width: 45px;
   height: 46px;
   
}
.inputBox {
/*    float: left; */
   font-size: 12px;
   padding: 0px 0px 0px 10px;
   width: 400px;
   height: 44px;
   font-family: dotum,sans-serif;
}
.inputField {
   clear: left;
   margin: 20px 0px 0px 0px;
   width: 460px; /*460*/
   height: 47px; /*48*/
}
#inputPwd{
	float: left;
	width: 350px;
	height: 47px;
	border: 0.5px solid #AAAAAA;
	border-right: none;
}

.inputIdError {
   clear: left;
   float:left;
   width: 100px;
   height: 30px;
   font-size: 9px;
}
#joinBtn{
   margin: 0px 0px 0px 300px;
   width: 460px;
   height: 48px;
   background-color:#FFFFFF;
   color: #0074E9;
   border: 0.5px solid #AAAAAA;
   border-radius: 2px;
   font-size: 17px;
    font-weight: 700px;
   box-shadow: inset 0 -1px 0 rgba(0,0,0,0.38);
}
#loginBtn{
   margin: 20px 0px 0px 300px;
   width: 460px;
   height: 48px;
   background-color: #0074E9;
   color: #FFFFFF;
   border: 0.5px solid ;
   border-radius: 2px;
   font-size: 17px;
    font-weight: 700px;
   box-shadow: inset 0 -1px 0 rgba(0,0,0,0.38);
}

#joinAgree {
   margin: 10px 0px 0px 300px;
   width: 460px;
   height: 48px;
   font-size: 12px;
}
.joinAgreeLink {
   color: black;
}
#footer {
   margin: 20px 0px 0px 400px;
   width: 460px;
   height: 48px;
   font-size: 12px;
   font-family: dotum,sans-serif;
}

hr{
 	border: 0.5px solid #AAAAAA;
 	width: 459px;
 	margin-left: 300px;

}

</style> 

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
   window.onload = function() {
      idObj = document.getElementById('inputId');
      pwdObj = document.getElementById('inputPwd');
      
      pTag3 = document.createElement('p');
      pText3 = document.createTextNode('이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.');
      
      

      idObj.addEventListener('blur', idValidCheckFnc);
      pwdObj.addEventListener('blur', pwdValidFnc);
      
       email = "<%=email%>";
       pwd = "<%=pwd%>";
      
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
   
   function idValidCheckFnc() {
	  var errorMsgId = document.getElementById('errorId'); 
	  var errorMsgPwd = document.getElementById('errorPwd'); 
	  var oneDiv = document.getElementById('one');
	  var idRedBox = document.getElementById('idRedBox');
   
      var emailValue = /^[a-zA-Z0-9]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      
      if(idObj.value == ""){
        idRedBox.style.border = '1px solid red';
        errorMsgId.style.display = 'inherit';
        errorMsgId.innerHTML = '이메일을 입력하세요.';    	 
        return false;
      }else if(!emailValue.test(idObj.value)){
    	 idRedBox.style.border = '1px solid red';
    	 errorMsgId.style.display = 'inherit';
    	 errorMsgId.innerHTML = '아이디(이메일)는 이메일 형식으로 입력해주세요.';
     	 return false; 
      }else if(idObj.value != email){
    	  idRedBox.style.border = 'none';
    	  
    	 
    	  return false;
      }else{
    	  idRedBox.style.border = 'none';
    	  errorMsgId.style.display = 'none';
 		return true;
      }
    	 
   }   

    function pwdValidFnc() {
        var errorMsgPwd = document.getElementById('errorPwd');
        var twoDiv = document.getElementById('two');         
        var pwdRedBox = document.getElementById('pwdRedBox');
        
       if(pwdObj.value == ""){
    	   pwdRedBox.style.border = '1px solid red';
    	   errorMsgPwd.style.display = 'inherit';
    	   errorMsgPwd.innerHTML = '비밀번호를 입력해주세요.';
    	   return false;
       }else if(pwdObj.value != pwd){
    	   pwdRedBox.style.border = 'none';
    	   
    	  
    	   return false;
       }else {
    	   idRedBox.style.border = 'none';
    	   errorMsgPwd.style.display = 'none';
      	   return true;
       }
    }
    
    function eyeFnc() {
    	var pwdText =  document.getElementById('inputPwd');
		var eyeObj = document.getElementById('eye');
		if(pwdText.getAttribute('type') == 'password'){
			pwdText.removeAttribute('type');
			pwdText.setAttribute('type', 'text');
			eyeObj.removeAttribute('src');
			eyeObj.setAttribute('src', './눈__2.png');
			return;
 		}else if(pwdText.getAttribute('type') == 'text'){
 			pwdText.removeAttribute('type');
			pwdText.setAttribute('type', 'password');
			eyeObj.removeAttribute('src');
			eyeObj.setAttribute('src', './눈__1.png');
			return;
 		}
	}
    
    function allCheck() {
    	 if (!idValidCheckFnc()) {
    		 var errorMsgPwd = document.getElementById('errorPwd');
    		 errorMsgPwd.innerHTML = '이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.';
             return false;
         } else if (!pwdValidFnc()) {
        	 var errorMsgPwd = document.getElementById('errorPwd');
        	 errorMsgPwd.innerHTML = '이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.';
             return false;
         }
         else{
        	 return true;
         }
	}
    
    function emailFocus() {
    	var focusId = document.getElementById('inputId');
    	focusId.focus();
	}
    
	function pwdFocus() {
		var focusPwd = document.getElementById('inputPwd');
    	focusPwd.focus();
	}
    
</script>

</head>

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
					<li class='slotList'><a href="newLogin.jsp">로그인</a></li>
					<li class='slotList'><a href='memberJoin.jsp'>회원가입</a></li>
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
			<a href="newLogin.jsp">
				<img alt="sectionImg" src="./imgs/sectionImg.png">				
			</a>
		</div>
		<div id='greyLine'></div>
	</div>
<!--  -->

<form action="noticeboard.jsp" onsubmit="return allCheck();" method="post">
   <div id='wrap'>
      <div id='header'>
      	<a href="newLogin.jsp">
         	<img alt="쿠팡로고이미지" src="./coupang_memberJoin_logo.PNG">
        </a>
      </div>
      <div id='content'>
         <div id='one' style="width: 480px; margin-left: 300px;">
            <div id='idRedBox' class='inputField'>
               <img class='imgBox' alt="아이디입력" src="./id.png" onclick="emailFocus();">
               <input id='inputId' class='inputBox' type="text" placeholder="아이디(이메일)">
            </div>
            <div id="errorId"></div>
         </div>
         
         <div id='two' style="width: 480px; margin-left: 300px;">
            <div id='pwdRedBox' class='inputField'>
               <img class='imgBox' alt="비밀번호입력" src="./pwd.png" onclick="pwdFocus();">
               <input id='inputPwd' class='inputBox' type="password" placeholder="비밀번호" >
               <img alt="as" src="./눈__1.png" id="eye" onclick="eyeFnc();" style="padding:8px;  width: 36px; height: 31px; border: 0.5px solid #AAAAAA; border-left: none; float: left;">
            </div>
            <div id="errorPwd"></div>
         </div>
        
         <div>
         	<input type="hidden" name="name" value="<%=name%>">
         	<input type="submit" id="loginBtn" value="로그인">        	
         </div>
         <br>
         <hr>
         <br>
          <div>
          	<a href="memberJoin.jsp">
          		<input type="button" id="joinBtn" value="회원가입">
          	</a>
         </div>
      </div>
      <div id='footer'>
         ©Coupang Corp. All rights reserved.
      </div>
   </div>
   
 </form>  
</body>
</html>