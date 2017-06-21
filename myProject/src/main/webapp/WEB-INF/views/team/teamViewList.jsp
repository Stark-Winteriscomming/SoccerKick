<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">
					<span class="label label-primary">팀 정보</span>
				</h2>
				<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">-comment-</h3>
			</div>
<!-- 
			<input type="text" name='keywordInput' id="keywordInput">
			<button id='searchBtn'>Search</button>
 -->
			<div align="right">
			<input type="text" placeholder="Search" name='keywordInput' id="keywordInput" style="width: 300px">
			<button class="btn btn-default" id='searchBtn'>찾기</button>      
			</div>  
			<br><br>    



		</div>
		<div class="row">
			<c:forEach items="${list}" var="vo">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="/team/teamView?team_id=${vo.team_id}"
						class="portfolio-link" data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img src="/upload/${vo.team_logo_file_name}"
						style="width: 100%; height: 100%;" class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption"> 
					<div align="left">
					<h4><span class="label label-primary">팀명</span>   ${vo.team_name}</h4><br>
					<h4><span class="label label-primary">지역</span>   ${vo.team_region}</h4><br>    
					<h4><span class="label label-primary">포메이션</span>   ${vo.team_formation}</h4>      
					</div> 
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>




<%@include file="../include/footer.jsp"%>

<script>
	$("document").ready(
			function() {
				$('#searchBtn').on(
						"click",
						function(evt) {
							self.location = "/team/teamViewList"
									+ "?keywordInput="
									+ $('#keywordInput').val();
						});
			});
</script>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("신청이 완료되었습니다.")
	}
</script>
<script>  
swal("팀 정보를 볼 수 있습니다.")
</script>



