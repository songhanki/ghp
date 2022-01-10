<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
    <link href="css/lodging.css" rel="stylesheet">

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

</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
                            <a class="dropdown-item" href="#">공지사항</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                </ul>
            </div>
            <ul class="d-flex member-box">
                <li><a href="lodging_detail.html">로그인</a></li>
                <li><a href="#" class="d-none">로그아웃</a></li><!-- 로그인시 'd-none' class 제거 -->
                <li><a href="lodging_detail.html">회원가입</a></li>
                <li><a href="#" class="d-none">마이페이지</a></li><!-- 로그인시 'd-none' class 제거 -->
            </ul>
        </div>
    </nav>
    <!--/ Nav End /-->

    <!--/ Sub content Start /-->
    <article id="sub" class="lodging-reservation">
        <section class="container calendar">
            <div class="month">
                <ul>
                    <li class="prev">&#10094;</li>
                    <li class="next">&#10095;</li>
                    <li>
                        November<br>
                        <span style="font-size:18px">2021</span>
                    </li>
                </ul>
            </div>
            <ul class="weekdays">
                <li>Mo</li>
                <li>Tu</li>
                <li>We</li>
                <li>Th</li>
                <li>Fr</li>
                <li>Sa</li>
                <li>Su</li>
            </ul>
            <ul class="days">
                <li>1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
                <li>6</li>
                <li>7</li>
                <li>8</li>
                <li>9</li>
                <li><span class="active">10</span></li>
                <li>11</li>
                <li>12</li>
                <li>13</li>
                <li>14</li>
                <li>15</li>
                <li>16</li>
                <li>17</li>
                <li>18</li>
                <li>19</li>
                <li>20</li>
                <li>21</li>
                <li>22</li>
                <li>23</li>
                <li>24</li>
                <li>25</li>
                <li>26</li>
                <li>27</li>
                <li>28</li>
                <li>29</li>
                <li>30</li>
                <li>31</li>
            </ul>
        </section><!-- end calendar -->
        <section class="container reservation-choice">
            <h3>달 룸</h3>
            <form class="d-flex" id="frm" name="frm">
                <div class="form-group flex-fill pr-2">
                    <label>날짜:</label>
                    <input type="text" class="form-control" id="rsvsdate" name="rsvsdate" style="width: 115px;" placeholder="숙박시작" />
                </div>
                <div class="form-group flex-fill pr-2">
                    <label>날짜:</label>
                    <input type="text" class="form-control" id="rsvedate" name="rsvedate" style="width: 115px; border-radius: 3px 0 0 3px;" placeholder="숙박종료" />
                </div>
                <div class="form-group flex-fill">
                    <label>인원:</label>
                    <select class="form-control" id="rsvperson" name="rsvperson">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                </div>
                </form>
        </section><!-- end 날짜 및 인원 선택 -->
        <section class="container">
            <div class="d-flex reservation-result">
                <div class="flex-fill">
                    <ul class="mb-0">
                        <li>1박 숙박비 $100,000</li>
                        <li>총 1 박</li>
                    </ul>
                </div>
                <div class="flex-fill pt-2">
                    <p class="text-right">합계: $100,000</p>
                </div>
            </div>
        </section><!-- end -->
        <section class="container reservation-info">
        <form class="d-flex" id="frm2" name="frm2">
            <h4>예약자정보</h4>
                <div class="form-group flex-fill pr-2">
                    <label>예약자이름 :</label>
                    <input type="text" class="form-control" id="rsvname" name="rsvname">
                </div>
                <div class="form-group flex-fill pr-2">
                    <label>핸드폰번호 :</label>
                    <input type="text" class="form-control" placeholder="'-'없이 입력" id="rsvphone" name="rsvphone">
                </div>
                <div class="form-group flex-fill">
                    <label>결제수단 :</label>
                    <select class="form-control" id="rsvpayyn" name="rsvpayyn">
                        <option value="카드">카드</option>
                        <option value="계좌이체">계좌이체</option>
                    </select>
                </div>
        </form>
        </section><!-- end 예약자정보 -->
        <section class="container reservation-check">
            <h4>예약확인</h4>
            <ul class="mb-0">
                <li>숙소이름: aa숙소</li>
                <li>객실: 달룸</li>
                <li>체크인: 2021-10-08</li>
                <li>체크아웃: 2021-10-09</li>
                <li>(총 1박)</li>
            </ul>
        </section><!-- end 예약확인 -->
        <div class="container text-center">
            <button id="myBtn" name="myBtn" class="btn btn-lg btn-reservation">지금예약</button>
        </div>
    </article>
    <!--/ Sub content End /-->
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
</body>
</html>

