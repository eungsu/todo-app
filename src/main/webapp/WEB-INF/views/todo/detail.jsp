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
			<h1 class="border p-2 fs-4">할일 상세정보</h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<p>할일 상세 정보를 확인하세요.</p>
			<table class="table table-bordered">
				<colgroup>
					<col width="10%">
					<col width="40%">
					<col width="10%">
					<col width="40%">
				</colgroup>
				<tbody>
					<tr >
						<th class="bg-light">제목</th>
						<td>홈페이지 화면 구현 작업 마무리</td>
						<th class="bg-light">카테고리</th>
						<td>화면구현</td>
					</tr>
					<tr>
						<th class="bg-light">번호</th>
						<td>10</td>
						<th class="bg-light">처리완료 여부</th>
						<td>N</td>
					</tr>
					<tr>
						<th class="bg-light">처리완료일</th>
						<td>2022-07-10</td>
						<th class="bg-light">최종수정일</th>
						<td>2022-07-10</td>
					</tr>
					<tr>
						<th class="bg-light">내용</th>
						<td colspan="3">홈페이지 화면 레이아웃 구성하고, 각 레이아웃에 포함된 컴포넌트 구현하기</td>
					</tr>
					<!-- 처리내용이 존재하는 경우에만 표시한다. -->
					<tr>
						<th class="bg-light">처리내용</th>
						<td colspan="3">홈페이지 화면 레이아웃 구성하고, 각 레이아웃에 포함된 컴포넌트 구현하기</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<!-- 
				처리완료 상태가 'Y'일 경우 수정, 삭제, 완료버튼을 비활성화한다.
			 -->
			<a href="modifyform.hta?no=10" class="btn btn-warning">수정</a>
			<a href="delete.hta?no=10" class="btn btn-danger">삭제</a>
			<button class="btn btn-success" onclick="openCompleteModal()">완료</button>
			<a href="list.hta" class="btn btn-outline-primary float-end">목록</a>
		</div>
	</div>
	
	<!-- 처리완료 버튼을 클릭했을 때 표시되는 모달창이다. -->
	<div class="modal fade" id="completed-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">처리내용 입력</h5>
        			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      			</div>
      			<div class="modal-body">
        			<p>처리내용을 입력하세요.</p>
        			<form id="result-form" class="border bg-light p-3" method="post" action="complete.hta?no=10">
        				<textarea rows="5" class="form-control" name="result"></textarea>
        			</form>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        			<button type="button" class="btn btn-primary" onclick="formSubmit();">처리 완료</button>
      			</div>
    		</div>
  		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	let modal = new bootstrap.Modal(document.getElementById("completed-modal"));
	
	function openCompleteModal() {
		document.querySelector("textarea[name=result]").value = "";
		modal.show();
	}
	
	function formSubmit() {
		let result = document.querySelector("textarea[name=result]").value;
		if (result === "") {
			return;
		}
		
		document.getElementById("result-form").submit();
	}
</script>
</body>
</html>