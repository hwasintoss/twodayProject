<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" onsubmit="return checkAll();">
		<div id='one'>
			<span>아이디 : </span>
			<input type="text" value="" id="id" onblur="idFnc();">
			<span>아이디는 4~12자 사이로 입력하세요.</span>
			<br>
			<input type="button" value="중복확인" id="idButton" onclick="checkFnc();">
			<br>
		</div>
		
		<div id='two'>
			<span>비밀번호 : </span>
			<input type="password" value="" id="password" onblur="passwordFnc();">
			<span id="pwd">비밀번호는 특수기호와 숫자의 조합입니다.</span>
			<br>
		</div>
		
		<div id='three'>
			<span>비밀번호 재확인 : </span>
			<input type="password" value="" id="passwordReconfirm" onblur="passwordReconfirmFnc();">
			<span id="pwdCheck"></span>
			<br>
		</div>
		
		<div id='four'>
			<span>인증번호 : </span>
			<input type="text" value="" id="certificationNumber">
			<input type="button" value="인증번호 확인" id="certificationNumberBtn" onclick="certificationNumberFnc();">
			<p id="time"></p>
			<input type="button" value="인증번호" id="rndNumber" onclick="rndNumberFnc(); timeFnc(10);">
			<br>
		</div>
		
		<div id='five'>
			<span>주소 : </span>
			<input type="text" value="" id="address" disabled="disabled">
			<select id="addressList" onchange="selectAddress()">
				<option>서울</option>
				<option>대전</option>				
				<option>대구</option>
				<option>부산</option>
				<option>경기</option>
				<option>충청도</option>
			</select>
			<br>
			<span>상세 주소 : </span>
			<input type="text" value="" id="detailAddress">
		</div>
		
		<div id='six'>
			<span>이름 : </span>
			<input type="text" value="" id="name" onblur="nameFnc();">
			<br>
		</div>
		
		<div id='seven'>
			<span>주민번호 : </span>
			<input type="text" value="" id="frontResidentRegistrationNumber">
			-
			<input type="text" value="" id="rearResidentRegistrationNumber">
			<br>
		</div>
		
		<div id="eight">
			<input type="checkbox" id="signupCheck">
			<span>가입 동의</span>
		</div>
		
		<div id="nine">
			<input type="submit" value="회원가입">
		</div>
		

	</form>
