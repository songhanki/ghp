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
    <link href="css/customer.css" rel="stylesheet">

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
                        <a class="dropdown-item" href="notice.html">κ³΅μ§μ¬ν­</a>
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

<!--/ Start κ³ κ°μΌν° /-->
<article id="sub">
    <!--/ sub visual Start /-->
    <section class="sub-visual">
        <img src="images/sub-visual.jpg" alt="sub visual" class="img-fluid">
        <div class="container">
            <ul class="sub-visual-text">
                <li>Welcome! hanintel</li>
                <li><strong>μμ£Ό λ¬»λ μ§λ¬Έ</strong></li>
            </ul>
        </div>
    </section>
    <!--/ sub visual End /-->
    <section class="container customer">
    <form name="frm" method="post" id="frm">
        <ul class="tab d-flex">
            <li class="tablinks flex-fill active" onclick="openCity(event, 'tab1')" id="category" value="A">μμ½ κ΄λ ¨</li>
            <li class="tablinks flex-fill" onclick="openCity(event, 'tab2')" id="category" value="B">κ²°μ  κ΄λ ¨</li>
            <li class="tablinks flex-fill" onclick="openCity(event, 'tab3')" id="category" value="C">μ·¨μ/λ³κ²½/νλΆ</li>
        </ul>
    </form>
        <div id="tab1" class="tabcontent">
        	<c:forEach var="result" items="${list }">
            <button class="accordion">${result.faqTitle }</button>
            <div class="panel">
                <p>${result.faqComment }</p>
            </div><!-- end -->
            </c:forEach>
        </div>
        
        <!-- end tab1 -->
        <div id="tab2" class="tabcontent">
        	<c:forEach var="result" items="${list }">
            <button class="accordion">${result.faqTitle }</button>
            <div class="panel">
                <p>${result.faqComment }</p>
        	</div><!-- end -->
            </c:forEach>
        </div>
        <!-- end tab2 -->
        <div id="tab3" class="tabcontent">
        	<c:forEach var="result" items="${list }">
            <button class="accordion">${result.faqTitle }</button>
            <div class="panel">
                <p>${result.faqComment }</p>
        	</div><!-- end -->
            </c:forEach>
        </div>
        <!-- end tab3 -->
    </section>
    <!--/ content End /-->
    <div class="container text-right pt-3">
        <a href="question.do" class="btn btn-secondary">λ¬ΈμνκΈ°</a>
    </div>
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
<!--/ End κ³ κ°μΌν° /-->
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

//    document.getElementById("faqcategory").click();
</script>

<script>
    var acc = document.getElementsByClassName("accordion");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
                panel.style.display = "none";
            } else {
                panel.style.display = "block";
            }
        });
    }
</script>

<script>
$(function(){
	$("#category").click(function(){
		var item = $("#category").val();
		$.ajax({
			type : "post",
			url : "questionList.do",
			data : "item="+item,
			datatype : 'text',
			success : function(data) {
			},
			error : function(data) {
				alert("μλͺ»λ μ κ·Όμλλ€.");
			}
		});
	});
});
</script>