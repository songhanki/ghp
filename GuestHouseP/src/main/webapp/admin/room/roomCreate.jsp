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
<script type="text/javascript" src="../admin/js/roomCommon.js" ></script>
<link href="../admin/bootstrap-4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script>

</script>
<title></title>
</head>
<body>
<div class="modal-body">
	<table class="table">
		<tbody>
		
			<tr>
				<th scope="col">숙소명</th>
				<td>
				<input type="text" id="rm_name" class="form-control" placeholder="숙소명">
				</td>
			</tr>
			<tr>
				<th scope="col">숙소이미지</th>
				<td>
				<button type="button" class="btn btn-secondary">이미지 업로드</button>
				</td>
			</tr>
			<tr>
				<th scope="col">숙소위치</th>
				<td>
				<input type="text" id="rm_loc" class="form-control" placeholder="숙소위치">
				</td>
			</tr>
			<tr>
				<th scope="col">숙소전화번호</th>
				<td>
				<input type="text" id="rm_phone" class="form-control" placeholder="숙소번호">
				</td>
			</tr>
			<tr>
				<th scope="col">숙소별 가격</th>
				<td>
					<table>
						<thead>
							<tr>
								<th scope="col">숙소실 리스트</th>
								<th scope="col">인실</th>
								<th scope="col">가격(일 기준)</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody id="sub_tbody">

						</tbody>
						<tfoot>
							<tr>
								<td><input type="text" id="rm_room" class="form-control" placeholder="숙소호실(101호)"></td>
								<td><input type="text" id="rm_person" class="form-control" placeholder="n인실"></td>
								<td><input type="text" id="rm_price" class="form-control" placeholder="10000"></td>
								<td>
									<button type="button" class="btn btn-primary" onclick="create_table()">+</button>
								</td>
							</tr>
						</tfoot>
					</table>
				</td>
			</tr>
			<tr>
				<th scope="col">숙소설명</th>
				<td>
				<textarea id="rm_comment" class="form-control"></textarea>
				</td>
			</tr>
		</tbody>
	</table>
	<button type="button" class="btn btn-primary" onclick="save_room()">저장</button>
	<button type="button" class="btn btn-secondary" onclick="go_list()">취소</button>
</div>
</body>
</html>