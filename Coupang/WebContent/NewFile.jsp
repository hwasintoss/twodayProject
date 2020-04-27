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
.inputBox {
   font-size: 12px;
   width: 410px;
   height: 50px;
   font-family: dotum,sans-serif;
}
#joinBtn{
   margin: 20px 0px 0px 300px;
   width: 460px;
   height: 48px;
   background-color: #0074E9;
   color: #FFFFFF;
   border: none;
   font-size: 17px;
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

</style> 
<script type="text/javascript">

</script>

</head>

<body>
   <div id='wrap'>
      <div id='header'>
         <img alt="쿠팡로고이미지" src="./coupang_memberJoin_logo.PNG">
      </div>
      <div id='content'>
         <div style="width: 480px; height: 54px;">
            <img alt="아이디입력" src="KakaoTalk_20200427_124138000.jpg" style="float: left;"><input class='inputBox' type="text" placeholder="아이디(이메일)" style="float: left;">
         </div>
         <div>
            <a><img alt="비밀번호입력" src="./pwd.jpg"></a>
            <input class='inputBox' type="password" placeholder="비밀번호(영문 숫자 특수문자 2가지 이상 6~15자 이내)">
         </div>
         <div>
            <a><img alt="비밀번호확인" src="./pwdCheck.jpg"></a>
            <input class='inputBox' type="password" placeholder="비밀번호 확인">
         </div>
         <div>
            <a><img alt="이름" src="./name.jpg"></a>
            <input class='inputBox' type="text" placeholder="이름">
         </div>
         <div>
            <a><img alt="휴대폰번호" src="./phone.jpg"></a>
            <input class='inputBox' type="tel" placeholder="휴대폰 번호">
         </div>
         <div>
            <button id='joinBtn'>
               동의하고 가입하기
            </button>
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