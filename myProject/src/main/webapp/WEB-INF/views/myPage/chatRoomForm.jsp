<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/header.jsp"%>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px;">
		<form name="chatForm" class="form-horizontal"
			action="http://172.16.13.19:8088/myPage/chat/make" method="post">
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">방제목</span> <input
					type="text" name="title" class="form-control"
					placeholder="room name" aria-describedby="sizing-addon2">

			</div>
			<div class="input-group">
				<span class="input-group-addon" id="sizing-addon2">제한인원</span> <input
					type="text" name="" class="form-control" placeholder="제한인원"
					aria-describedby="sizing-addon2">
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input type="checkbox"> 비밀번호 설정
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">만들기</button>
				</div>
			</div>
		</form>
	</div>
</section>
<%@include file="../include/footer.jsp"%>
