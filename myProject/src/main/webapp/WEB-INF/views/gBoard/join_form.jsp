<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray" style="height:100%;">
    	<div class="content">
	      <div class="pageTitle">
			   <h1>회원가입</h1>
		  </div>
	      <article class="container">
	        <div class="col-md-6 col-md-offset-3">
	          <form role="form">
	            <div class="form-group">
	              <label for="InputEmail">아이디</label>
	              <input type="text" class="form-control" id="InputEmail" placeholder="아이디를 입력해 주세요">
	            </div>
	            <div class="form-group">
	              <label for="InputEmail">닉네임</label>
	              <input type="text" class="nickname" id="usernickname" placeholder="닉네임을 입력해 주세요">
	            </div>
	            <div class="form-group">
	              <label for="InputPassword1">비밀번호</label>
	              <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호를 입력해 주세요">
	            </div>
	            <div class="form-group">
	              <label for="InputPassword2">비밀번호 확인</label>
	              <input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인을 입력해 주세요">
	              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
	            </div>
	            <div class="form-group">
	              <label for="username">이름</label>
	              <input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요">
	            </div>
	             <div class="form-group">
	              <label for="username">생년월일</label>
	              <div class="input-group">
	                <input type="tel" class="birth" id="userbirth" placeholder="- 없이 입력해 주세요">
	               
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">휴대폰</label>
	              <div class="input-group">
	                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
	                <span class="input-group-btn">
	                  <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
	                </span>
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">지역</label>
	              <div class="input-group">
	              	<input type="text" class="region" id="username" placeholder="지역을 입력해 주세요">
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">포지션</label>
	              <div class="input-group">
	              	<input type="text" class="position" id="username" placeholder="선호 포지션을 입력해주세요">
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">소개</label>
	              <div class="input-group">
	              	<textarea rows="" cols="" class="history" placeholder="소개를 입력해 주세요"></textarea>
	              </div>
	            </div>
	            <div class="form-group">
	                <label>약관 동의</label>
	              <div data-toggle="buttons">
	              <label class="btn btn-primary active">
	                  <span class="fa fa-check"></span>
	                  <input id="agree" type="checkbox" autocomplete="off" checked>
	              </label>
	              <a href="#">이용약관</a>에 동의합니다.
	              </div>
	            </div>
	            <div class="form-group text-center">
	              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
	              <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
	            </div>
	          </form>
	        </div>
	      </article>
        </div>
    </section>

<%@include file="../include/footer.jsp" %>
