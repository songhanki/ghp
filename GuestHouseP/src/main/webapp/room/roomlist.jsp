<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a class="navbar-brand text-brand" href="homepage.do"><span class="color-b"><img src="images/hanintel-logo.png" alt="logo"></span></a>
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
                            <a class="dropdown-item" href="roomList.do">숙소검색</a>
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
            <form id="searchForm" name = "searchForm" method="post" action="roomSearchList.do">
                <div class="input-group">
                    <select class="custom-select mr-2" name="sloc" id="sloc">
                        <option selected value="all">지역</option>
                        <option value="서울"<c:if test="${sloc == '서울'}">selected</c:if>>서울</option>
                        <option value="경기"<c:if test="${sloc == '경기'}">selected</c:if>>경기</option>
                        <option value="강원"<c:if test="${sloc == '강원'}">selected</c:if>>강원</option>
                        <option value="충청남도"<c:if test="${sloc == '충청남도'}">selected</c:if>>충청남도</option>
                        <option value="충청북도"<c:if test="${sloc == '충청북도'}">selected</c:if>>충정북도</option>
                        <option value="경상북도"<c:if test="${sloc == '경상북도'}">selected</c:if>>경상북도</option>
                        <option value="경상남도"<c:if test="${sloc == '경상남도'}">selected</c:if>>경상남도</option>
                        <option value="전라북도"<c:if test="${sloc == '전라북도'}">selected</c:if>>전라북도</option>
                        <option value="전라남도"<c:if test="${sloc == '전라남도'}">selected</c:if>>전라남도</option>
                        <option value="제주도"<c:if test="${sloc == '제주도'}">selected</c:if>>제주도</option>
                    </select>
                    <div class="form-group">
			            <div class="input-daterange date" id="datepicker1" style="width: 320px; display: inline-table;">
			              <input type="text" class="form-control" id="from" name="from" style="width: 115px;" placeholder="숙박시작" />
			              <span style="display: table-cell; padding: 0px 30px;"> ~ </span>
			              <input type="text" class="form-control" id="to" name="to" style="width: 115px; border-radius: 3px 0 0 3px;" placeholder="숙박종료" />
			             </div>
		            </div>
                    <select class="custom-select mr-2" id="sperson" name="sperson">
                        <option selected>인원</option>
                        <option value="1"<c:if test="${sperson == '1'}">selected</c:if>>1</option>
                        <option value="2"<c:if test="${sperson == '2'}">selected</c:if>>2</option>
                        <option value="3"<c:if test="${sperson == '3'}">selected</c:if>>3</option>
                        <option value="4"<c:if test="${sperson == '4'}">selected</c:if>>4</option>
                        <option value="5"<c:if test="${sperson == '5'}">selected</c:if>>5</option>
                        <option value="6"<c:if test="${sperson == '6'}">selected</c:if>>6</option>
                        <option value="7"<c:if test="${sperson == '7'}">selected</c:if>>7</option>
                        <option value="8"<c:if test="${sperson == '8'}">selected</c:if>>8</option>
                    </select>
                    <input type="text" id="keyword" name="keyword" class="form-control" placeholder="Search..">
                    <div class="input-group-append">
                        <button class="btn btn-search" id="search" type="submit">검색</button>
                    </div>
                </div>
            </form>
        </section>
        <!--/ search box End /-->
        <section class="container">
            <div class="tab-manu">
                <ul class="d-flex">
                    <li class="flex-fill active">추천순</li>
                    <li class="flex-fill">후기 많은 순</li>
                    <li class="flex-fill">낮은 가격 순</li>
                    <li class="flex-fill">높은 가격 순</li>
                </ul>
            </div>
        </section>
        <!--/ tab manu End /-->
        <section class="container">
            <div id="btnContainer">
                <button class="btn active" onclick="gridView()"><i class="fa fa-th-large"></i> Grid</button>
                <button class="btn" onclick="listView()"><i class="fa fa-bars"></i> List</button>
            </div>
            <c:forEach var="result" items="${list }">
            <div class="row">
                <div class="column">
                    <div class="card">
                        <img class="card-img-top" src="images/sub-con-1.jpg" alt="Card image" style="width:100%">
                        <div class="card-body d-flex">
                            <a href="roomDetail.do?rmseq=${result.rmSeq }&rmloc=${sloc}&rmperson=${sperson}"><h4 class="card-title">${result.rmName }</h4></a>
                            <p class="card-text ml-auto">${result.rm_price }</p>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
            
            <c:set var="rownum" value="${rownum-1}" />
            
        </section>
        <!--/ content End /-->
        <section class="container mt-5 mb-5 pt-5 pb-5">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <c:forEach var="i" begin="1" end="${total_page }">
                <li class="page-item"><a class="page-link active" href="roomSearchList.do?page_no=${i }&sloc=${sloc }&sperson=${sperson }&keyword=${keyword}">${i }</a></li>
                </c:forEach>
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
    var elements = document.getElementsByClassName("column");

    var i;

    function listView() {
        for (i = 0; i < elements.length; i++) {
            elements[i].style.width = "100%";
        }
    }

    function gridView() {
        for (i = 0; i < elements.length; i++) {
            elements[i].style.width = "50%";
        }
    }

    var container = document.getElementById("btnContainer");
    var btns = container.getElementsByClassName("btn");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function() {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }
</script>