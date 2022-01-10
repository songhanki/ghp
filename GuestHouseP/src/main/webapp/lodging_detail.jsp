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
                            <a class="dropdown-item" href="lodging.html">숙소검색</a>
                            <a class="dropdown-item" href="#">고객센터</a>
                            <a class="dropdown-item" href="#">공지사항</a>
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

    <!--/ Sub content Start /-->
    <article id="sub" class="lodging_detail">
        <section class="container">
            <div class="mySlides">
                <div class="numbertext">1 / 6</div>
                <img src="images/img_woods_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
                <div class="numbertext">2 / 6</div>
                <img src="images/img_5terre_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
                <div class="numbertext">3 / 6</div>
                <img src="images/img_mountains_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
                <div class="numbertext">4 / 6</div>
                <img src="images/img_lights_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
                <div class="numbertext">5 / 6</div>
                <img src="images/img_nature_wide.jpg" style="width:100%">
            </div>

            <div class="mySlides">
                <div class="numbertext">6 / 6</div>
                <img src="images/img_snow_wide.jpg" style="width:100%">
            </div>

            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>

            <div class="caption-container">
                <p id="caption"></p>
            </div>

            <div class="row">
                <div class="column">
                    <img class="demo cursor" src="images/img_woods.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
                </div>
                <div class="column">
                    <img class="demo cursor" src="images/img_5terre.jpg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
                </div>
                <div class="column">
                    <img class="demo cursor" src="images/img_mountains.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
                </div>
                <div class="column">
                    <img class="demo cursor" src="images/img_lights.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
                </div>
                <div class="column">
                    <img class="demo cursor" src="images/img_nature.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
                </div>
                <div class="column">
                    <img class="demo cursor" src="images/img_snow.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
                </div>
            </div>
        </section>
        <!-- end 숙소사진 -->
        <section class="container d-flex name-number">
            <h3>숙소이름</h3>
            <p class="ml-auto">9.9(10점만점)</p>
        </section>
        <!-- end 숙소이름 -->
        <section class="container lodging_info">
            <ul class="tab d-flex">
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab1')" id="defaultOpen">숙소소개</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab2')">이용안내 및 공지</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab3')">환불규정</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab4')">위치</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab5')">이용후기</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab6')">Q&amp;A</li>
            </ul>

            <!-- start content -->
            <div id="tab1" class="tabcontent">
                <p>저희 숙소는
                   <br>
                   ~~~~~~~~~~~~~~~~~~~~~~ 입니다.</p>
                <div class="row lodging-introduce">
                    <div class="col-lg-4 pl-0"><img src="images/lodging.jpg" alt="숙소 이미지" class="img-fluid"></div>
                    <div class="col-lg-8">
                        <div class="d-flex lodging-content">
                            <div class="flex-fill">
                                <dl>
                                    <dt>달 룸</dt>
                                    <dd>기본 1박 이상</dd>
                                    <dd>3인실</dd>
                                </dl>
                            </div>
                            <div class="flex-fill text-right pt-4">
                                <p>$120,000~</p>
                            </div>
                            <div class="flex-fill text-right pt-3"><a href="lodging_reservation.html" class="btn btn-reservation">예약하기</a></div>
                        </div>
                    </div>
                </div>
                <div class="row lodging-introduce">
                    <div class="col-lg-4 pl-0"><img src="images/lodging.jpg" alt="숙소 이미지" class="img-fluid"></div>
                    <div class="col-lg-8">
                        <div class="d-flex lodging-content">
                            <div class="flex-fill">
                                <dl>
                                    <dt>해 룸</dt>
                                    <dd>기본 1박 이상</dd>
                                    <dd>3인실</dd>
                                </dl>
                            </div>
                            <div class="flex-fill text-right pt-4">
                                <p>$120,000~</p>
                            </div>
                            <div class="flex-fill text-right pt-3"><a href="lodging_reservation.html" class="btn btn-reservation">예약하기</a></div>
                        </div>
                    </div>
                </div>
                <div class="row lodging-introduce">
                    <div class="col-lg-4 pl-0"><img src="images/lodging.jpg" alt="숙소 이미지" class="img-fluid"></div>
                    <div class="col-lg-8">
                        <div class="d-flex lodging-content">
                            <div class="flex-fill">
                                <dl>
                                    <dt>별 룸</dt>
                                    <dd>기본 1박 이상</dd>
                                    <dd>3인실</dd>
                                </dl>
                            </div>
                            <div class="flex-fill text-right pt-4">
                                <p>$120,000~</p>
                            </div>
                            <div class="flex-fill text-right pt-3"><a href="lodging_reservation.html" class="btn btn-reservation">예약하기</a></div>
                        </div>
                    </div>
                </div>
                <div class="row lodging-introduce">
                    <div class="col-lg-4 pl-0"><img src="images/lodging.jpg" alt="숙소 이미지" class="img-fluid"></div>
                    <div class="col-lg-8">
                        <div class="d-flex lodging-content">
                            <div class="flex-fill">
                                <dl>
                                    <dt>구름 룸</dt>
                                    <dd>기본 1박 이상</dd>
                                    <dd>3인실</dd>
                                </dl>
                            </div>
                            <div class="flex-fill text-right pt-4">
                                <p>$120,000~</p>
                            </div>
                            <div class="flex-fill text-right pt-3"><a href="lodging_reservation.html" class="btn btn-reservation">예약하기</a></div>
                        </div>
                    </div>
                </div>
            </div><!-- end 숙소소개 -->
            <div id="tab2" class="tabcontent">
                <p>이용안내 및 공지
                    <br>
                    ~~~~~~~~~~~~~~~~~~~~~~ 입니다.</p>
            </div><!-- end 이용안내 및 공지 -->
            <div id="tab3" class="tabcontent">
                <p>환불규정
                    <br>
                    ~~~~~~~~~~~~~~~~~~~~~~ 입니다.</p>
            </div><!-- end 환불규정 -->
            <div id="tab4" class="tabcontent">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3164.8527241841816!2d127.1128728153101!3d37.51139157980834!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca57757ca2e4f%3A0x4d0dbcb45c3632e6!2z7ISc7Jq47Yq567OE7IucIOyGoe2MjOq1rCDrsKnsnbTrj5kg7Jik6riI66GcMjHquLggMjM!5e0!3m2!1sko!2skr!4v1636814764877!5m2!1sko!2skr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div><!-- end 위치 -->
            <div id="tab5" class="tabcontent">
                <h4>20개 이용후기 <span>직접 이용한 사용자가 작성한 후기 입니다.</span></h4>
                <div class="d-flex review">
                    <dl>
                        <dt>a** 달 룸</dt>
                        <dd>투숙일: 2021/08/01~2021/08/02</dd>
                        <dd>작성일: 2021/08/10</dd>
                        <dd>위치도 주인도 너무 좋았습니다.</dd>
                    </dl>
                    <p class="ml-auto">10점</p>
                </div>
                <div class="d-flex review">
                    <dl>
                        <dt>b** 구름 룸</dt>
                        <dd>투숙일: 2021/07/01~2021/07/02</dd>
                        <dd>작성일: 2021/07/13</dd>
                        <dd>위치도 주인도 너무 좋았습니다.</dd>
                    </dl>
                    <p class="ml-auto">8점</p>
                </div>
                <div class="d-flex review">
                    <dl>
                        <dt>c** 해 룸</dt>
                        <dd>투숙일: 2021/06/01~2021/06/02</dd>
                        <dd>작성일: 2021/06/15</dd>
                        <dd>위치도 주인도 너무 좋았습니다.</dd>
                    </dl>
                    <p class="ml-auto">7점</p>
                </div>
            </div><!-- end 이용후기 -->
            <div id="tab6" class="tabcontent">
                <form class="form-box">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">user ID</span><!-- 로그인시 자동 아이디 입력 // 비회원 글 작성 안됨 -->
                        </div>
                        <input type="text" class="form-control" placeholder="Username">
                        <div class="input-group-append">
                            <button class="btn btn-secondary" type="submit">글쓰기</button>
                        </div>
                    </div>
                    <textarea rows="5" class="form-control" placeholder="질문을 입력하세요."></textarea>
                </form>
                <div class="row margin">
                    <div class="col-lg-6">
                        <div class="question-answer">
                            <dl>
                                <dt>홍길동  2021.10.07</dt>
                                <dd>예약확인은 되었는데 결제가 되었는지 궁금합니다.</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="question-answer">
                            <dl>
                                <dt>관리자  2021.10.08</dt>
                                <dd>
                                    안녕하세요 고객님<br>
                                    지금 결제 확인 중 입니다.<br>
                                    감사합니다.
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div><!-- end Q&A list -->
            </div><!-- end Q&A -->

        </section>
        <!-- end 숙소소개 -->
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

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        captionText.innerHTML = dots[slideIndex-1].alt;
    }
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