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
				<label for="exampleInputEmail1">방 이름</label> <input type="text"
					name="title" class="form-control" placeholder="room name"
					aria-describedby="sizing-addon2">

			</div>
			<div class="input-group">
				<label for="exampleInputEmail1">제한인원</label> <input type="text"
					name="" class="form-control" placeholder="제한인원"
					aria-describedby="sizing-addon2">
			</div>
			<br><br>
			<div class="input-group">
<!-- 				<button type="submit" class="btn btn-default">만들기</button> -->
				<input type="submit" class="btn btn-default" value="만들기"/>
			</div>
		</form>
	</div>
</section>
<%@include file="../include/footer.jsp"%>
