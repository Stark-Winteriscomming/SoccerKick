<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../../include/header.jsp"%>

<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content"
		style="margin: 0 auto; width: 500px; border: 1px solid gray">
		<div
			style="width: 47%; height: 80%; border: 1px solid gray; float: left;">
			<span>주소록에 추가</span>
			<ul class="sendedList">
				<c:forEach var="item" items="${list}">
					<li><input type="checkbox">${item}</li>
				</c:forEach>
			</ul>
		</div>
		<span id="result"></span>
		<div style="height: 15%; border: 1px solid gray; margin-top: 90%;">
			<div class="layer">
					<span
						style="margin-left: 45%; display: inline; horizental-align: middle">
						<button id="add">추가</button>
						<button id="cancel">취소</button>
					</span>
			</div>
		</div>
	</div>
</section>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/resources/js/mail.js"></script>
<%-- <%@include file="../../include/footer.jsp"%> --%>
