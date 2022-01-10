<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
  <script src="/teamproject/script/jquery-3.6.0.js"></script>
  <script src="/teamproject/script/jquery-ui.js"></script>
<script>
$(function(){
	
	$("#btn_submit").click(function() {
		var email = $("#email").val();
		var password = $("#password").val();
		
		if(email == "") {
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return false;
		}
		if(password == "") {
			alert("비밀번호를 입력해주세요.");
			$("#password").focus();
			return false;
		}
				
		var formData = $("#frm").serialize();
		
		$.ajax({
			/* 전송 전 세팅 */
    		type:"POST",
    		data:formData,
    		url:"loginWriteSub.do",
    		datatype:"text",	// 리턴타입
    		
    		/* 전송 후 세팅 */
    		success:function(result) {
    			if(result == "ok") { // result값 컨트롤러에서 설정
    				alert("로그인 성공");
    				//location="";
    			} else {
    				alert("입력하신 정보가 잘못되었습니다.");
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
	justify-content:center;
}
.frm{
	width:100%;
	height:100%;
}
.title{
	font-size:40px;
	font-weight:bold;
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

/* display를 flex인데 content가 나오는 방향을 오른쪽으로 나오게 */
.FR {
  display: flex;
  flex-direction: row;
}
/* display를 flex인데 content가 나오는 방향을 아래로 나오게 */
.FC {
  display: flex;
  flex-direction: column;
}

/* display flex에서 row 일때 중앙정렬, column일때 가운데정렬 */
.AC {
  align-items: center;
}

/* display flex에서 row 일때 가운데정렬, column일때 중앙정렬 */
.JC {
  justify-content: center;
}

/* display flex에서 간격 동일하게 배치 */
.JSB {
  justify-content: space-between;
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
.mb40{
	margin-bottom:40px;
}
a {
	text-decoration-line:none;
	color:#000000;
	font-weight:bold;
}
</style>

<body>

<form name="frm" id="frm" class="frm">

<div class="FC AC content">

<div><p class="title">로그인</p></div>

<div class="FR width460 mb20">
	<input type="text" name="email" id="email" class="input460" placeholder="이메일 E-mail : " autofocus>
</div>
<div class="FR width460 mb20">
	<input type="password" name="password" id="password" class="input460" placeholder="비밀번호 Password : " autofocus>
</div>

<div class="mb20">
	<button type="button" id="btn_submit">로그인</button>
</div>

<div><a href="memberWrite.do">회원가입</a></div>
<div class="FR JSB width460 mb40"><a href="">이메일 찾기</a>&nbsp;&nbsp;<a href="">비밀번호 찾기</a></div>

</div>

</form>

</body>
</html>