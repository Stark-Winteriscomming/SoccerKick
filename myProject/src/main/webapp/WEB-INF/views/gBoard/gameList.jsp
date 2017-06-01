<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">경기 매칭</h2>
				<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">-경기를 주최하고, 대결 신청을 할 수 있습니다-</h3>
			</div>
		</div>

		<div class="row">
				<c:forEach items="${list}" var="vo">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							${vo.gametitle} - ${vo.gameday} <a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>      
					</div>    
					<div class="panel-body">
					<a href="/gBoard/gameInfo?team_id=${vo.team_id}&cliend_id=${vo.host}">
					<img src="/upload/${vo.team_logo_file_name}" style="width:400px;height:200px;"
						class="img-responsive" alt=""> </a> 
					장 소 - ${place} <br>
					
					${vo.content}  
					
					</div> 
					</div>
					</div>
				</c:forEach>
		</div>

	</div>
</section>




<%@include file="../include/footer.jsp"%>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("신청이 완료되었습니다.")
	}
</script>



