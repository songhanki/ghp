<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li><a href="#">λ‘κ·ΈμΈ</a></li>
                <li><a href="#" class="d-none">λ‘κ·Έμμ</a></li><!-- λ‘κ·ΈμΈμ 'd-none' class μ κ±° -->
                <li><a href="#">νμκ°μ</a></li>
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
            <form id="searchForm" name = "searchForm" method="post" action="roomSearchList.do">
                <div class="input-group">
                    <select class="custom-select mr-2" name="sloc" id="sloc">
                        <option selected value="all">μ§μ­</option>
                        <option value="μμΈ"<c:if test="${sloc == 'μμΈ'}">selected</c:if>>μμΈ</option>
                        <option value="κ²½κΈ°"<c:if test="${sloc == 'κ²½κΈ°'}">selected</c:if>>κ²½κΈ°</option>
                        <option value="κ°μ"<c:if test="${sloc == 'κ°μ'}">selected</c:if>>κ°μ</option>
                        <option value="μΆ©μ²­λ¨λ"<c:if test="${sloc == 'μΆ©μ²­λ¨λ'}">selected</c:if>>μΆ©μ²­λ¨λ</option>
                        <option value="μΆ©μ²­λΆλ"<c:if test="${sloc == 'μΆ©μ²­λΆλ'}">selected</c:if>>μΆ©μ λΆλ</option>
                        <option value="κ²½μλΆλ"<c:if test="${sloc == 'κ²½μλΆλ'}">selected</c:if>>κ²½μλΆλ</option>
                        <option value="κ²½μλ¨λ"<c:if test="${sloc == 'κ²½μλ¨λ'}">selected</c:if>>κ²½μλ¨λ</option>
                        <option value="μ λΌλΆλ"<c:if test="${sloc == 'μ λΌλΆλ'}">selected</c:if>>μ λΌλΆλ</option>
                        <option value="μ λΌλ¨λ"<c:if test="${sloc == 'μ λΌλ¨λ'}">selected</c:if>>μ λΌλ¨λ</option>
                        <option value="μ μ£Όλ"<c:if test="${sloc == 'μ μ£Όλ'}">selected</c:if>>μ μ£Όλ</option>
                    </select>
                    <div class="form-group">
			            <div class="input-daterange date" id="datepicker1" style="width: 320px; display: inline-table;">
			              <input type="text" class="form-control" id="from" name="from" style="width: 115px;" placeholder="μλ°μμ" />
			              <span style="display: table-cell; padding: 0px 30px;"> ~ </span>
			              <input type="text" class="form-control" id="to" name="to" style="width: 115px; border-radius: 3px 0 0 3px;" placeholder="μλ°μ’λ£" />
			             </div>
		            </div>
                    <select class="custom-select mr-2" id="sperson" name="sperson">
                        <option selected>μΈμ</option>
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
                        <button class="btn btn-search" id="search" type="submit">κ²μ</button>
                    </div>
                </div>
            </form>
        </section>
        <!--/ search box End /-->
        <section class="container">
            <div class="tab-manu">
                <ul class="d-flex">
                    <li class="flex-fill active">μΆμ²μ</li>
                    <li class="flex-fill">νκΈ° λ§μ μ</li>
                    <li class="flex-fill">λ?μ κ°κ²© μ</li>
                    <li class="flex-fill">λμ κ°κ²© μ</li>
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