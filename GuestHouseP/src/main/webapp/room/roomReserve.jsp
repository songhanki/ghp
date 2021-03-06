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
    <title>Hanintel | νμΈν</title>
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
                            <a class="dropdown-item" href="#">νκΈ°</a>
                            <a class="dropdown-item" href="#">μ λ³΄</a>
                            <a class="dropdown-item" href="#">μ§λ</a>
                            <a class="dropdown-item" href="lodging.html">μμκ²μ</a>
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
                            <a class="dropdown-item" href="customer.html">κ³ κ°μΌν°</a>
                            <a class="dropdown-item" href="#">κ³΅μ§μ¬ν­</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                </ul>
            </div>
            <ul class="d-flex member-box">
                <li><a href="lodging_detail.html">λ‘κ·ΈμΈ</a></li>
                <li><a href="#" class="d-none">λ‘κ·Έμμ</a></li><!-- λ‘κ·ΈμΈμ 'd-none' class μ κ±° -->
                <li><a href="lodging_detail.html">νμκ°μ</a></li>
                <li><a href="#" class="d-none">λ§μ΄νμ΄μ§</a></li><!-- λ‘κ·ΈμΈμ 'd-none' class μ κ±° -->
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
            <h3>λ¬ λ£Έ</h3>
            <form class="d-flex" id="frm" name="frm">
                <div class="form-group flex-fill pr-2">
                    <label>λ μ§:</label>
                    <input type="text" class="form-control" id="rsvsdate" name="rsvsdate" style="width: 115px;" placeholder="μλ°μμ" />
                </div>
                <div class="form-group flex-fill pr-2">
                    <label>λ μ§:</label>
                    <input type="text" class="form-control" id="rsvedate" name="rsvedate" style="width: 115px; border-radius: 3px 0 0 3px;" placeholder="μλ°μ’λ£" />
                </div>
                <div class="form-group flex-fill">
                    <label>μΈμ:</label>
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
        </section><!-- end λ μ§ λ° μΈμ μ ν -->
        <section class="container">
            <div class="d-flex reservation-result">
                <div class="flex-fill">
                    <ul class="mb-0">
                        <li>1λ° μλ°λΉ $100,000</li>
                        <li>μ΄ 1 λ°</li>
                    </ul>
                </div>
                <div class="flex-fill pt-2">
                    <p class="text-right">ν©κ³: $100,000</p>
                </div>
            </div>
        </section><!-- end -->
        <section class="container reservation-info">
        <form class="d-flex" id="frm2" name="frm2">
            <h4>μμ½μμ λ³΄</h4>
                <div class="form-group flex-fill pr-2">
                    <label>μμ½μμ΄λ¦ :</label>
                    <input type="text" class="form-control" id="rsvname" name="rsvname">
                </div>
                <div class="form-group flex-fill pr-2">
                    <label>νΈλν°λ²νΈ :</label>
                    <input type="text" class="form-control" placeholder="'-'μμ΄ μλ ₯" id="rsvphone" name="rsvphone">
                </div>
                <div class="form-group flex-fill">
                    <label>κ²°μ μλ¨ :</label>
                    <select class="form-control" id="rsvpayyn" name="rsvpayyn">
                        <option value="μΉ΄λ">μΉ΄λ</option>
                        <option value="κ³μ’μ΄μ²΄">κ³μ’μ΄μ²΄</option>
                    </select>
                </div>
        </form>
        </section><!-- end μμ½μμ λ³΄ -->
        <section class="container reservation-check">
            <h4>μμ½νμΈ</h4>
            <ul class="mb-0">
                <li>μμμ΄λ¦: aaμμ</li>
                <li>κ°μ€: λ¬λ£Έ</li>
                <li>μ²΄ν¬μΈ: 2021-10-08</li>
                <li>μ²΄ν¬μμ: 2021-10-09</li>
                <li>(μ΄ 1λ°)</li>
            </ul>
        </section><!-- end μμ½νμΈ -->
        <div class="container text-center">
            <button id="myBtn" name="myBtn" class="btn btn-lg btn-reservation">μ§κΈμμ½</button>
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
                            <h4 class="card-title">μ μ¬ν¬</h4>
                            <p class="card-text">000-0000-0000</p>
                            <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">μ‘νκΈ°</h4>
                            <p class="card-text">000-0000-0000</p>
                            <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">μ€μμ</h4>
                            <p class="card-text">000-0000-0000</p>
                            <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card">
                        <img class="card-img-top" src="images/img_avatar1.png" alt="Card image" style="width:100%">
                        <div class="card-body">
                            <h4 class="card-title">μ΅μ©μ±</h4>
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

<!-- μμ½λ΄μ­ νμΈ popup -->
<div id="myModal" class="modal">
    <div class="container">
        <!-- μμ½λ΄μ­ νμΈ content -->
        <div class="modal-content">
            <div class="modal-header">
                <h2>μμ½λ΄μ­ νμΈ</h2>
                <span class="close">&times;</span>
            </div>
            <div class="modal-body">
                <h3>μμ½λ΄μ­ νμΈ</h3>
                <ul class="mb-0">
                    <li>aaμμ</li>
                    <li>λ¬λ£Έ / 1λ°</li>
                </ul>
                <hr>
                <dl>
                    <dt>μ²΄ν¬μΈ</dt>
                    <dd>10.08</dd>
                    <dt>μ²΄ν¬μμ</dt>
                    <dd>10.09</dd>
                </dl>
                <hr>
                <p><span>μ·¨μ λ° νλΆ κ·μ </span>μ λ°λΌ μ·¨μμμλ£ λΆκ³Ό λ° λΆκ° λ  μ μμ΅λλ€</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-lg btn-reservation">κ²°μ νκΈ°</button>
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
				alert("μλ°μμ λ μ§λ₯Ό μλ ₯ν΄μ£ΌμΈμ.");
				$("#rsvsdate").focus();
				return false;
			}
			
			if($("#rsvedate").val() == "" ) {
				alert("μλ°μ’λ£ λ μ§λ₯Ό μλ ₯ν΄μ£ΌμΈμ.");
				$("#rsvedate").focus();
				return false;
			}
			
			if($("#rsvperson").val() == "" ) {
				alert("μλ°μΈμμ μλ ₯ν΄μ£ΌμΈμ.");
				$("#rsvperson").focus();
				return false;
			}
			
			if($("#rsvname").val() == "" ) {
				alert("μ΄λ¦μ μλ ₯ν΄μ£ΌμΈμ.");
				$("#rsvperson").focus();
				return false;
			}
			
			if($("#rsvphone").val() == "" ) {
				alert("μ°λ½μ²λ₯Ό μλ ₯ν΄μ£ΌμΈμ.");
				$("#rsvphone").focus();
				return false;
			}
			
			if($("#rsvpayyn").val() == "" ) {
				alert("κ²°μ μλ¨μ μλ ₯ν΄μ£ΌμΈμ.");
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
						alert("κ²°μ μ μ€ν¨νμ΅λλ€. νμΈ ν λ€μ μλν΄ μ£ΌμΈμ.");
					}
				},
				error : function() {
					alert("μλͺ»λ μ κ·Όμλλ€.");
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