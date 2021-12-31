<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="./admin/js/roomList.js" ></script>
<link href="admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Project name</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav">
		      <li class="nav-item active">
		        <a class="nav-link" href="/UserSleepList.do">회원휴면관리 </a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="/RoomList.do">숙소관리</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="#">예약관리</a>
		      </li>		      
		      <li class="nav-item active">
		        <a class="nav-link" href="#">QnA답변</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="#">이벤트관리</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="#">회원탈퇴관리</a>
		      </li>
    		  <li class="nav-item">
		        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">통계</a>
		      </li>
		    </ul>
		  </div>
      </nav>
      <div>
		<select></select>
		<input type="text" />
		<input type="button" value="검색"/>
	</div>
	<div>
	
	<button type="button" id="btn_create_room" class="btn btn-primary" onclick="go_create();">등록하기</button>
	
	</div>
	<div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">숙소명</th>
					<th scope="col">예약호실 리스트</th>
					<th scope="col">숙소위치</th>
					<th scope="col">숙소 연락처</th>
					<th scope="col">가격</th>
				</tr>
			</thead>
			<tbody>
			
	  			<c:forEach var="result" items="${result}" varStatus="status">
				<tr onClick="location.href='room/DetailRoom.do?rm_name=${result.rmName}'">
				<!-- <tr onClick="toDetail('${result.rmName}')"> -->
				
					<th scope="row">${status.index+1 }</th>
					<td>${result.rmName}</td>
					<td>
						<c:forEach var="rmRoom" items="${result.rmRoom}" varStatus="status1">
							${rmRoom.rmRoom}
						</c:forEach>
					</td>
					<td>${result.rmLoc}</td>
					<td>${result.rmPhone}</td>
					<td>${result.minPrice} ~ ${result.maxPrice}</td>
				</tr>
	  			</c:forEach>
	
				
			</tbody>
		</table>
	</div>
</div>
</body>
</html>