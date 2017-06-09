<%@page import="java.util.ArrayList"%>
<%@page import="com.soccerkick.vo.MatchingVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<TeamVO> list = (ArrayList<TeamVO>)request.getAttribute("list");
%>
<%@include file="include/header.jsp"%>
<link href="/resources/css/news.contents.css" rel="stylesheet">
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
			  <br>
			  <div id="myCarousel" class="carousel slide" data-ride="carousel">
			    
			    <!-- Wrapper for slides -->
			    <div class="carousel-inner" role="listbox">
			   	<%for(TeamVO vo : list){ %>
			      <div class="item active">
					<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="/team/teamView?team_id=<%=vo.getTeam_id() %>"
						class="portfolio-link" data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img src="/upload/${vo.team_logo_file_name}"
						style="width: 100%; height: 100%;" class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>${vo.team_name}</h4>
						<p class="text-muted">${vo.team_history}</p>
						<a href="/team/teamView?team_id=${vo.team_id}"><button class="btn btn-primary">상세 보기</button></a>
					</div>
				</div>				        
			      </div>
			      <div class="item">
			      </div>
				<%} %>
			    </div>
			
			    <!-- Left and right controls -->
			    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			      <span class="sr-only">Next</span>
			    </a>
		</div>
	</div>
	<div class="news-contents">
		<ul class="news-list"></ul>
	</div>
	<button class="nav" id="left">left</button>
	<button class="nav" id="right">right</button>
</section>

<%@include file="include/footer.jsp"%>
<script src="/resources/js/news.contents.js"></script>



