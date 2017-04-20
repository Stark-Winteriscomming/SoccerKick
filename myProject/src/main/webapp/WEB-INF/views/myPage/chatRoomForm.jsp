<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/header.jsp"%>
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px;">
		<form name="chatForm" class="form-horizontal" action="http://172.16.13.19:8088/myPage/chat/make" method="post">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">방 이름</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3" name="title"
						placeholder="방 이름">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">제한인원</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword3" name=""
						placeholder="제한인원">
				</div>
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
