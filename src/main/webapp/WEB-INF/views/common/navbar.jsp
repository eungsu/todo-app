<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="container">
		<ul class="navbar-nav me-auto">
			<li class="nav-item"><a class="nav-link" href="/todo-app/home.hta">TODO 애플리케이션</a></li>
			<li class="nav-item"><a class="nav-link " href="/todo-app/todo/list.hta">할일목록</a></li>
		</ul>
		<!-- 속성으로 LOGIN_USER 존재하면 표시한다. -->
		<span class="navbar-text"><strong class="text-white">홍길동</strong>님 환영합니다.</span>
		<ul class="navbar-nav">
			<!-- 속성으로 LOGIN_USER 존재하지 않으면 표시한다.-->
			<li class="nav-item"><a class="nav-link " href="/todo-app/loginform.hta">로그인</a></li>
			<!-- 속성으로 LOGIN_USER 존재하면 표시한다. -->
			<li class="nav-item"><a class="nav-link" href="/todo-app/logout.hta">로그아웃</a></li>
		</ul>
	</div>
</nav>