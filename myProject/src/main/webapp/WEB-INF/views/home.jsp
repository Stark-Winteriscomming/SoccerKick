<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>

<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">선수 모집</h2>
				<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">-comment-</h3>
			</div>
			<div align="right">
				<div class="btn-group"
					style="margin-right: 15px; margin-bottom: 50px">
					<button type="button" class="btn btn-default">인기순</button>
					<button type="button" class="btn btn-default">최신순</button>
					<button type="button" class="btn btn-default">마감임박순</button>
				</div>
			</div>
		</div>
		<div class="row">
		<c:forEach items="${list}" var="vo">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="gBoard/read?team_id=${vo.team_id}" class="portfolio-link" data-toggle="modal"> 
						<div class="portfolio-hover">  
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div>  
						<img src="upload/${vo.team_logo_file_name}" class="img-responsive" alt=""> 
					</a>
					<div class="portfolio-caption">
						<h4> ${vo.team_name} </h4>
						<p class="text-muted"> ${vo.team_history} </p>
					</div>
				</div>
		</c:forEach>
		</div>

		<!-- <div class="row">
			<div class="col-md-4 col-sm-6 portfolio-item">
				<a href="gBoard/read" class="portfolio-link" data-toggle="modal">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img src="resources/img/portfolio/1.png" class="img-responsive"
					alt="">
				</a>
				<div class="portfolio-caption">
					<h4>팀 명</h4>
					<p class="text-muted">팀 소개</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 portfolio-item">
				<a href="#portfolioModal1" class="portfolio-link"
					data-toggle="modal">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img src="resources/img/portfolio/2.png" class="img-responsive"
					alt="">
				</a>
				<div class="portfolio-caption">
					<h4>팀 명</h4>
					<p class="text-muted">팀 소개</p>
				</div>
			</div>


			<div class="col-md-4 col-sm-6 portfolio-item">
				<a href="#portfolioModal1" class="portfolio-link"
					data-toggle="modal">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img src="resources/img/portfolio/3.png" class="img-responsive"
					alt="">
				</a>
				<div class="portfolio-caption">
					<h4>팀 명</h4>
					<p class="text-muted">팀 소개</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 portfolio-item">
				<a href="#portfolioModal1" class="portfolio-link"
					data-toggle="modal">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img src="resources/img/portfolio/3.png" class="img-responsive"
					alt="">
				</a>
				<div class="portfolio-caption">
					<h4>팀 명</h4>
					<p class="text-muted">팀 소개</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 portfolio-item">
				<a href="#portfolioModal1" class="portfolio-link"
					data-toggle="modal">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img src="resources/img/portfolio/1.png" class="img-responsive"
					alt="">
				</a>
				<div class="portfolio-caption">
					<h4>팀 명</h4>
					<p class="text-muted">팀 소개</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 portfolio-item">
				<a href="#portfolioModal1" class="portfolio-link"
					data-toggle="modal">
					<div class="portfolio-hover">
						<div class="portfolio-hover-content">
							<i class="fa fa-plus fa-3x"></i>
						</div>
					</div> <img src="resources/img/portfolio/2.png" class="img-responsive"
					alt="">
				</a>
				<div class="portfolio-caption">
					<h4>팀 명</h4>
					<p class="text-muted">팀 소개</p>
				</div>
			</div>
		</div> -->

	</div>
</section>

<script>
 var result = '${msg}';
 
 if(result == 'SUCCESS'){
	 alert("신청이 완료되었습니다.")
 }
</script>

<%@include file="include/footer.jsp"%>



