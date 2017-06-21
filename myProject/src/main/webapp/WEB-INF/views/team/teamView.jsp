<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="../include/header.jsp"%>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
	<div style="margin: 0 auto; width: 1200px;">
		<form action="/team/gameMatch" method="post">
			<input type="hidden" name="applicant"
				value="${sessionScope.login.client_id}"> <input
				type="hidden" name="applicant_team" value="${vo.team_name}">
			<input type="hidden" name="host" value="${vo.client_id}"> <input
				type="hidden" name="a_applicant"
				value="${sessionScope.login.client_id}"> <br>
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

<!-- 			<div align="center">   -->
			<div style="float:left; width:70%">
			<h2 class="section-heading"><span class="label label-primary">포메이션</span></h2>
				<!-- formation choice -->
				<c:if test="${vo.team_formation == '433' }">
					<!-- 						<img src="/resources/img/433.png" style="width: 350px;" /> -->
					<%-- 						<jsp:include page="completedTeamFormation_433.jsp" /> --%>
					<div>
						<%@include file="completedTeamFormation_433.jsp"%>
					</div>
				</c:if>
				<c:if test="${vo.team_formation == '41212' }">
					<div>
						<%@include file="completedTeamFormation_41212.jsp"%>
					</div>
				</c:if>
				<c:if test="${vo.team_formation == '4231' }">
					<div>
						<%@include file="completedTeamFormation_4231.jsp"%>
					</div>
				</c:if>
			</div>
			<br><br>
<!-- 				<div align="center"> -->
					<div style="float:right; width:30%">
						<h2 class="section-heading"><span class="label label-primary">선수 정보</span></h2>
						<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">포지션을 선택하면 선수 정보를 확인 할 수 있습니다.</h3>
					<div class="player">
						<img
							src="http://sstatic.naver.net/people/91/201405301047405271.jpg"/>
						<div style="padding: 20px;">
							이름 <label id="name">  </label><br> 지역<label
								id="region"> 서울 </label><br> 나이<label id="age"> 
						</div>
					</div>
				</div>
				
			<div style="clear: both; margin: 0 auto; width: 100%;">
				<div class="panel panel-info">
					<div class="panel-heading" align="center">
						<h2 class="section-heading"><span class="label label-primary">팀 소개</span></h2>
					</div>
					<div class="panel-body">
					<div align="left">
					<h4 class="section-heading"><span class="label label-default">팀이름</span>   ${vo.team_name}</h4>  
					<h4 class="section-heading"><span class="label label-default">지역</span>   ${vo.team_region}</h4>
					<h4 class="section-heading"><span class="label label-default">포메이션</span>   ${vo.team_formation}</h4>
					<h4 class="section-heading"><span class="label label-default">소개글</span>   ${vo.team_history}</h4>
					</div>
					</div>     
					</div>
			</div>
		</form>
	</div>
</section>

<%@include file="../include/footer.jsp"%>

<script>
	$(".player").hide();
// 	var position = $(".checks").find('.name');
	var position = $(".position_wrap");
	
	$(position).on('click', function(target) {
// 		console.log($(this).html());
		
		var no = $(this).find('.name');
		if($(no).html().trim() === ''){
// 			console.log("empty")
			return false;
		}
		console.log("no2: "+$(no).html());
		$.ajax({
// 			url : "/user/getClient?id=" + $(this).html().trim(),
			url : "/user/getClient?id=" + $(no).html().trim(),
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
		$(".player").show();
	})
</script>