</body>
<script type="text/javascript">
	/* 아이디 검사 */
	function idFnc() {
		id = document.getElementById('id').value;
		if(id == ""){
			alert('아이디 입력란이 공백입니다.');
			//document.getElementById('id').focus();
			return false;
		}else if(id.length < 4 || id.length > 12) {
			alert('아이디는 4~12자 사이로 입력하세요.');
			return false;
		}
		return true; 
	}
	
	/* 아이디 중복확인 */
	function checkFnc() {
		id = document.getElementById('id').value;
		var a ='aaaa';
		var b ='bbbb';
		var c ='cccc';
		if(id == a || id == b || id == c){
			alert('아이디가 중복.');
			return false;
		}
		alert('아이디 생성됨.');
		return true;
	}
	
	/* 비밀번호 검사 */
	function passwordFnc() {
		pwd = document.getElementById('password').value;
		if(pwd == ""){
			alert('비밀번호 입력란이 공백입니다.');
			//document.getElementById('password').focus();
			return false;	
		}else if(!isNaN(pwd)){
			document.getElementById('pwd').innerHTML = ('비밀번호에는 특수문자와 숫자를 조합하시기 바랍니다.');
			document.getElementById('password').focus();
			return false;
		}
		alert('비밀번호가 생성되었습니다.');
		return true;
	}
	
	/* 비밀번호 재확인 */
	function passwordReconfirmFnc() {
		pwdCheck = document.getElementById('passwordReconfirm').value;
		if(pwdCheck != pwd){
			document.getElementById('pwdCheck').innerHTML = ('비밀번호가 틀립니다. 재확인 해주세요');
			//document.getElementById('password').focus();
			return false;
		}
		document.getElementById('pwdCheck').innerHTML = ('비밀번호가 맞습니다.');
		return true;
	}
	
	/* 인증번호 검사 */
	function certificationNumberFnc() {
		var num = document.getElementById('certificationNumber').value;
		
		if(Number(num) != rndResult){
			alert('인증번호가 일치하지 않습니다.');
			clearInterval(timeId);
			//document.getElementById('certificationNumber').focus();
			return false;
		}
		alert('인증번호가 일치합니다.');
		clearInterval(timeId);
		return true;
	}
	
	/* 인증번호 발생 */
	function rndNumberFnc() {
		var rnd = (Math.floor(Math.random()*9)+1)*1000;
		var rnd2 = (Math.floor(Math.random()*9)+1)*100;
		var rnd3 = (Math.floor(Math.random()*9)+1)*10;
		var rnd4 = Math.floor(Math.random()*9)+1;
		rndResult  = rnd + rnd2 + rnd3 + rnd4;
		alert(rndResult);
		document.getElementById('certificationNumber').focus();
	}
	/* 인증번호 타이머발생 */
	function timeFnc(a) {
		timeId = setInterval(function() {
			document.getElementById('time').innerHTML = "남은 시간 : " + a +'초';
			a--;
			if(a <= -1){
				alert('인증시간이 초과하였습니다. 다시 시도해주세요.');
				clearInterval(timeId);
			}
		}, 1000)
		
	}
	
	/* 주소 */
	function selectAddress(){
		var add = document.getElementById('addressList').value;
		document.getElementById('address').value
		= add;
	}
	
	/* 이름  */
	function nameFnc() {
		var name = document.getElementById('name').value;
		
		if (name == "") {
			alert('이름 입력란이 공백입니다.');
			return false;
			
		}
		var nameCheck = /^[ㄱ-ㅎ가-힣]{2,10}$/;
		if(!nameCheck.test(name) ){
			alert('이름은 한글로 2~10자 사이로 입력하세요.');
			return false;
		}
		return true;
	}
	/* 주민번호 */
	function residentRegistrationNumberFnc() {
		var num1 = document.getElementById('frontResidentRegistrationNumber').value;
		var num2 = document.getElementById('rearResidentRegistrationNumber').value;
		if(num1 == "" ){
			alert('앞자리 주민번호 입력란이 공백입니다.');
			return false;
		}
		if(num2 == ""){
			alert('뒷자리 주민번호 입력란이 공백입니다.');
			return false;
		}
		
		var arrNum1 = new Array();
		var arrNum2 = new Array();
		
		for (var i = 0; i < num1.length; i++) {
			arrNum1[i] = num1.charAt(i);
		}
		
		for (var i = 0; i < num2.length; i++) {
			arrNum2[i] = num2.charAt(i);
		}
		
		var tempSum=0;
		
		for (var i= 0; i < num1.length; i++) {
	        tempSum += arrNum1[i] * (2+i);
	    }
		
		for (var i= 0; i < num2.length-1; i++) {
	        if(i>=2) {
	            tempSum += arrNum2[i] * i;
	        }
	        else {
	            tempSum += arrNum2[i] * (8+i);
	        }
	    }
		
		if((11-(tempSum%11))%10!=arrNum2[6]) {
	        alert("올바른 주민번호가 아닙니다.");
	        num1 = "";
	        num2 = "";
	        return false;
	    }
		
		if((num1.length+num2.length)< 12){
			alert('주민번호가 13자리가 안됩니다.');
			num1 = "";
			num2 = "";
			return false;
		}
		alert("올바른 주민등록번호 입니다.");
		return true;
	}
	
	/* 가입동의 */
	
	function signCheckFnc() {
		var check = document.getElementById('signupCheck');
		
		for (var i = 0; i < check.length; i++) {
			if(check[i].checked == true){
				return true;
			}
		}
		alert('가입동의에 체크해주세요.');
		return false;
	}
	
	/* 전체 체크 */
	function checkAll() {
        if (!idFnc()) {
            return false;
        } else if (!checkFnc()) {
            return false;
        } else if (!passwordFnc()) {
            return false;
        } else if (!passwordReconfirmFnc()) {
            return false;
        } else if (!certificationNumberFnc()) {
            return false;
        } else if (!nameFnc()) {
            return false;
        } else if (!residentRegistrationNumberFnc()) {
            return false;
        } else if (!signCheckFnc()) {
            return false;
        }
        alert('회원가입이 되었습니다.');
        return true;
	}



</script>
</html>






















