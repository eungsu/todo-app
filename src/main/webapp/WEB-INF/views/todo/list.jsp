<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	.btn.btn-xs {
    		--bs-btn-padding-y: .25rem; 
    	 	--bs-btn-padding-x: .5rem; 
    	 	--bs-btn-font-size: .75rem;
    	 }
    </style>
  </head>
<jsp:include page="../common/navbar.jsp"></jsp:include>
<body>
<div class="container mt-3">
	<div class="row mb-3">
		<div class="col">
			<h1 class="border p-2 fs-4">할일 목록</h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<p>
				할일 목록을 확인하세요 
				<a href="form.hta" class="btn btn-primary float-end">새 할일 등록</a>
			</p>
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="15%">
					<col width="*">
					<col width="15%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>처리예정일</th>
						<th>완료여부</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr class="align-middle">
						<td>10</td>
						<td>화면구현</td>
						<td><a href="detail.hta?no=10">홈페이지 화면 구현 작업</a></td>
						<td>2022-07-10</td>
						<td>N</td>
						<td>
							<a href="delete.hta?no=10" class="btn btn-danger btn-xs">삭제</a>
							<a href="complete.hta?no=10" class="btn btn-success btn-xs">완료</a>
						</td>
					</tr>
					<tr>
						<td>10</td>
						<td>화면구현</td>
						<td><a href="detail.hta?no=10">홈페이지 화면 구현 작업</a></td>
						<td>2022-07-10</td>
						<td>N</td>
						<td>
							<a href="delete.hta?no=10" class="btn btn-danger btn-xs">삭제</a>
							<a href="complete.hta?no=10" class="btn btn-success btn-xs">완료</a>
						</td>
					</tr>
					<tr>
						<td>10</td>
						<td>화면구현</td>
						<td><a href="detail.hta?no=10">홈페이지 화면 구현 작업</a></td>
						<td>2022-07-10</td>
						<td>N</td>
						<td>
							<a href="delete.hta?no=10" class="btn btn-danger btn-xs">삭제</a>
							<a href="complete.hta?no=10" class="btn btn-success btn-xs">완료</a>
						</td>
					</tr>
					<tr>
						<td>10</td>
						<td>화면구현</td>
						<td><a href="detail.hta?no=10">홈페이지 화면 구현 작업</a></td>
						<td>2022-07-10</td>
						<td>N</td>
						<td>
							<a href="delete.hta?no=10" class="btn btn-danger btn-xs">삭제</a>
							<a href="complete.hta?no=10" class="btn btn-success btn-xs">완료</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>