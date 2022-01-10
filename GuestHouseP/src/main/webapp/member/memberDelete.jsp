<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 화면</title>
</head>

<style>
html {
background-color: #e2e2e2;
height:100vh;
}
body{
	margin:0;
	height:100%;
	font-family:맑은 고딕;
}
.content{
	background-color: #e2e2e2;
	width:100%;
	height:100%;
	display:flex;
	flex-direction:column;
	justify-content:center;
	align-items:center;
}
.title{
	font-size:40px;
	font-weight:bold;
	margin-bottom: 20px;
}
.subtitle{
	font-size:24px;
	font-weight:500;
	margin: 0;
}
button{
	width:120px;
	 height:52px;
	 border: solid 1px #dadada;
	 background-color: #ff6633;
	 padding: 0;
	 margin: 0;
	 color: #ffffff;
	 font-size:14px;
	 font-weight:bold;
}
input{
	padding:0 0 0 12px !important;
}
/* input 애들 460px로 고정 시키는 class */
.input250{
	min-width: 250px;
	max-width: 250px;
	height: 50px;
	border: solid 1px #dadada;
	font-size:16px;
}
.input-box{
	min-width: 500px;
	max-width: 500px;
	display:flex;
	flex-direction:row;
	justify-content:space-between;
}
/* placeholder 클릭시 배경색으로 변하게 */
input:focus::placeholder {
  color: transparent;
}

::placeholder { 
  color: #000000;
  opacity: 0.38; /* opacity : 투명도 조절 */
  font-size:16px;
}

.mb20{
	margin-bottom:20px;
}
.width80{
	width:80px;
}
</style>

<body>

<div class="content">
	<p class="title">회원 탈퇴</p>
	<p class="subtitle">회원 탈퇴는 본인인증 이후 사용사능합니다.</p>
	<br>
	<div class="input-box mb20">
		<p class="width80">이메일</p>	
		<input type="password" name="password" class="input250" placeholder="비밀번호 PassWord : " autofocus>
		<button>보내기</button>	
	</div>
	<div class="input-box">
		<p class="width80">인증번호</p>	
		<input name="code" class="input250" placeholder="인증번호" autofocus>
		<button>확인</button>	
	</div>
	<br>
	<div>
		<button type="button" onclick="location='memberModify.do?password=${memberVO.password}'">확인</button>
		<button type="reset">취소</button>
	</div>
</div>


</body>
</html>


