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
			<h1 class="border p-2 fs-4">할일 수정 폼</h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<p>할일의 카테고리, 제목, 처리예정일, 내용을 수정하세요</p>
			<form class="border bg-light p-3" method="post" action="modify.hta?no=10">
				<div class="mb-3">
					<label class="form-label">카테고리</label>
					<select class="form-select" name="categoryId">
						<!-- 데이터베이스에 등록된 카테고리 목록을 표현하고, 해당 할일과 관련된 카테고리가 선택되어야 한다. -->
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01" selected> 서버프로그램 개발</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
						<option value="cat_01"> 요구사항 분석</option>
					</select>
				</div>
				<div class="mb-3">
					<label class="form-label">제목</label>
					<input type="text" name="title" class="form-control" value="공지사항 VO, Dao 클래스 구현"/>
				</div>
				<div class="mb-3">
					<label class="form-label">처리 예정일</label>
					<input type="date" name="dueDate" class="form-control" value="2022-07-10"/>
				</div>
				<div class="mb-3">
					<label class="form-label">내용</label>
					<textarea rows="5" name="description" class="form-control">공지사항 구현에 필요한 VO, DAO 클래스를 정의하고, 메소드를 구현해야 함</textarea>
				</div>
				<div class="text-end">
					<a href="detail.hta?no=10" class="btn btn-secondary">취소</a>
					<button type="submit" class="btn btn-primary">수정</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>