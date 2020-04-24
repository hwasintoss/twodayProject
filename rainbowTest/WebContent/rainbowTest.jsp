<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="./css/rainbowTest.css">

<!-- src="./js/rainbowTest.js" -->
<script type="text/javascript">

	function enterRainbow() {	
		
		switch (this.style.borderColor) {
		case 'red':
			this.style.borderColor = 'orange';
			break;
		case 'orange':
			this.style.borderColor = 'yellow';
			break;
		case 'yellow':
			this.style.borderColor = 'green';
			break;
		case 'green':
			this.style.borderColor = 'blue';
			break;
		case 'blue':
			this.style.borderColor = 'navy';
			break;
		case 'navy':
			this.style.borderColor = 'purple';
			break;
		case 'purple':
			this.style.borderColor = 'red';
			break;
		}
	}
	
	function leaveRainbow() {	
		var rainbowDivArr = document.getElementsByClassName('rainbowDiv');

	}
	
	window.onload = function() {
		var rainbowDivArr = document.getElementsByClassName('rainbowDiv')[0].children;
		
// 		for (var i = 0; i < document.getElementsByClassName('rainbowDiv').length; i++) {
// 			rainbowDivArr[i].style.marginTop = Math.abs(60 - (15*(i+1)))  + 'px';
// 		}
		
		for (var i = 0; i < 7; i++) {
			rainbowDivArr[i].addEventListener('mouseenter', enterRainbow);
			rainbowDivArr[i].addEventListener('mouseleave', leaveRainbow);	
		}
		
	}
</script>

</head>

<body>
	
	<div class='rainbowDiv'>
		<div id='redDiv' ></div>
		<div id='orangeDiv'></div>
		<div id='yellowDiv'></div>
		<div id='greenDiv'></div>
		<div id='blueDiv'></div>
		<div id='navyDiv'></div>
		<div id='purpleDiv'></div>
	</div>
	
</body>
</html>