<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="../include/header.jsp"%>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
	<div style="margin: 0 auto; width: 1200px; border: 1px solid black;">
		<form action="/team/gameMatch" method="post">
			<input type="hidden" name="applicant"
				value="${sessionScope.login.client_id}"> <input
				type="hidden" name="applicant_team" value="${vo.team_name}">
			<input type="hidden" name="host" value="${vo.client_id}"> <input
				type="hidden" name="a_applicant"
				value="${sessionScope.login.client_id}"> <br>
			<div align="center">
				<h2 class="section-heading">
					<span class="label label-primary">팀명</span>
				</h2>
				<h2>${vo.team_name}</h2>
				<div>
					<img src="../upload/${vo.team_logo_file_name}" class="img-circle"
						style="width: 300px; height: 300px;">
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<div>
				<!-- formation choice -->
				<c:if test="${vo.team_formation == '433' }">
					<!-- 						<img src="/resources/img/433.png" style="width: 350px;" /> -->
					<%-- 						<jsp:include page="completedTeamFormation_433.jsp" /> --%>
					<div style="width: 50%; float: left">
						<%@include file="completedTeamFormation_433.jsp"%>
					</div>
				</c:if>
				<c:if test="${vo.team_formation == '41212' }">
					<div style="width: 50%; float: left">
						<%@include file="completedTeamFormation_41212.jsp"%>
					</div>
				</c:if>
				<c:if test="${vo.team_formation == '4231' }">
					<div style="width: 50%; float: left">
						<%@include file="completedTeamFormation_4231.jsp"%>
					</div>
				</c:if>
			</div>
			<br>
			<br>
			<br>
			<br>



			<div style="float: right; width: 50%;">
				<div class="checks" align="center">
					<h3>
						<span class="label label-primary">선수 정보</span>
					</h3>
					<div style="width: 50%; margin: 0 auto; border: 1px solid gray;">
						<img
							src="http://sstatic.naver.net/people/91/201405301047405271.jpg"
							style="display: block; margin: 0 auto;" />
						<div style="padding: 20px;">
							이름 <label id="name"> changho232 </label><br> 지역<label
								id="region"> 서울 </label><br> 나이<label id="age"> 23
							</label><br> 히스토리<label id="history"> 대학교 졸업 </label>
						</div>
					</div>
				</div>
			</div>
			<br> <br> <br>
			<!--  -->
			<br>
			<br>
			<br>
			<div style="clear: both; margin: 0 auto; width: 50%;">
				<div class="panel panel-info">
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
			<div align="center">
				<button class="btn btn-primary btn-lg"
					style="width: 300px; height: 70px" type="submit">대결 신청</button>
			</div>
		</form>
	</div>
</section>

<%@include file="../include/footer.jsp"%>

<script>
	var position = $(".checks").find('.name');
	$(position).on('click', function(target) {
		console.log($(this).html());
		$.ajax({
			url : "/user/getClient?id=" + $(this).html().trim(),
			type : "GET",
			dataType : "json",
			success : function(result) {
				//data - response from server
				console.log(result);
				// 				var obj = JSON.parse(result);
				console.log('name: ' + result.client_name);
				if (typeof result.client_name === 'undefined')
					$('#name').html('');
				else
					$('#name').html(result.client_name);
				if (typeof result.client_age === 'undefined')
					$('#age').html('');
				else
					$('#age').html(result.client_age);
				if (typeof result.client_region === 'undefined')
					$('#region').html('');
				else
					$('#region').html(result.client_region);
				if (typeof result.client_history === 'undefined')
					$('#history').html('');
				else
					$('#history').html(result.client_history);
			},
			error : function(jqXHR, textStatus, errorThrown) {

			}
		});
	})
</script>
