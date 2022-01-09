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
<script type="text/javascript" src="./admin/js/eventCommon.js" ></script>
<link href="admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title>이벤트 관리</title>
</head>
<div class="container">
	<div>
		<%@ include file="./common/adm_nav.jsp" %>
	</div>
  	<div style="margin-bottom:10px;float:left; text-align:left; width:500px;">
  		<form name="frm" method="post" action=".do">
  		<select name="s_field" >
  			<option value="rm_name" <c:if test="${s_field=='rm_name'}">selected</c:if> >숙소명</option>
  			<option value="rm_loc" <c:if test="${s_field=='rm_loc'}">selected</c:if> >숙소위치</option>
  			<option value="rm_phone" <c:if test="${s_field=='rm_phone'}">selected</c:if> >연락처</option>
  		</select>
  		<input type="text" name="s_text" value="${s_text}">
  		<button type="submit" class="btn btn-primary">검색</button>
  		
  		</form>
  	</div>
	<div>
		<div style="margin-bottom:10px;float:right; text-align:right; width:500px;">
			<button type="button" id="btn_create_event" class="btn btn-primary" onclick="go_create();">등록하기</button>
			<button type="button" id="btn_update_event" class="btn btn-primary" onclick="go_update();">수정하기</button>
			<button type="button" id="btn_delete_event" class="btn btn-warning" onclick="go_delete();">삭제하기</button>
		</div>
	</div>
	<div>
		<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">선택</th>
				<th scope="col">이벤트 제목</th>
				<th scope="col">등록자</th>
				<th scope="col">이벤트기간</th>
				<th scope="col">상태</th>
			</tr>
		</thead>
		<tbody>
  			<c:forEach var="result" items="${result}" varStatus="status">
			<tr onClick="location.href='event/DetailEvent.do?ev_seq=${result.ev_seq}'"> 
				<th scope="row">${status.index+1 }</th>
				<td>${result.ev_title}</td>
				<td>${result.ev_writer}</td>
				<td>${result.ev_sdate} ~ ${result.ev_edate}</td>
				<td> 
					<c:if test="${result.ev_state=='A'}">대기중</c:if>
					<c:if test="${result.ev_state=='E'}">종료</c:if>
					<c:if test="${result.ev_state=='I'}">진행중</c:if>
				</td>
			</tr>

			</c:forEach>
		</tbody>
	</table>
		  	<div style="width:700px;margin-left:10px; margin-top:10px; text-align:center;">
	  			<!-- 
	  			<c:forEach var="i" begin="1" end="${vo.total_page }">
	  				<a href="anboardList.do?page_no=${i}">${i}</a> 
	  			</c:forEach>
	  			 -->
	  	</div>
	  	<div style="width:700px;
	  				margin-left:10px; 
	  				margin-top:10px; 
	  				text-align:left;">
	  	</div>
	</div>
</div>
</body>
</html>