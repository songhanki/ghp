<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 확인 화면</title>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  
<script>
$(function(){
	
	$("#btn_confirm").click(function() {
		
		var password = $("#password").val();
		
		if(password == "") {
			alert("비밀번호를 입력해주세요.");
			$("#password").focus();
			return false;
		}
		$.ajax({
			/* 전송 전 세팅 */
    		type:"POST",
    		data:"password="+password, // json 전송 타입 
    		url:"passwordcheck.do",
    		dataType:"text",	// 리턴타입
    		
    		/* 전송 후 세팅 */
    		success:function(count) {
    			if(count == "ok") { // result값 컨트롤러에서 설정
    				alert("비밀번호 일치");
    				location = "memberModify.do";
    			} else {
    				alert("비밀번호를 다시 입력해주세요.");
    			}
    		},
    		error:function() { // 장애발생
    			alert("오류발생");
    		}
		});
	 });  
 });
</script>
  
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
	width:150px;
	 height:52px;
	 border: solid 1px #dadada;
	 background-color: #ff6633;
	 padding: 0;
	 margin: 0;
	 color: #ffffff;
	 font-size:14px;
	 font-weight:bold;
}
/* width 460px로 고정 시키는 class */
.width460{
  width:460px;
}

input{
	padding:0 0 0 12px !important;
}
/* input 애들 460px로 고정 시키는 class */
.input460{
	min-width: 460px;
	max-width: 460px;
	height: 50px;
	border: solid 1px #dadada;
	font-size:16px;
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
</style>

<body>

<div class="content">
	<p class="title">프로필 수정</p>
	<p class="subtitle">프로필 수정 본인 확인 후 사용 가능</p>
	<br>
	<div><input type="password" name="password" id="password" class="input460" placeholder="비밀번호 PassWord : " autofocus></div>
	<br>
	<div>
		<button type="button" id="btn_confirm">확인</button>
		<button type="reset">취소</button>
	</div>
</div>


</body>
</html>


