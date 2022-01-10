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
                <li><a href="lodging_detail.html">로그인</a></li>
                <li><a href="#" class="d-none">로그아웃</a></li><!-- 로그인시 'd-none' class 제거 -->
                <li><a href="lodging_detail.html">회원가입</a></li>
                <li><a href="#" class="d-none">마이페이지</a></li><!-- 로그인시 'd-none' class 제거 -->
            </ul>
        </div>
    </nav>
    <!--/ Nav End /-->

    <!--/ Sub content Start /-->
    <article id="sub">
        <!--/ sub visual Start /-->
        <section class="sub-visual">
            <img src="images/sub-visual.jpg" alt="sub visual" class="img-fluid">
            <div class="container">
                <ul class="sub-visual-text">
                    <li>Welcome! hanintel</li>
                    <li><strong>숙소</strong>를 <strong>검색</strong> 하세요.</li>
                </ul>
            </div>
        </section>
        <!--/ sub visual End /-->
        <section class="container search-box">
            <form>
                <div class="input-group">
                    <select class="custom-select mr-2">
                        <option selected>도시</option>
                        <option>서울</option>
                        <option>부산</option>
                    </select>
                    <select class="custom-select mr-2">
                        <option selected>날짜</option>
                        <option>2021-11-07~08</option>
                        <option>2021-11-08~09</option>
                    </select>
                    <select class="custom-select mr-2">
                        <option selected>인원</option>
                        <option>인원</option>
                        <option>인원</option>
                        <option>인원</option>
                    </select>
                    <input type="text" class="form-control" placeholder="Search..">
                    <div class="input-group-append">
                        <button class="btn btn-search" type="submit">검색</button>
                    </div>
                </div>
            </form>
        </section>
        <!--/ search box End /-->
        <section class="container lodging">
            <ul class="tab d-flex">
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab1')" id="defaultOpen">추천순</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab2')">후기 많은 순</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab3')">낮은 가격 순</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab4')">높은 가격 순</li>
            </ul>

            <!-- start content -->
            <div id="tab1" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명 숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명 숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명 숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명 숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명 숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
            </div><!-- end 추천순 -->
            <div id="tab2" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
            </div><!-- end 후기 많은 순 -->
            <div id="tab3" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
            </div><!-- end 낮은 가격 순 -->
            <div id="tab4" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="숙소 사진" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>숙소 이름</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">숙소 위치</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">숙소 설명</dd>
                            </dl>
                            <p>숙소 가격</p>
                        </div>
                    </div>
                </a>
            </div><!-- end 높은 가격 순 -->
        </section>
        <!--/ content End /-->
        <section class="container mt-5 mb-5 pt-5 pb-5">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link active" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">6</a></li>
                <li class="page-item"><a class="page-link" href="#">7</a></li>
                <li class="page-item"><a class="page-link" href="#">8</a></li>
                <li class="page-item"><a class="page-link" href="#">9</a></li>
                <li class="page-item"><a class="page-link" href="#">10</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </section>
        <!--/ pagination End /-->
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
    <!--/ Sub content End /-->
</body>
</html>

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