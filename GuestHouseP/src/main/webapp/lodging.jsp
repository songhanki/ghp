<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <a class="dropdown-item" href="lodging.html">μμκ²μ</a>
                            <a class="dropdown-item" href="#">κ³ κ°μΌν°</a>
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
    <article id="sub">
        <!--/ sub visual Start /-->
        <section class="sub-visual">
            <img src="images/sub-visual.jpg" alt="sub visual" class="img-fluid">
            <div class="container">
                <ul class="sub-visual-text">
                    <li>Welcome! hanintel</li>
                    <li><strong>μμ</strong>λ₯Ό <strong>κ²μ</strong> νμΈμ.</li>
                </ul>
            </div>
        </section>
        <!--/ sub visual End /-->
        <section class="container search-box">
            <form>
                <div class="input-group">
                    <select class="custom-select mr-2">
                        <option selected>λμ</option>
                        <option>μμΈ</option>
                        <option>λΆμ°</option>
                    </select>
                    <select class="custom-select mr-2">
                        <option selected>λ μ§</option>
                        <option>2021-11-07~08</option>
                        <option>2021-11-08~09</option>
                    </select>
                    <select class="custom-select mr-2">
                        <option selected>μΈμ</option>
                        <option>μΈμ</option>
                        <option>μΈμ</option>
                        <option>μΈμ</option>
                    </select>
                    <input type="text" class="form-control" placeholder="Search..">
                    <div class="input-group-append">
                        <button class="btn btn-search" type="submit">κ²μ</button>
                    </div>
                </div>
            </form>
        </section>
        <!--/ search box End /-->
        <section class="container lodging">
            <ul class="tab d-flex">
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab1')" id="defaultOpen">μΆμ²μ</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab2')">νκΈ° λ§μ μ</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab3')">λ?μ κ°κ²© μ</li>
                <li class="tablinks flex-fill" onclick="openCity(event, 'tab4')">λμ κ°κ²© μ</li>
            </ul>

            <!-- start content -->
            <div id="tab1" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ μμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ μμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ μμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ μμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ μμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺμμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
            </div><!-- end μΆμ²μ -->
            <div id="tab2" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img02.jpeg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
            </div><!-- end νκΈ° λ§μ μ -->
            <div id="tab3" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img03.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
            </div><!-- end λ?μ κ°κ²© μ -->
            <div id="tab4" class="tabcontent">
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
                <a href="lodging_detail.html">
                    <div class="row content">
                        <div class="col-lg-3 left-content">
                            <img src="images/lodging-img04.jpg" alt="μμ μ¬μ§" class="img-fluid">
                        </div>
                        <div class="col-lg-9 right-content">
                            <dl>
                                <dt>μμ μ΄λ¦</dt>
                                <dd><img src="images/your-location.png" alt="icon" class="pr-2">μμ μμΉ</dd>
                                <dd><img src="images/accomodation.png" alt="icon" class="pr-2">μμ μ€λͺ</dd>
                            </dl>
                            <p>μμ κ°κ²©</p>
                        </div>
                    </div>
                </a>
            </div><!-- end λμ κ°κ²© μ -->
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