<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록 화면</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="/teamproject/script/jquery-3.6.0.js"></script>
  <script src="/teamproject/script/jquery-ui.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

$( function() {
    $( "#birthday" ).datepicker({ // jquery 달력
      changeMonth: true,
      changeYear: true
    });
    
    $("#btn_emailcheck").click(function(){ // 이메일 중복체크
    	var email = $.trim($("#email").val()); // 입력된 값
    	if(email == "") {
    		alert("이메일을 입력해주세요.");
    		$("#email").focus();
    		return false;
    	}
    	// idcheck.do로 데이터 전송
    	$.ajax({
    		/* 전송 전 세팅 */
    		type:"POST",
    		data:"email="+email, // json 전송 타입 
    		url:"emailcheck.do",
    		dataType:"text",	// 리턴타입
    		
    		/* 전송 후 세팅 */
    		success:function(count) {
    			if(count == "ok") { // result값 컨트롤러에서 설정
    				alert("사용가능한 이메일 입니다.");
    				$("#email_chk").val("1");
    			} else {
    				alert("이미 사용중인 이메일 입니다.");
    				$("#email_chk").val("0");
    			}
    		},
    		error:function() { // 장애발생
    			alert("오류발생");
    		}
    	});
    });
    
    $("#btn_submit").click(function() { // 가입완료 버튼 클릭시
    	
    	var email = $("#email").val();
    	var email_chk = $("#email_chk").val();
    	var password = $("#password").val();
    	var passwordconfirm = $("#passwordconfirm").val();
    	var name = $("#name").val();
    	var birthday = $("#birthday").val();
    	var phone = $("#phone").val();
    	var zipcode = $("#zipcode").val();
    	var address = $("#address").val();
    	var detailaddress = $("#detailaddress").val();
    	
    	email = $.trim(email);
    	password = $.trim(password);
    	name = $.trim(name);
    	phone = $.trim(phone);
    	zipcode = $.trim(zipcode);
    	
    	if(email == "") {
    		alert("이메일을 입력해주세요.");
    		$("#email").focus();
    		return false;
    	}
    	if(email_chk == "0") {
    		alert("이메일 중복체크를 해주세요.");
    		$("#email_chk").focus();
    		return false;
    	}
    	if(password == "") {
    		alert("비밀번호를 입력해주세요.");
    		$("#password").focus();
    		return false;
    	}
    	if(password != passwordconfirm) {
    		alert("비밀번호가 일치하지 않습니다.");
    		$("#passwordconfirm").focus();
    		return false;
    	}
    	if(name == "") {
    		alert("이름을 입력해주세요.");
    		$("#name").focus();
    		return false;
    	}
    	if(birthday == "") {
    		alert("생년월일을 선택해주세요.");
    		$("#birthday").focus();
    		return false;
    	}
    	if(zipcode == "") {
    		alert("주소를 입력해주세요.");
    		$("#zipcode").focus();
    		return false;
    	}
    	$("#email").val(email);
    	$("#password").val(password);
    	$("#name").val(name);
    	$("#birthday").val(birthday);
    	$("#zipcode").val(zipcode);
    	
    	var formData = $("#frm").serialize();
    	
    	$.ajax({ // ajax로 전송
    		/* 전송 전 세팅 */
    		type:"POST",
    		data:formData,
    		url:"memberWriteSave.do",
    		dataType:"text",	// 리턴타입
    		
    		/* 전송 후 세팅 */
    		success:function(result) {
    			if(result == "ok") {
    				alert("회원가입 완료");
    				location="loginWrite.do";
    			} else {
    				alert("회원가입 실패");
    			}
    		},
    		error:function() { // 장애발생
    			alert("오류발생");
    		}
    	});
    });
  
  });

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("extraaddress").value = extraAddr;

            } else {
                document.getElementById("extraaddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailaddress").focus();
        }
    }).open();
}
</script>
</head>

<style>

