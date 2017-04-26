<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="../include/header.jsp"%>
<section id="portfolio" class="bg-light-gray">
	<div class="row">
		<div class="col-md-offset-5 col-md-2">
			<form class="form-signin" method="post" action="loginCheck">
				<input name="client_id" class="form-control" placeholder="로그인"
					style="height: 50px;"> <input type="password"
					class="form-control" placeholder="비밀번호" style="height: 50px;">
				<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
				<a href="/gBoard/join_form"><button
						class="btn btn-lg btn-success btn-block" type="button">회원가입</button></a>
				<button class="btn btn-lg btn-success btn-block" type="submit">아이디/비밀번호
					찾기</button>
			</form>
		</div>
	</div>
</section>
<%@include file="../include/footer.jsp"%>
