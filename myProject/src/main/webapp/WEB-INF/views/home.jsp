<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%
	String sid = (String)request.getAttribute("sid");
	String client_id = (String)request.getAttribute("client_id");
%>

<%@include file="include/header.jsp"%>

<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">
					<span class="label label-primary">선수 모집 中</span>  
				</h2>
				<h3 class="section-subheading text-muted"
					style="margin-bottom: 20px">-입단 신청을 할 수 있습니다-</h3>  
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
					<a href="gBoard/read?team_id=${vo.team_id}" class="portfolio-link" data-toggle="modal" > 
						<div class="portfolio-hover">  
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div>  
						<img src="upload/${vo.team_logo_file_name}" class="img-responsive" alt="" style="width:400px;height:300px;"> 
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
 

<%@include file="include/footer.jsp"%>

<script>  
swal("팀에 입단 신청을 할 수 있습니다.")
</script> 



