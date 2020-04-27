<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
<style type="text/css">
#wrap {
   border: 1px solid black;
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
   window.onload = function() {
      idObj = document.getElementById('inputId');
      pwdObj = document.getElementById('inputPwd');

      idObj.addEventListener('blur', idValidCheckFnc);
      pwdObj.addEventListener('blur', pwdValidFnc);
   }
   
   function idValidCheckFnc() {
      var oneDiv = document.getElementById('one');
      var pTag = document.createElement('p');
      var pTag2 = document.createElement('p');
      var pText = document.createTextNode('이메일을 입력하세요.');
      var pText2 = document.createTextNode('이메일 형식이 올바르지 않습니다.');
      
      var redBox = document.getElementById('idRedBox');
      
      pTag.appendChild(pText);
      pTag2.appendChild(pText2);
   
      var emailValue = /^[a-zA-Z0-9]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      if(idObj.value == ""){
         oneDiv.insertBefore(pTag, oneDiv[0]);
         oneDiv.removeChild(oneDiv.childNodes[2]);
         redBox.style.border = '1px solid red';
         return;
      }
      if(!emailValue.test(idObj.value)){
         oneDiv.insertBefore(pTag2, oneDiv[0]);
         oneDiv.removeChild(oneDiv.childNodes[2]);  
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

    function pwdValidFnc() {
         var twoDiv = document.getElementById('two');
         var pTag = document.createElement('p');
         var pText = document.createTextNode('비밀번호를 입력해주세요.');
         pTag.appendChild(pText);
         
         var redBox = document.getElementById('pwdRedBox');
         
         if(pwdObj.value == ""){
            twoDiv.insertBefore(pTag, twoDiv[0]);
            twoDiv.removeChild(twoDiv.childNodes[2]);
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
    
    function eyeFnc() {
		var pwdText =  document.getElementById('inputPwd');
		
		
	}
    
    
</script>

</head>

<body>
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
            <button id='loginBtn'>
          	로그인
            </button>
         </div>
         <br>
         <hr>
         <br>
          <div>
            <button id='joinBtn'>
          	회원가입
            </button>
         </div>
      </div>
      <div id='footer'>
         ©Coupang Corp. All rights reserved.
      </div>
   </div>
   
   
</body>
</html>