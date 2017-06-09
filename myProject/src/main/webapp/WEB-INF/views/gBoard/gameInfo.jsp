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
				value="${sessionScope.login.client_id}">  

			<br>
			<div align="center">   
				<div align="center">
				<h2 class="section-heading"><span class="label label-primary">팀명</span></h2>
				<h1>${vo.team_name}</h1>
			</div>
				<div>
					<img src="../upload/${vo.team_logo_file_name}" class="img-circle"
						style="width: 300px; height: 300px; margin: 0 auto; display: block;">
				</div>

			</div>
			
			<div align="center">
			<!-- formation choice -->
			<c:if test="${vo.team_formation == '433' }">
				<!-- 						<img src="/resources/img/433.png" style="width: 350px;" /> -->
				<%-- 						<jsp:include page="completedTeamFormation_433.jsp" /> --%>
				<div style="width: 50%;">
					<%@include file="../team/completedTeamFormation_433.jsp"%>
				</div>
			</c:if>
			<c:if test="${vo.team_formation == '41212' }">
				<div style="width: 50%;">
					<%@include file="../team/completedTeamFormation_41212.jsp"%>
				</div>
			</c:if>
			<c:if test="${vo.team_formation == '4231' }">
				<div style="width: 50%;">
					<%@include file="../team/completedTeamFormation_4231.jsp"%>
				</div>
			</c:if>
			</div>
			
			<br> <br> <br>
			<!--  -->
			<div style="clear: both; margin: 0 auto; width: 50%;">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							경기 정보<a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>
					</div>  
					<div class="panel-body">
						<h4><span class="label label-primary">경기 장소</span>  ${gvo.place}</h4><br> 
						<h4><span class="label label-primary">경기 일자</span>  ${gvo.startday}</h4><br>    
						   
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
