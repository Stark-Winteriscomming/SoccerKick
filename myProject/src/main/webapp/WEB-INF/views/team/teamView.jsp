<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">팀 정보</h2>
				<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">-comment-</h3>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${list}" var="vo">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="gBoard/read?team_id=${vo.team_id}" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img src="upload/${vo.team_logo_file_name}"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>${vo.team_name}</h4>
						<p class="text-muted">${vo.team_history}</p>
						<button class="btn btn-primary">상세 보기</button>
						<button class="btn btn-primary">대결 신청</button>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>


<%@include file="../include/footer.jsp"%>