<!-- 예약내역 확인 popup -->
<div id="myModal" class="modal">
    <div class="container">
        <!-- 예약내역 확인 content -->
        <div class="modal-content">
            <div class="modal-header">
                <h2>예약내역 확인</h2>
                <span class="close">&times;</span>
            </div>
            <div class="modal-body">
                <h3>예약내역 확인</h3>
                <ul class="mb-0">
                    <li>aa숙소</li>
                    <li>달룸 / 1박</li>
                </ul>
                <hr>
                <dl>
                    <dt>체크인</dt>
                    <dd>10.08</dd>
                    <dt>체크아웃</dt>
                    <dd>10.09</dd>
                </dl>
                <hr>
                <p><span>취소 및 환불 규정</span>에 따라 취소수수료 부과 및 불가 될 수 있습니다</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-lg btn-reservation">결제하기</button>
            </div>
        </div>
    </div>
</div>
<script>
  
$(document).ready(function(){ 
	  $("#rsvsdate").datepicker({
		  dateFormat : "yy-mm-dd",
		  minDate : 0,
		  nextText : ">",
		  prevText : "<",
		  onSelect : function(date) {
			var endDate = $('#rsvedate');
			var startDate = $(this).datepicker('getDate');
			var minDate = $(this).datepicker('getDate');
			endDate.datepicker('setDate', minDate);
			startDate.setDate(startDate.getDate() + 30);
			endDate.datepicker('option', 'maxDate', startDate);
			endDate.datepicker('option', 'minDate', minDate);
		  }
	  });
	  $("#rsvedate").datepicker({
		  dateFormat : "yy-mm-dd",
		  nextText : ">",
		  prevText : "<"
	  });
});

$(function() {
	$("#myBtn").click(function(){

			if($("#rsvsdate").val() == "" ) {
				alert("숙박시작 날짜를 입력해주세요.");
				$("#rsvsdate").focus();
				return false;
			}
			
			if($("#rsvedate").val() == "" ) {
				alert("숙박종료 날짜를 입력해주세요.");
				$("#rsvedate").focus();
				return false;
			}
			
			if($("#rsvperson").val() == "" ) {
				alert("숙박인월을 입력해주세요.");
				$("#rsvperson").focus();
				return false;
			}
			
			if($("#rsvname").val() == "" ) {
				alert("이름을 입력해주세요.");
				$("#rsvperson").focus();
				return false;
			}
			
			if($("#rsvphone").val() == "" ) {
				alert("연락처를 입력해주세요.");
				$("#rsvphone").focus();
				return false;
			}
			
			if($("#rsvpayyn").val() == "" ) {
				alert("결제수단을 입력해주세요.");
				$("#rsvpayyn").focus();
				return false;
			}
			
			var formdata = $('#frm, #frm2').serialize();
			
			$.ajax({
				type : "post",
				url	 : "roomReserveSave.do",
				data : formdata,
				
				datatype : "text",
				success : function(data) {
					if (data == "ok") {
						location = "mainpage.do"
					} else {
						alert("결제에 실패했습니다. 확인 후 다시 시도해 주세요.");
					}
				},
				error : function() {
					alert("잘못된 접근입니다.");
				}
			});
	});
});
</script>
<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    document.getElementById("defaultOpen").click();
</script>
<script>
    var modal = document.getElementById("myModal");

    var btn = document.getElementById("myBtn");

    var span = document.getElementsByClassName("close")[0];

    btn.onclick = function() {
        modal.style.display = "block";
    }

    span.onclick = function() {
        modal.style.display = "none";
    }

    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>