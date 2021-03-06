<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="../include/header.jsp"%>
<link href="/resources/css/joinform.css" rel="stylesheet">

<!-- Portfolio Grid Section -->
<section id="portfolio" class="bg-light-gray" style="height: 100%;">
	<div class="content">
		<div class="pageTitle">
			<h1>회원가입</h1>
		</div>
		<article class="container">
			<div class="col-md-6 col-md-offset-3">
				<form action="join.do  v " method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="InputEmail">아이디</label> <input type="text"
							class="form-control" id="id" name="client_id"
							placeholder="아이디를 입력해 주세요">
					</div>
					<div class="form-group">
						<label for="InputEmail">닉네임</label> <input type="text"
							class="form-control" id="id" name="client_profile_name"
							placeholder="닉네임을 입력해 주세요">
					</div>
					<div>

						<label>첨부파일</label> <input type="file" name="file" id="file">

					</div>
					<div class="form-group">
						<label for="InputPassword1">비밀번호</label> <input type="password"
							class="form-control" id="pass" name="pw"
							placeholder="비밀번호를 입력해 주세요">
					</div>
					<div class="form-group">
						<label for="InputPassword2">비밀번호 확인</label> <input type="password"
							class="form-control" id="cpass" placeholder="비밀번호 확인을 입력해 주세요">
						<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
					</div>
					<div class="form-group">
						<label for="username">이름</label> <input type="text"
							class="form-control" id="name" name="client_name"
							placeholder="이름을 입력해 주세요">
					</div>
					<div class="form-group">
						<label for="username">나이</label>
						<div class="input-group">
							<input type="tel" class="birth" id="birth" name="client_age"
								placeholder="나이를 입력해주세요">

						</div>
					</div>
					<div class="form-group">
						<label for="username">휴대폰</label>
						<div class="input-group">
							<input type="tel" class="form-control" id="cphone"
								name="client_phone" placeholder="- 없이 입력해 주세요"> <span
								class="input-group-btn">
							</span>
						</div>
					</div>
					<div class="form-group">
						<label for="username">지역</label>
						<div class="input-group">

							<input type="text" class="region" id="region" name="client_region"
								placeholder="지역을 입력해 주세요">

						</div>
					</div>
					<div class="form-group">
						<label for="username">포지션</label>
						<div class="input-group">
							<input type="text" class="position" id="username" name="position_id"
								placeholder="선호 포지션을 입력해주세요">
						</div>
					</div>
					<div class="form-group">
						<label for="username">소개</label>
						<div class="input-group">
							<textarea rows="" cols="" class="history" id="history" name="client_history"
								placeholder="소개를 입력해 주세요"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label>약관 동의</label>
						<div data-toggle="buttons">
							<label class="btn btn-primary active"> <span
								class="fa fa-check"></span> <input id="agree" type="checkbox"
								autocomplete="off" checked>
							</label> <a href="#">이용약관</a>에 동의합니다.
						</div>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn" id="btn_submit">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						<button type="button" class="btn btn-warning" id="btn_calcel">가입취소<i class="fa fa-times spaceLeft"></i></button>
					</div>
				</form>
			</div>
		</article>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<script type="text/javascript" src="/resources/js/join_validation.js"></script>
<!--

//-->

