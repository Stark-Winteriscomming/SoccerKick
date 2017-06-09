<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
	<form action="/gBoard/apply" method="post">

		<input type="hidden" name="a_applicant"
			value="${sessionScope.login.client_id}">
			
		<input type="hidden" name="team_id"
			value="${vo.team_id}">
		<div class="container">
			<!-- 	<div class="btn-group-vertical navbar-fixed-top"  role="group" aria-label="..." style="top: 550px; left: 30px;"> 
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 1</button>
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 2</button>
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 3</button>
	</div> -->

			<div align="center">   
				<div align="center">  
				<h2 class="section-heading"><span class="label label-primary">팀명</span></h2>
				<h2>${vo.team_name}</h2>     
			</div>
				<div>
					<img src="../upload/${vo.team_logo_file_name}" class="img-circle"
						style="width: 200px; height: 200px; margin: 0 auto; display: block;">
				</div>

			</div>
			<br>
			<br>
			
			<c:if test="${vo.team_formation == '433' }">
				<%@include file="433.jsp"%>
			</c:if>
			<c:if test="${vo.team_formation == '41212' }">
				<%@include file="41212.jsp"%>
			</c:if>
			<c:if test="${vo.team_formation == '4231' }">
				<%@include file="4231.jsp"%>  
			</c:if>
			
			
			<div align="center">
				<div class="panel panel-success" style="width: 691px">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							팀 소개<a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>
					</div>
					<div class="panel-body">${vo.team_history }</div>
				</div>
			</div>
			<br>  
			<div align="center">
				<button class="btn btn-success btn-lg"
					style="width: 300px; height: 70px">신청 하기</button>
			</div>
		</div>
	</form>
</section>
<%@include file="../include/footer.jsp"%>
