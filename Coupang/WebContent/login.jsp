<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
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

#wrap {
	
   margin: 1px auto;
   width: 1024px;
   height: 768px;
   
}
#header{
   margin: auto;
   width: 222px;
   height: 60px;
}
.imgBox   {
   border: 0.5px solid #AAAAAA;
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
   height: 43px;
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
	height: 46px;
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
p {
   font-size: 12px;
   color: red;
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
      var oneDiv = document.getElementById('one');
      var twoDiv = document.getElementById('two');
      var pTag = document.createElement('p');
      var pTag2 = document.createElement('p');
     
      var pText = document.createTextNode('이메일을 입력하세요.');
      var pText2 = document.createTextNode('아이디(이메일)는 이메일 형식으로 입력해주세요.');
     
      
      var redBox = document.getElementById('idRedBox');
      
      pTag.appendChild(pText);
      pTag2.appendChild(pText2);
      pTag3.appendChild(pText3);
   
      var emailValue = /^[a-zA-Z0-9]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      
      if(idObj.value == ""){
         oneDiv.insertBefore(pTag, oneDiv[0]);
         redBox.style.border = '1px solid red';
         if(oneDiv.childNodes[3].getAttribute('p') == '이메일을 입력하세요.' || '아이디(이메일)는 이메일 형식으로 입력해주세요.'){
        	 oneDiv.removeChild(oneDiv.childNodes[2]);	 
         }
         return false;
         
         
      }else if(!emailValue.test(idObj.value)){
         oneDiv.insertBefore(pTag2, oneDiv[0]);
         redBox.style.border = '1px solid red';
         if(oneDiv.childNodes[3].getAttribute('p') == '이메일을 입력하세요.' || '아이디(이메일)는 이메일 형식으로 입력해주세요.'){
   		 	oneDiv.removeChild(oneDiv.childNodes[2]);
         }
         return false;
         
      }else if(idObj.value != email){
    	  if(oneDiv.childNodes[1].getAttribute('p') == '아이디(이메일)는 이메일 형식으로 입력해주세요.' || '이메일을 입력하세요.' || ""){
    		  oneDiv.removeChild(oneDiv.childNodes[2]);
    		  redBox.style.border = 'none';
    		  return false;
    	  }else if(twoDiv.childNodes[1].getAttribute('p') == '이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.'){
    		  twoDiv.insertBefor(pTag3, twoDiv[0]);
    		  twoDiv.removeChild(twoDiv.childNodes[2]);
    		  return false;
    	  }
    	return false;
    	  
      }else {
    	  redBox.style.border = 'none';
    	  if(oneDiv.childNodes[1].getAttribute('p') == '이메일을 입력하세요.' || '아이디(이메일)는 이메일 형식으로 입력해주세요.'){
    		 oneDiv.removeChild(oneDiv.childNodes[1]);
    		 return false;
    	  }else if(twoDiv.childNodes[1].getAttribute('p') == '이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.' || '비밀번호를 입력해주세요.'){
    		  twoDiv.removeChild(twoDiv.childNodes[2]);
    		  return false;
    	  }
          return true;  
      }
   }   

    function pwdValidFnc() {
    	 var twoDiv = document.getElementById('two');
         var pTag = document.createElement('p');
         var pTag3 = document.createElement('p');
         var pText = document.createTextNode('비밀번호를 입력해주세요.');
         var pText3 = document.createTextNode('이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.');
         pTag.appendChild(pText);
         pTag3.appendChild(pText3);
         
         var redBox = document.getElementById('pwdRedBox');
         
         if(pwdObj.value == ""){
            twoDiv.insertBefore(pTag, twoDiv[0]);
            redBox.style.border = '1px solid red';
            if(twoDiv.childNodes[1].getAttribute('p') == '비밀번호를 입력해주세요.' || '이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.'  ){
            	twoDiv.removeChild(twoDiv.childNodes[2]);
            	return false;
            }
           
            return false;
            
         }else if(pwdObj.value != pwd){
        	if(twoDiv.childNodes[1].getAttribute('p') == '비밀번호를 입력해주세요.' || '이메일 또는 비밀번호를 다시 확인하세요. 쿠팡에 등록되지 않은 이메일이거나, 이메일 또는 비밀번호를 잘못 입력하셨습니다.'){
        		twoDiv.insertBefor(pTag3, twoDiv.childNodes[1]);
        		redBox.style.border = 'none';
           	  	twoDiv.removeChild(twoDiv.childNodes[2]);
           	  	return false;
        	}
       	  	return false;
         }else {
        	 redBox.style.border = 'none';
             twoDiv.removeChild(twoDiv.childNodes[1]);
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
			eyeObj.setAttribute('src', './눈_2.png');
			return;
 		}else if(pwdText.getAttribute('type') == 'text'){
 			pwdText.removeAttribute('type');
			pwdText.setAttribute('type', 'password');
			eyeObj.removeAttribute('src');
			eyeObj.setAttribute('src', './눈_1.png');
			return;
 		}
	}
    
    function allCheck() {
    	 if (!idValidCheckFnc()) {
             return false;
         } else if (!pwdValidFnc()) {
             return false;
         }
         else{
        	 return true;
         }
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
<!--  -->

<form action="" onsubmit="allCheck();">
   <div id='wrap'>
      <div id='header'>
         <img alt="쿠팡로고이미지" src="./coupang_memberJoin_logo.PNG">
      </div>
      <div id='content'>
         <div id='one' style="width: 480px; margin-left: 300px;">
            <div id='idRedBox' class='inputField'>
               <img class='imgBox' alt="아이디입력" src="./id.png">
               <input id='inputId' class='inputBox' type="text" placeholder="아이디(이메일)">
            </div>
         </div>
         
         <div id='two' style="width: 480px; margin-left: 300px;">
            <div id='pwdRedBox' class='inputField'>
               <img class='imgBox' alt="비밀번호입력" src="./pwd.png">
               <input id='inputPwd' class='inputBox' type="password" placeholder="비밀번호" >
               <img alt="as" src="./눈_1.png" id="eye" onclick="eyeFnc();" style="padding:8px;  width: 36px; height: 30px; border: 0.5px solid #AAAAAA; border-left: none; float: left;">
            </div>
         </div>
        
         <div>
         	<a href="noticeboard.jsp">
            	<button  id='loginBtn'>
          		로그인
            	</button>
            </a>
         </div>
         <br>
         <hr>
         <br>
          <div>
          	<a href="memberJoin.jsp">
	            <button id='joinBtn'>
	          	회원가입
	            </button>
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