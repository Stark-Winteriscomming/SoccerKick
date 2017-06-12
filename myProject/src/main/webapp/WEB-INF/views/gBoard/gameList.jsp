<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading"><span class="label label-primary">경기 매칭</span></h2>  
				<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">-경기를 주최하고, 대결 신청을 할 수 있습니다-</h3>
					<br><br>
			</div>
		</div>
		<div align="right">  
		<a href="/gBoard/team_open"><button class="btn btn-info btn-lg">경기 주최하기</button></a> 
		</div>

		<div class="row">
				<c:forEach items="${list}" var="vo">  
				<div class="col-md-4 col-sm-6 portfolio-item">
					<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							${vo.gametitle}<a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>      
					</div>      
					<div class="panel-body">
					<a href="/gBoard/gameInfo?team_id=${vo.team_id}&client_id=${vo.host}&gameno=${vo.gameno}">     
					<img src="/upload/${vo.team_logo_file_name}" style="width:400px;height:300px;"   
						class="img-responsive img-circle img-thumbnail" alt=""> </a> 
						<br><br>   
					<div align="center">
					<span class="label label-primary label-lg">장소</span> <br>${vo.place} <br>        
					<span class="label label-primary label-lg">경기 일자</span> <br> ${vo.startday}    
					</div>
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



