<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
<style type="text/css">
#wrap {
/*    border: 1px solid black; */
   margin: auto;
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

.inputIdError {
   clear: left;
   float:left;
   width: 100px;
   height: 30px;
   font-size: 9px;
}
#joinBtn{
   margin: 20px 0px 0px 300px;
   width: 460px;
   height: 48px;
   background-color: #0074E9;
   color: #FFFFFF;
   border: none;
   border-radius: 2px;
   font-size: 17px;
    font-weight: 700px;
   box-shadow: inset 0 -2px 0 rgba(0,0,0,0.38);
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
/*위가 내것*/

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

   window.onload = function() {
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
	   
	   //내것
      idObj = document.getElementById('inputId');
      pwdObj = document.getElementById('inputPwd');
      pwdCheckObj = document.getElementById('inputPwdCheck');
      nameObj = document.getElementById('inputName');
      phoneObj = document.getElementById('inputPhone');

//       idObj.setAttribute('onmouseout', idValidCheckFnc);
      idObj.addEventListener('blur', idValidCheckFnc);
      pwdObj.addEventListener('blur', pwdValidFnc);
      pwdCheckObj.addEventListener('blur', pwdCheckValidFnc);
      nameObj.addEventListener('blur', nameValidFnc);
      phoneObj.addEventListener('blur', phoneValidFnc);
   }
   
   function idValidCheckFnc() {
	   var checkImg = document.getElementById('imgss'); 
	   var errorMsg = document.getElementById('errorMsgBox'); 
	   
      var oneDiv = document.getElementById('one');
      var redBox = document.getElementById('idRedBox');      
   
      var emailValue = /^[a-zA-Z0-9]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var pText = document.createTextNode('이메일을 입력하세요.');
      errorMsg.appendChild(pText);
      
      var pText2 = document.createTextNode('이메일 형식이 올바르지 않습니다.');
      errorMsg.appendChild(pText2);
      
      if(idObj.value == "" || (!emailValue.test(idObj.value))){ 
    	 checkImg.style.display = 'none'; 
    	 errorMsg.setAttribute('display', 'inherit'); 
	
    	 redBox.style.border = '1px solid red';
         return false;
      }else if (emailValue.test(idObj.value)) {  
    	 errorMsg.style.display = 'none';
    	  
    	 checkImg.setAttribute('display', 'inherit');     	   
         checkImg.parentNode.setAttribute('style', 'position: relative;');
         checkImg.setAttribute('style', 'position: absolute; top: 12px; right: 10px; height: 20px;');
      
      }
       
   }   

    function pwdValidFnc() {
         var twoDiv = document.getElementById('two');
         var pLengthTag = document.createElement('p');
         var lengthText = document.createTextNode('비밀번호는 6~15자 이내로 입력하셔야 합니다.');
         pLengthTag.appendChild(lengthText);
         
         var pSpaceTag = document.createElement('p');
         var spaceText = document.createTextNode('비밀번호에 사용할 수 없는 문자가 포함되어 있습니다.');
         pSpaceTag.appendChild(spaceText);
         
         var pEngTag = document.createElement('p');
         var engText = document.createTextNode('비밀번호는 영자로만 입력할 수 없습니다.');
         pEngTag.appendChild(engText);
         
         var pNumTag = document.createElement('p');
         var numText = document.createTextNode('비밀번호는 숫자로만 입력할 수 없습니다.');
         pNumTag.appendChild(numText);
         
         var pContinueTag = document.createElement('p');
         var continueText = document.createTextNode('연속된 문자/숫자는 사용이 불가합니다.');
         pContinueTag.appendChild(continueText);
         
         var pSameTag = document.createElement('p');
         var sameText = document.createTextNode('비밀번호에 동일한 숫자나 문자를 연속으로 사용할 수 없습니다.');
         pSameTag.appendChild(sameText);
         
         var redBox = document.getElementById('pwdRedBox');
         
         var num = pwdObj.value.search(/[0-9]/g);
         var eng = pwdObj.value.search(/[a-z]/ig);
         var spe = pwdObj.value.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        
         //동일한 문자 3자이상일 경우
         var tmp = "";
         var cnt = 0;
         
         for(i=0; i < pwdObj.value.length; i++){
          tmp = pwdObj.value.charAt(i);
          if(tmp == pwdObj.value.charAt(i+1) && tmp == pwdObj.value.charAt(i+2)){
           cnt = cnt + 1;
          }
         }
         
         //연속성을 위한 변수 할당
         var SamePass_1 = 0; //연속성(+) 카운드
         var SamePass_2 = 0; //연속성(-) 카운드
         
         var chr_pass_0;
         var chr_pass_1;
         
         for(var i=0; i < pwdObj.value.length; i++) {
             chr_pass_0 = pwdObj.value.charAt(i);
             chr_pass_1 = pwdObj.value.charAt(i+1);
            
             //연속성(+) 카운드
             if(chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == 1) {
              SamePass_1 = SamePass_1 + 1;
             } // if
            
             //연속성(-) 카운드
             if(chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == -1) {
             SamePass_2 = SamePass_2 + 1;
             } // if
        } // for
        
        if(SamePass_1 > 2 || SamePass_2 > 2 )  {
             //alert("연속된 문자열(123 또는 321, abc, cba 등)을\n 3자 이상 사용 할 수 없습니다.");
             twoDiv.insertBefore(pContinueTag, twoDiv[0]);
             twoDiv.removeChild(twoDiv.childNodes[2]);
             redBox.style.border = '1px solid red';
             return false;
            }
         
         //6~15자
         if(pwdObj.value.length < 6 || pwdObj.value.length > 15){
             twoDiv.insertBefore(pLengthTag, twoDiv[0]);
             twoDiv.removeChild(twoDiv.childNodes[2]);
             redBox.style.border = '1px solid red';         
             return false;
        //공백포함됐을때
         }else if(pwdObj.value.search(/\s/) != -1){         
            twoDiv.insertBefore(pSpaceTag, twoDiv[0]);
            twoDiv.removeChild(twoDiv.childNodes[2]);
            redBox.style.border = '1px solid red';           
            return false;
         //영어만 입력했을 때
         }else if(num < 0 && spe < 0 && eng >= 0){
            twoDiv.insertBefore(pEngTag, twoDiv[0]);
            twoDiv.removeChild(twoDiv.childNodes[2]);
            redBox.style.border = '1px solid red';   
            return false;
         //숫자만 입력했을 때
         }else if(num >= 0 && spe < 0 && eng < 0){
            twoDiv.insertBefore(pNumTag, twoDiv[0]);
            twoDiv.removeChild(twoDiv.childNodes[2]);
            redBox.style.border = '1px solid red';
            return false;
         //한가지로 채웠을 때=같은문자 3가지이상
         }else if(cnt > 0){
            twoDiv.insertBefore(pSameTag, twoDiv[0]);
            twoDiv.removeChild(twoDiv.childNodes[2]);
            redBox.style.border = '1px solid red'; 
            return false;
         }else {            
             var checkImg = document.createElement('img');
            
             checkImg.setAttribute('src', './success.png');
           
             redBox.appendChild(checkImg);
             checkImg.parentNode.setAttribute('style', 'position: relative;');
             checkImg.setAttribute('style', 'position: absolute; top: 12px; right: 10px; height: 20px;');
             return false;           
         }
        
      }

      function pwdCheckValidFnc() {
            var threeDiv = document.getElementById('three');
            var pTag = document.createElement('p');
            var pText = document.createTextNode('비밀번호가 일치하지 않습니다.');
            pTag.appendChild(pText);
            
            var redBox = document.getElementById('pwdCheckRedBox');
            //공백이거나 비밀번호랑 다르게 입력했을 경우
            if((pwdCheckObj.value == "") || (pwdObj.value != pwdCheckObj.value)){
               threeDiv.insertBefore(pTag, threeDiv[0]);
               threeDiv.removeChild(threeDiv.childNodes[2]);
               redBox.style.border = '1px solid red';
               return;
            }   
          //체크표시를 넣기위한
            var checkImg = document.createElement('img');
            
            checkImg.setAttribute('src', './success.png');
           
            redBox.appendChild(checkImg);
            checkImg.parentNode.setAttribute('style', 'position: relative;');
            checkImg.setAttribute('style', 'position: absolute; top: 12px; right: 10px; height: 20px;');
            return;
            
         }
      function nameValidFnc() {
            var fourDiv = document.getElementById('four');
            var pTag = document.createElement('p');
            var pText = document.createTextNode('이름을 정확히 입력하세요.');
            pTag.appendChild(pText);

            var redBox = document.getElementById('nameRedBox');
            
            var num = nameObj.value.search(/[0-9]/g);
            var eng = nameObj.value.search(/[a-z]/ig);
            var spe = nameObj.value.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
            
           //숫자랑 영어, 특수문자가 들어가면 이름을 정확히 입력하세요.
           //공백이거나 띄어쓰기 있거나
            if(nameObj.value == "" || (pwdObj.value.search(/\s/) != -1)){
               fourDiv.insertBefore(pTag, fourDiv[0]);
               fourDiv.removeChild(fourDiv.childNodes[2]);
               redBox.style.border = '1px solid red';
               return false;
               //특수문자가 있거나
            }else if((spe >= 0)){
            	fourDiv.insertBefore(pTag, fourDiv[0]);
                fourDiv.removeChild(fourDiv.childNodes[2]);
                redBox.style.border = '1px solid red';
                return false;
            //숫자를 포함하거나
            }else if((num >= 0 && spe < 0 && eng < 0)||(num >= 0 && spe < 0 && eng >= 0)
            		||(num >= 0 && spe >= 0 && eng >= 0)){
            	fourDiv.insertBefore(pTag, fourDiv[0]);
                fourDiv.removeChild(fourDiv.childNodes[2]);
                redBox.style.border = '1px solid red';
                return false;
            	
            }
            
          //체크표시를 넣기위한
            var checkImg = document.createElement('img');
            
            checkImg.setAttribute('src', './success.png');
           
            redBox.appendChild(checkImg);
            checkImg.parentNode.setAttribute('style', 'position: relative;');
            checkImg.setAttribute('style', 'position: absolute; top: 12px; right: 10px; height: 20px;');
            return;
         }
         
      function phoneValidFnc() {
            var fiveDiv = document.getElementById('five');
            var pTag = document.createElement('p');
            var pText = document.createTextNode('휴대폰 번호를 정확하게 입력하세요.');
            pTag.appendChild(pText);
            
            var phoneValue = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
            
            var redBox = document.getElementById('phoneRedBox');

            if(phoneObj.value == "" || (!phoneValue.test(phoneObj.value))){
               fiveDiv.insertBefore(pTag, fiveDiv[0]);
               fiveDiv.removeChild(fiveDiv.childNodes[2]);
               redBox.style.border = '1px solid red';
               return;
            }
          //체크표시를 넣기위한
            var checkImg = document.createElement('img');
            
            checkImg.setAttribute('src', './success.png');
           
            redBox.appendChild(checkImg);
            checkImg.parentNode.setAttribute('style', 'position: relative;');
            checkImg.setAttribute('style', 'position: absolute; top: 12px; right: 10px; height: 20px;');
            return;
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
	

<!-- 내것 -->
   <div id='wrap'>
      <div id='header'>
         <img alt="쿠팡로고이미지" src="./coupang_memberJoin_logo.PNG">
      </div>
      <div id='content'>
         <div id='one' style="width: 480px; margin-left: 300px;">
            <div id='idRedBox' class='inputField'>
               <img class='imgBox' alt="아이디입력" src="./id.png">
               <input id='inputId' class='inputBox' type="text" placeholder="아이디(이메일)">
               <img id="imgss" src="./success.png" style="top: 12px; right: 10px; height: 20px; display: none;">
            </div>
            <div id='errorMsgBox' style="color: red;"></div>
         </div>
         
         <div id='two' style="width: 480px; margin-left: 300px;">
            <div id='pwdRedBox' class='inputField'>
               <img class='imgBox' alt="비밀번호입력" src="./pwd.png">
               <input id='inputPwd' class='inputBox' type="password" placeholder="비밀번호(영문 숫자 특수문자 2가지 이상 6~15자 이내)">
               <div id='inputPwdError'></div>
            </div>
         </div>
         
         <div id='three' style="width: 480px; margin-left: 300px;">
            <div id='pwdCheckRedBox' class='inputField'>
               <img class='imgBox' alt="비밀번호확인" src="./pwdCheck.png">
               <input id='inputPwdCheck' class='inputBox' type="password" placeholder="비밀번호 확인">
               <div id='inputPwdCheckError'></div>
            </div>
         </div>
         
         <div id='four' style="width: 480px; margin-left: 300px;">
            <div id='nameRedBox'  class='inputField'>
               <img class='imgBox' alt="이름" src="./name.png">
               <input id='inputName' class='inputBox' type="text" placeholder="이름">
               <div id='inputNameError'></div>
            </div>
         </div>
         
         <div id='five' style="width: 480px; margin-left: 300px;">
            <div id='phoneRedBox'  class='inputField'>
               <img class='imgBox' alt="휴대폰번호" src="./phone.png">
               <input id='inputPhone' class='inputBox' type="tel" placeholder="휴대폰 번호">
               <div id='inputPhoneError'></div>
            </div>
         </div>
         
         <div>       
    		<a href="login.jsp">
           		 <input id='joinBtn' type="button" value="동의하고 가입하기">
         	</a>
         </div>
         <div id='joinAgree'>
            본인은 <strong>만 14세 이상</strong>이며,
            <a class='joinAgreeLink' href="">쿠팡 이용약관</a>,
            <a class='joinAgreeLink' href="">전자금융거래이용약관</a>,
            <a class='joinAgreeLink' href="">개인정보 수집 및 이용</a>,
            <a class='joinAgreeLink' href="">개인정보 제공</a> 내용을 확인 하였으며,
            <strong>동의합니다.</strong>
         </div>
      </div>
      <div id='footer'>
         ©Coupang Corp. All rights reserved.
      </div>
   </div>
   
   
</body>
</html>