body{
	margin:0;
	font-family:맑은 고딕;
}
button{
  height:52px;
  border: solid 1px #dadada;
  background-color: #ff6633;
  padding: 0;
  margin: 0;
  color: #ffffff;
  font-size:14px;
  font-weight:bold;
}
p {
  margin-bottom: 0px !important;
  word-break: keep-all;
}

/* width 460px로 고정 시키는 class */
.width460{
  width:460px;
}

/* input 애들 460px로 고정 시키는 class */
.input460{
  width: 460px;
  height: 50px;
  border: solid 1px #dadada;
  padding: 0;
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

</style>

<script>
function passConfirm() { // 비밀번호 일치 검사
	var pass1 = document.getElementById("password").value;
	var pass2 = document.getElementById("passwordconfirm").value;
	if(pass1 != pass2) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	} else {
		alert("비밀번호가 일치합니다.");
		return ture;
	}
}
function enterkey() { // enter키 누를시 적용 함수
    if (window.event.keyCode == 13) {

         // 엔터키가 눌렸을 때 실행하는 반응
         passConfirm();
    }
}
</script>

<body>

<form id="frm">
  
    <div class="FC AC" style="background-color: #e2e2e2;">
      <h2 class="width460" style="text-align:center">회원가입</h2>
      
      <p class="width460">이메일</p>
      <div class="FR width460">
        <input type="text" name="email" id="email" class="input460" placeholder="이메일 E-mail : " autofocus required/>
        <button type="button" id="btn_emailcheck" style="width:150px; margin-left:10px;">
               중복확인
        </button>
        <input type="hidden" name="email_chk" id="email_chk" value="0">
      </div>

      <p class="width460">비밀번호</p>
      <div class="width460">
        <input type="password" name="password" id="password" class="input460" placeholder="비밀번호 PassWord : " autofocus style="font-size:30px;" />
      </div>

      <p class="width460">비밀번호 확인</p>
      <div class="width460">
        <input type="password" id="passwordconfirm" onkeyup="enterkey()" class="input460" placeholder="비밀번호 확인 : (ENTER)" autofocus style="font-size:30px;" />
      </div>

      <p class="width460">이름</p>
      <div class="width460">
        <input type="text" name="name" id="name" class="input460" placeholder="이름 Name : " autofocus />
      </div>

      <p class="width460">생년월일</p>
      <div class="width460">
        <input type="text" name="birthday" id="birthday" class="input460" id="birthday" placeholder="생년월일(달력) : yyyy-mm-dd" autofocus />
      </div>

	  <p class="width460">연락처</p>
      <div class="width460">
        <input type="text" name="phone" id="phone" class="input460" placeholder="연락처 Phone : ( - 자 생략)" autofocus />
      </div>

      <p class="width460">우편번호</p>
      <div class="FR width460">
        <input type="text" name="zipcode" id="zipcode" class="input460" placeholder="우편번호 : " autofocus />
        <button type="button" onclick="sample6_execDaumPostcode()" style="width:150px; margin-left:10px;">
          우편 번호 찾기
        </button>
      </div>

      <p class="width460">주소</p>
      <div class="width460">
        <input type="text" name="address" id="address" class="input460" placeholder="주소 : " autofocus />
      </div>

      <p class="width460">상세주소</p>
      <div class="FR JSB width460" style="margin-bottom:20px;">
        <input type="text" name="detailaddress" id="detailaddress" class="input460" placeholder="상세주소 : " style="width:50%; margin-right:10px;" autofocus />
 		<input type="text" name="extraaddress" id="extraaddress" class="input460" style="width:50%; margin-left:10px;" placeholder="참고항목 : " autofocus /> 		      
      </div>

      <div class="FR JSB width460" style="margin-bottom:40px;">
        <button type="button" id="btn_submit" style="width:50%; margin-right:10px;">
              가입완료
        </button>
        <button type="reset" style="width:50%; margin-left:10px;">
              가입취소
        </button>
      </div>

    </div>
    
</form>

</body>
</html>