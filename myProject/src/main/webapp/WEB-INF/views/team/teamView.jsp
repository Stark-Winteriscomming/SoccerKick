<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="../include/header.jsp"%>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
	<form action="/team/gameMatch" method="post"> 
		<input type="hidden" name="applicant_id" value="${sessionScope.login.client_id}">
		<input type="hidden" name="applicant_team" value="${vo.team_name}">
		<input type="hidden" name="host" value="${vo.client_id}">  
		   
		<input type="hidden" name="a_applicant"
			value="${sessionScope.login.client_id}"> 

		<div class="container">
			<div align="center">
				<h1>팀명 - ${vo.team_name}</h1>
			</div>
			<br>
			<div class="row">
				<div class="col-md-offset-4 col-md-4">
					<img src="../upload/${vo.team_logo_file_name}" class="img-circle"
						style="width: 350px; height: 350px;">
					<c:if test="${vo.team_formation == '433' }">
						<img src="/resources/img/433.png" style="width: 350px;" />
					</c:if>
					<c:if test="${vo.team_formation == '41212' }">
						<img src="/resources/img/41212.png" style="width: 350px;" />
					</c:if>
					<c:if test="${vo.team_formation == '4231' }">
						<img src="/resources/img/4231.png" style="width: 350px;" />
					</c:if>
				</div>

			</div>
			<br> <br>




			<div align="center">
				<div class="panel panel-info" style="width: 691px">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							팀 소개<a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>
					</div>
					<div class="panel-body">
						팀이름 - ${vo.team_name}<br> 지역 - ${vo.team_region}<br>
						포메이션 - ${vo.team_formation}<br> 소개글 - ${vo.team_history}<br>
					</div>
				</div>
			</div>
			<br> 
		</div>

		<div align="center">
			<button class="btn btn-primary btn-lg" style="width: 300px; height: 70px" type="submit">대결 신청</button> 
		</div>
	</form>
</section>

<%@include file="../include/footer.jsp"%>
