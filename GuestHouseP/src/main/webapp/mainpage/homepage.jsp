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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/owl.carousel.min.css" rel="stylesheet">
    <link href="../css/owl.theme.default.min.css" rel="stylesheet">
    <link href="../css/common.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">

    <!-- Main JS File -->
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="../js/popper.min.js" type="text/javascript"></script>
    <script src="../js/easing.min.js" type="text/javascript"></script>
    <script src="../js/scrollreveal.min.js" type="text/javascript"></script>
    <script src="../js/owlcarousel/owl.carousel.min.js" type="text/javascript"></script>
    <script src="../js/main.js" type="text/javascript"></script>

    <!-- Bootstrap CSS File -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap JS File -->
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>

<script>
    jQuery(document).ready(function($) {
        "use strict";
        $('#customers-testimonials').owlCarousel( {
            loop: true,
            center: true,
            items: 3,
            margin: 30,
            autoplay: true,
            dots:true,
            nav:true,
            autoplayTimeout: 8500,
            smartSpeed: 450,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1170: {
                    items: 3
                }
            }
        });
    });
</script> 
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
	

$( function() {
    var dateFormat = "mm/dd/yy",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 3
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
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
            <a class="navbar-brand text-brand" href="index.html"><span class="color-b"><img src="../images/hanintel-logo.png" alt="logo"></span></a>
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
                            <a class="dropdown-item" href="roomList.do">μμκ²μ</a>
                            <a class="dropdown-item" href="questionList.do">κ³ κ°μΌν°</a>
                            <a class="dropdown-item" href="noticeList.do">κ³΅μ§μ¬ν­</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                </ul>
            </div>
            <ul class="d-flex member-box">
                <li><a href="#">λ‘κ·ΈμΈ</a></li>
                <li><a href="#" class="d-none">λ‘κ·Έμμ</a></li><!-- λ‘κ·ΈμΈμ 'd-none' class μ κ±° -->
                <li><a href="#">νμκ°μ</a></li>
                <li><a href="#" class="d-none">λ§μ΄νμ΄μ§</a></li><!-- λ‘κ·ΈμΈμ 'd-none' class μ κ±° -->
            </ul>
        </div>
    </nav>
    <!--/ Nav End /-->

    <!--/ Carousel Start /-->
    <section class="testimonials">
        <div class="container">

            <div class="row">
                <div class="col-sm-12">
                    <div id="customers-testimonials" class="owl-carousel">

                        <!--TESTIMONIAL 1 -->
                        <div class="item">
                            <div class="shadow-effect">
                                <img class="img-responsive" src="../images/slide-1.jpg" alt="">
                                <div class="item-details">
                                    <h5>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€ <span>$70</span></h5>
                                    <p>*μμΉ¨μμ¬λ μ½λ‘λ19κ΄κ³λ‘μ κ³΅νμ§μμΌλ©°, μ£Όλ°©μμ€μμ¬μ©νμ€μμμ΅λλ€.</p>
                                </div>
                            </div>
                        </div>
                        <!--END OF TESTIMONIAL 1 -->
                        <!--TESTIMONIAL 2 -->
                        <div class="item">
                            <div class="shadow-effect">
                                <img class="img-responsive" src="../images/slide-2.jpg" alt="">
                                <div class="item-details">
                                    <h5>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€ <span>$70</span></h5>
                                    <p>*μμΉ¨μμ¬λ μ½λ‘λ19κ΄κ³λ‘μ κ³΅νμ§μμΌλ©°, μ£Όλ°©μμ€μμ¬μ©νμ€μμμ΅λλ€.</p>
                                </div>
                            </div>
                        </div>
                        <!--END OF TESTIMONIAL 2 -->
                        <!--TESTIMONIAL 3 -->
                        <div class="item">
                            <div class="shadow-effect">
                                <img class="img-responsive" src="../images/slide-3.jpg" alt="">
                                <div class="item-details">
                                    <h5>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€ <span>$70</span></h5>
                                    <p>*μμΉ¨μμ¬λ μ½λ‘λ19κ΄κ³λ‘μ κ³΅νμ§μμΌλ©°, μ£Όλ°©μμ€μμ¬μ©νμ€μμμ΅λλ€.</p>
                                </div>
                            </div>
                        </div>
                        <!--END OF TESTIMONIAL 3 -->
                        <!--TESTIMONIAL 4 -->
                        <div class="item">
                            <div class="shadow-effect">
                                <img class="img-responsive" src="../images/slide-4.jpg" alt="">
                                <div class="item-details">
                                    <h5>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€ <span>$70</span></h5>
                                    <p>*μμΉ¨μμ¬λ μ½λ‘λ19κ΄κ³λ‘μ κ³΅νμ§μμΌλ©°, μ£Όλ°©μμ€μμ¬μ©νμ€μμμ΅λλ€.</p>
                                </div>
                            </div>
                        </div>
                        <!--END OF TESTIMONIAL 4 -->
                        <!--TESTIMONIAL 5 -->
                        <div class="item">
                            <div class="shadow-effect">
                                <img class="img-responsive" src="../images/slide-5.jpg" alt="">
                                <div class="item-details">
                                    <h5>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€ <span>$70</span></h5>
                                    <p>*μμΉ¨μμ¬λ μ½λ‘λ19κ΄κ³λ‘μ κ³΅νμ§μμΌλ©°, μ£Όλ°©μμ€μμ¬μ©νμ€μμμ΅λλ€.</p>
                                </div>
                            </div>
                        </div>
                        <!--END OF TESTIMONIAL 5 -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ Carousel end /-->

    <!--/ Main content Start /-->
    <article id="main">
        <section class="container search-box">
            <p><img src="../images/your-location.png" alt="location icon" class="pr-1">μ  μΈκ³μ <strong>νμΈ μμ</strong>λ₯Ό <strong>κ²μ</strong>ν΄λ³΄μΈμ.</p>
            <form id="searchForm" name = "searchForm" method="post" action="roomSearchList.do">
                <div class="input-group">
                    <select class="custom-select mr-2" name="sloc" id="sloc">
                        <option selected value="all">μ§μ­</option>
                        <option value="μμΈ">μμΈ</option>
                        <option value="κ²½κΈ°">κ²½κΈ°</option>
                        <option value="κ°μ">κ°μ</option>
                        <option value="μΆ©μ²­λ¨λ">μΆ©μ²­λ¨λ</option>
                        <option value="μΆ©μ²­λΆλ">μΆ©μ λΆλ</option>
                        <option value="κ²½μλΆλ">κ²½μλΆλ</option>
                        <option value="κ²½μλ¨λ">κ²½μλ¨λ</option>
                        <option value="μ λΌλΆλ">μ λΌλΆλ</option>
                        <option value="μ λΌλ¨λ">μ λΌλ¨λ</option>
                        <option value="μ μ£Όλ">μ μ£Όλ</option>
                    </select>
                    <div class="form-group">
			            <div class="input-daterange date" id="datepicker1" style="width: 320px; display: inline-table;">
			              <input type="text" class="form-control" id="from" name="from" style="width: 115px;" placeholder="μλ°μμ" />
			              <span style="display: table-cell; padding: 0px 30px;"> ~ </span>
			              <input type="text" class="form-control" id="to" name="to" style="width: 115px; border-radius: 3px 0 0 3px;" placeholder="μλ°μ’λ£" />
			             </div>
		            </div>
                    <select class="custom-select mr-2" id="sperson" name="sperson">
                        <option selected value="9">μΈμ</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                    <input type="text" id="keyword" name="keyword" class="form-control" placeholder="Search..">
                    <div class="input-group-append">
                        <button class="btn btn-search" id="search" type="submit">κ²μ</button>
                    </div>
                </div>
                </form>
        </section>
        <!--/ best Travel Start /-->
        <section class="best-box group-content">
            <div class="container">
                <h3>νμΈνμ <strong>μΆμ²μμ</strong></h3>
                <div class="row modoom-wrap">
                    <div class="group-conbox text-center col-lg-3">
                        <a href="#" target="_blank">
                            <div class="group-con-img" style="background:url('../images/slide-1.jpg');">
                                <img src="images/best_icon.svg" width="50" height="40" class="bestIcon">
                                <div class="overlay">
                                    <div class="text">μμμ΄ κ°κ³ ν<br>κ²μ€νΈνμ°μ€</div>
                                </div>
                            </div>
                            <ul>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                            </ul>
                            <dl>
                                <dt>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€</dt>
                                <dd>$70</dd>
                            </dl>
                        </a>
                    </div>
                    <div class="group-conbox text-center col-lg-3">
                        <a href="#" target="_blank">
                            <div class="group-con-img" style="background:url('../images/slide-2.jpg')">
                                <img src="../images/best_icon.svg" width="50" height="40" class="bestIcon">
                                <div class="overlay">
                                    <div class="text">μμμ΄ κ°κ³ ν<br>κ²μ€νΈνμ°μ€</div>
                                </div>
                            </div>
                            <ul>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                            </ul>
                            <dl>
                                <dt>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€</dt>
                                <dd>$70</dd>
                            </dl>
                        </a>
                    </div>
                    <div class="group-conbox text-center col-lg-3">
                        <a href="#" target="_blank">
                            <div class="group-con-img" style="background:url('images/slide-3.jpg')">
                                <img src="../images/best_icon.svg" width="50" height="40" class="bestIcon">
                                <div class="overlay">
                                    <div class="text">μμμ΄ κ°κ³ ν<br>κ²μ€νΈνμ°μ€</div>
                                </div>
                            </div>
                            <ul>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                            </ul>
                            <dl>
                                <dt>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€</dt>
                                <dd>$70</dd>
                            </dl>
                        </a>
                    </div>
                    <div class="group-conbox text-center col-lg-3">
                        <a href="#" target="_blank">
                            <div class="group-con-img" style="background:url('../images/slide-4.jpg')">
                                <img src="../images/best_icon.svg" width="50" height="40" class="bestIcon">
                                <div class="overlay">
                                    <div class="text">μμμ΄ κ°κ³ ν<br>κ²μ€νΈνμ°μ€</div>
                                </div>
                            </div>
                            <ul>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                                <li><img src="../images/favourites.png" alt="best icon"></li>
                            </ul>
                            <dl>
                                <dt>μμμ΄ κ°κ³ νκ²μ€νΈνμ°μ€</dt>
                                <dd>$70</dd>
                            </dl>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!--/ best Travel End /-->
        <!--/ info Start /-->
        <section class="mainBot">
            <div class="container">
                <div class="mbWrap">
                    <div class="mbBox">
                        <div class="mbTitle">
                            <h4>μ¬ννκΈ°</h4>
                            <a href="#">λλ³΄κΈ°</a>
                        </div>
                        <c:forEach var="trinfo" items="${info }" >
                        <ul class="mbList">
                            <li><a href="#"> <span class="mbNoti">New</span>${trinfo.tititle }</a></li>
                        </ul>
                        </c:forEach>
                    </div><!-- mbBox -->
                    <div class="mbBox">
                        <div class="mbTitle">
                            <h4>μ¬νμ§μ λ³΄</h4>
                            <a href="">λλ³΄κΈ°</a>
                        </div>
                        <c:forEach var="trreview" items="${review }" >
                        <ul class="mbList">
                            <li><a href="#"><span class="mbNoti">New</span>${trreview.trtitle }</a></li>
                        </ul>
                        </c:forEach>
                    </div><!-- mbBox -->
                    <div class="mbBox">
                        <div class="mbTitle">
                            <h4>κ³ κ°μΌν°</h4>
                        </div>
                        <div class="mbCs">
                            <h5>1544-3211</h5>
                            <a href="#">κ°λ³μ§μ¬ μ°λ½μ²</a>
                        </div>
                    </div><!-- mbBox -->
                </div><!-- mbWrap -->
            </div>
        </section>
        <!--/ info Travel End /-->
        <!--/ bottom bar Start /-->
        <section class="bottom-bar">
            <div class="container">
                <ul class="d-flex justify-content-center mb-0">
                    <li><a href="#">κ°μΈμ λ³΄μ²λ¦¬λ°©μΉ¨</a></li>
                    <li><a href="#">μ΄μ©μ½κ΄/κ·μΉ</a></li>
                </ul>
            </div>
        </section>
        <!--/ bottom bar End /-->
        <footer>
            <div class="container team">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="card">
                            <img class="card-img-top" src="../images/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">μ μ¬ν¬</h4>
                                <p class="card-text">000-0000-0000</p>
                                <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                            </div>
                        </div>
                    </div>	
                    <div class="col-lg-3">
                        <div class="card">
                            <img class="card-img-top" src="../images/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">μ‘νκΈ°</h4>
                                <p class="card-text">000-0000-0000</p>
                                <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <img class="card-img-top" src="../images/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">μ€μμ</h4>
                                <p class="card-text">000-0000-0000</p>
                                <a href="#" class="btn btn-block btn-secondary">aaa@aaa.com</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card">
                            <img class="card-img-top" src="../images/img_avatar1.png" alt="Card image" style="width:100%">
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
    </article>
    <!--/ Main content End /-->
</body>
</html>