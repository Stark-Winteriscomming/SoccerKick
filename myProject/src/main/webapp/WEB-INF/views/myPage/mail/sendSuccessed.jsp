<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../../include/header.jsp"%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	
	<c:choose>

		<c:when test="${empty list}">
			<div class="content" style="margin: 0 auto; width: 500px;">보내기 성공
				<div style="text-align: center;">
					no address for add.....
					<div style="height: 15%; margin-top: 90%;">
						<div class="layer"></div>
					</div>
				</div>
			</div>
		</c:when>

		<c:otherwise>
			<div class="content"
				style="margin: 0 auto; width: 500px; border: 1px solid gray">보내기 성공
				<span style="">주소록에 추가</span>
				<div id="addressList" style="text-align: center;">

					<div style="display: inline-block;">
						<ul class="sendedList" style="">
							<c:forEach var="item" items="${list}">
								<li><input type="checkbox">${item}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div style="height: 15%; margin-top: 90%;">
					<div class="layer">
						<span
							style="margin-left: 45%; display: inline; horizental-align: middle">
							<button id="add">추가</button>
							<button id="cancel">취소</button>
						</span>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="/resources/js/mail.js"></script>
</section>

<%@include file="../../include/footer.jsp"%>
