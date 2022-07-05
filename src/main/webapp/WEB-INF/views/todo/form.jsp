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
			<h1 class="border p-2 fs-4">신규 할일 등록 폼</h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<p>신규 할일의 카테고리, 제목, 처리예정일, 내용을 입력하세요</p>
			<form class="border bg-light p-3" method="post" action="insert.hta">
				<div class="mb-3">
					<label class="form-label">카테고리</label>
					<select class="form-select" name="categoryId">
						<!-- 데이터베이스에 등록된 카테고리 목록을 표현합니다. -->
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
					</select>
				</div>
				<div class="mb-3">
					<label class="form-label">제목</label>
					<input type="text" name="title" class="form-control"/>
				</div>
				<div class="mb-3">
					<label class="form-label">처리 예정일</label>
					<input type="date" name="dueDate" class="form-control"/>
				</div>
				<div class="mb-3">
					<label class="form-label">내용</label>
					<textarea rows="5" name="description" class="form-control"></textarea>
				</div>
				<div class="text-end">
					<a href="list.hta" class="btn btn-secondary">취소</a>
					<button type="submit" class="btn btn-primary">등록</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>