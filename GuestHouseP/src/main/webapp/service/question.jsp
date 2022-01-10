<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Hanintel | 한인텔</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    
    

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/owl.theme.default.min.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/question.css" rel="stylesheet">

    <!-- Main JS File -->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="js/popper.min.js" type="text/javascript"></script>
    <script src="js/easing.min.js" type="text/javascript"></script>
    <script src="js/scrollreveal.min.js" type="text/javascript"></script>
    <script src="js/owlcarousel/owl.carousel.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>

    <!-- Bootstrap CSS File -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap JS File -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    
    <!-- Datepicker CSS File -->
    <link href="css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    
    <!-- Datepicker JS File -->
    <script src="js/datepicker.js"></script>
    <script src="js/datepicker.ko.js"></script>

</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script>
function oneCheckbox(a){

    var obj = document.getElementsByName("qnacategory");

    for(var i=0; i<obj.length; i++){

        if(obj[i] != a){

            obj[i].checked = false;
        }
    }
}
/*
$( function() {
    var dateFormat = "yy-mm-dd",
    qnasdate = $( "#qnasdate" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 3
        })
        .on( "change", function() {
           qnaqdate.datepicker( "option", "minDate", getDate( this ) );
        }),
    qnaqdate = $( "#qnaqdate" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3
      })
      .on( "change", function() {
    	  qnasdate.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  */

$(document).ready(function(){ 
	  $("#qnasdate").datepicker({
		  dateFormat : "yy-mm-dd",
		  minDate : 0,
		  nextText : ">",
		  prevText : "<",
		  onSelect : function(date) {
			var endDate = $('#qnaqdate');
			var startDate = $(this).datepicker('getDate');
			var minDate = $(this).datepicker('getDate');
			endDate.datepicker('setDate', minDate);
			startDate.setDate(startDate.getDate() + 30);
			endDate.datepicker('option', 'maxDate', startDate);
			endDate.datepicker('option', 'minDate', minDate);
		  }
	  });
	  $("#qnaqdate").datepicker({
		  dateFormat : "yy-mm-dd",
		  nextText : ">",
		  prevText : "<"
	  });
  });

$(function() {
	$("#btn_save").click(function(){
		
		if($("#qnacategory").is(':checked') == false ) {
			alert("질문유형을 선택해주세요.");
			return false;
		}
		if($("#qnawriter").val() == "" ) {
			alert("이름을 입력해주세요.");
			$("#qnawriter").focus();
			return false;
		}
		if($("#qnaphone").val() == "" ) {
			alert("연락처를 입력해주세요.");
			$("#qnaphone").focus();
			return false;
		}
		if($("#qnaanswer").val() == "" ) {
			alert("비밀번호를 입력해주세요.");
			$("#qnaanswer").focus();
			return false;
		}
		if($("#qnaanswer_chk").val() == "" ) {
			alert("비밀번호를 입력해주세요.");
			$("#qnaanswer_chk").focus();
			return false;
		}
		if($("#qnaanswer_chk").val() != $("#qnaanswer_chk").val() ) {
			alert("입력하신 비밀번호가 일치하지 않습니다.");
			$("#qnaanswer").focus();
			return false;
		}
		if($("#qnatitle").val() == "" ) {
			alert("제목을 입력해주세요.");
			$("#qnatitle").focus();
			return false;
		}
		if($("#qnasdate").val() == "" ) {
			alert("숙박 시작일을 선택해주세요.");
			$("#qnasdate").focus();
			return false;
		}
		if($("#qnaqdate").val() == "" ) {
			alert("숙박 종료일을 선택해주세요.");
			$("#qnaqdate").focus();
			return false;
		}
		if($("#qnacomment").val() == "" ) {
			alert("내용을 입력해주세요.");
			$("#qnacomment").focus();
			return false;
		}
		
		var formdata = $("#frm").serialize();
	
		$.ajax({
			type : "post",
			url : "questionSave.do",
			data : formdata,
			
			datatype : "text",
			success : function(data) {
				if (data == "ok") {
					alert("문의 완료");
					location = "mainpage.do";
					}
				},
				error : function() {
					alert("문의 실패");
				}
		});
	});
});
</script>

