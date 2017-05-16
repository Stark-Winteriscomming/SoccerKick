<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/vendor/font-awesome/css/font-a	wesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link href="/resources/css/agency.css" rel="stylesheet">

<style>
.rList dt {
	
}

.layer {
	position: relative;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%)
}

p span {
	margin-left: 40%;
	display: inline;
	horizental-align: middle;
}
</style>
<!--  start of Content  -->
<div class="content"
	style="margin: 0 auto; width: 670px; height: 720px; padding: 1px">
	<div class="registeredList"
		style="width: 47%; height: 80%; border: 1px solid gray; float: left;">
		<span>주소록</span>
		<ul class="rList">
			<c:forEach items="${list}" var="item">
			<li id=${item}><input type="checkbox">${item}</li>
			</c:forEach>
		</ul>
	</div>
	<div class="arrow"
		style="width: 10%; height: 80%; padding: 1px; float: left;">
		<div style="padding:1px;height: 50%; margin-top: 150%">
			<p>
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"
					id="rightBtn"></span>
			</p>
			<p>
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"
					id="leftBtn"></span>
			</p>

		</div>	
	</div>
	<div class="selectedList" id="selectedList"
		style="width: 43%; height: 80%; border: 1px solid gray; float: right;">
		<span>받는 사람</span>
		<ul class="sList">
		</ul>
	</div>
	<div style="height: 15%; border: 1px solid gray; margin-top: 90%;">
		<div class="layer">
			<span
				style="margin-left: 45%; display: inline; horizental-align: middle">
				<button id="confirm">확인</button>
				<button id="cancel">취소</button>
			</span>
		</div>
	</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/resources/js/addressBook.js"></script>


