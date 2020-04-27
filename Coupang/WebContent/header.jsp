<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
<style type="text/css">

#outlineDiv{
	width: 1024px;
	height: 150px;
/* 	border: 1px solid black; */
}

#logoutDiv{
	background-color: lightgrey;
	height: 30px;
}

#logoutDiv > div{
	margin: 0px 75px;	
}

#logoutDiv > div > a{
	float: left;
	font-size: 12px;
	margin-right: 10px;
	margin-top: 5px;
}

#logoDiv{
	margin: 0px 75px;
}

</style>
<script type="text/javascript">

</script>
	
</head>

<body>

	<div id='outlineDiv'>
		<div id='logoutDiv'>
			<div>
				<a style="float: left;">즐겨찾기</a>
				<a style="float: left;">입점신청</a>
				<a style="float: right;">차정경님</a>
				<a style="float: right;">쿠팡캐시 0원</a>
				<input style="float: right; margin-right: 10px; margin-top: 5px; height: 16px; font-size: 10px; padding: unset;" type="button" value='로그아웃'>
				<a style="float: right;">고객센터</a>
			</div>
		</div>
		
		<div id='logoDiv'>
			<img alt="sectionImg" src="./imgs/sectionImg.png">
		</div>
	</div>
	
</body>
</html>