<body>
<!--/ Nav Start /-->
<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <!--<a class="navbar-brand text-brand" href="index.html"><span class="color-b">HANINTEL</span></a>-->
        <a class="navbar-brand text-brand" href="index.html"><span class="color-b"><img src="images/hanintel-logo.png" alt="logo"></span></a>
        <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
                data-target="#navbarTogglerDemo01" aria-expanded="false">
            <span class="fa fa-search" aria-hidden="true"></span>
        </button>
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Travel
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">후기</a>
                        <a class="dropdown-item" href="#">정보</a>
                        <a class="dropdown-item" href="#">지도</a>
                        <a class="dropdown-item" href="lodging.html">숙소검색</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Event</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        More
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="customer.html">고객센터</a>
                        <a class="dropdown-item" href="notice.html">공지사항</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
            </ul>
        </div>
        <ul class="d-flex member-box">
            <li><a href="#">로그인</a></li>
            <li><a href="#" class="d-none">로그아웃</a></li><!-- 로그인시 'd-none' class 제거 -->
            <li><a href="#">회원가입</a></li>
            <li><a href="#" class="d-none">마이페이지</a></li><!-- 로그인시 'd-none' class 제거 -->
        </ul>
    </div>
</nav>
<!--/ Nav End /-->

<!--/ Start 고객센터 /-->
<article id="sub">
    <!--/ sub visual Start /-->
    <section class="sub-visual">
        <img src="images/sub-visual.jpg" alt="sub visual" class="img-fluid">
        <div class="container">
            <ul class="sub-visual-text">
                <li>Welcome! hanintel</li>
                <li><strong>문의하기</strong></li>
            </ul>
        </div>
    </section>
    <!--/ sub visual End /-->
    <form name="frm" id="frm">
    <section id="sub" class="container question">
        <div class="text-center pt-5">
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" name="qnacategory" id="qnacategory" value="1" onclick="oneCheckbox(this)">예약문의
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" name="qnacategory" id="qnacategory" value="2" onclick="oneCheckbox(this)">결제관련
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" name="qnacategory" id="qnacategory" value="3" onclick="oneCheckbox(this)">취소/변경/환불
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" name="qnacategory" id="qnacategory" value="4" onclick="oneCheckbox(this)">기타
                </label>
            </div>
        </div><!-- end checkbox -->
        <div class="row pt-5">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="usr">이름:</label>
                    <input type="text" class="form-control" id="qnawriter" name="qnawriter">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="num">연락처:</label>
                    <input type="text" class="form-control" id="qnaphone" name="qnaphone">
                </div>
            </div>
        </div><!-- end row -->
        <div class="row pt-5">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="password">비밀번호:</label>
                    <input type="text" class="form-control" id="qnaanswer" name="qnaanswer">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="password">비밀번호 확인:</label>
                    <input type="text" class="form-control" id="qnaanswer_chk" name="qnaanswer_chk">
                </div>
            </div>
        </div><!-- end row -->
        <div class="row pt-5">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="title">제목:</label>
                    <input type="text" class="form-control" id="qnatitle" name="qnatitle">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="date">일정:</label>
                    <input type="text" class="form-control" id="qnasdate" name="qnasdate" style="width: 115px;" placeholder="숙박시작" />
			        <span style="display: table-cell; padding: 0px 30px;"> ~ </span>
			        <input type="text" class="form-control" id="qnaqdate" name="qnaqdate" style="width: 115px; border-radius: 3px 0 0 3px;" placeholder="숙박종료" />
                </div>
            </div>
        </div><!-- end row -->
        <div class="form-group pt-5">
            <label for="comment">내용(0/300자 내외):</label>
            <textarea class="form-control" rows="5" id="qnacomment" name="qnacomment"></textarea>
        </div><!-- end 내용 -->
        <div class="text-center pt-5 pb-5">
            <button type="button" id="btn_save" class="btn btn-dark btn-lg">등록</button>
        </div>
        
    </section>
    <!--/ content End /-->
    </form>
    <footer>
        <div class="container team">
            <div class="row">
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">신재희</h4>
                            <p class="card-text">000-0000-0000</p>
                            <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">송한기</h4>
                            <p class="card-text">000-0000-0000</p>
                            <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">윤석영</h4>
                            <p class="card-text">000-0000-0000</p>
                            <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">최용욱</h4>
                            <p class="card-text">010-8855-5376</p>
                            <a href="mailto:dyddnr5376@gmail.com" class="btn btn-block btn-secondary">dyddnr5376@gmail.com</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ footer End /-->
</article>
<!--/ End 고객센터 /-->
</body>
</html>
