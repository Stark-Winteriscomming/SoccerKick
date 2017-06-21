<%@page import="com.soccerkick.vo.GameBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.soccerkick.vo.MatchingVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	GameBoardVO gvo = (GameBoardVO)request.getAttribute("gvo");
%>
<%@include file="include/header.jsp"%>
<link href="/resources/css/news.contents.css" rel="stylesheet">
<style>
	#myCarousel{
		height:470px;
		margin-bottom: 50px;
	}
	.carousel-inner{
		height:470px;
	}
	#panel-title{
		text-align: center;
	}
	.panel-body{
		text-align: center;
	}
</style>
<section id="portfolio" class="bg-light-gray">
		<div class="container">
	  <br>
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	
	      <div class="item active">
	        <div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							<%=gvo.getGametitle() %><a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>      
					</div>      
					<div class="panel-body">
					<a href="/gBoard/gameInfo?team_id=<%=gvo.getGametitle() %>&client_id=<%=gvo.getHost() %>&gameno=<%=gvo.getGameno()%>">     
					<img src="/upload/<%=gvo.getTeam_logo_file_name() %>" style="width:800px;height:300px;"   
						class="img-responsive img-circle img-thumbnail" alt=""> </a> 
						<br><br>   
					<div align="center">
					<span class="label label-primary label-lg">장소</span> <br><%=gvo.getPlace() %> <br>        
					<span class="label label-primary label-lg">경기 일자</span> <br> <%=gvo.getEndday() %>   
					</div>
					</div>  
					</div>
	      </div>
		  <c:forEach items="${glist}" var="vo">  
	      <div class="item">
	       <div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">
							${vo.gametitle}<a class="anchorjs-link" href="#panel-title"><span
								class="anchorjs-icon"></span></a>
						</h3>      
					</div>      
					<div class="panel-body">
					<a href="/gBoard/gameInfo?team_id=${vo.team_id}&client_id=${vo.host}&gameno=${vo.gameno}">     
					<img src="/upload/${vo.team_logo_file_name}" style="width:800px;height:300px;"   
						class="img-responsive img-circle img-thumbnail" alt=""> </a>
						<br><br>   
					<div align="center">
					<span class="label label-primary label-lg">장소</span> <br>${vo.place} <br>        
					<span class="label label-primary label-lg">경기 일자</span> <br> ${vo.endday}  
					</div>
					</div>  
					</div>  
	    </div>
		</c:forEach>
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
	</div>
	<div align="center">
		<div class="panel panel-primary" style="width: 500px">
			<div class="panel-heading">
				<h3 class="panel-title" id="panel-title">
					뉴스<a class="anchorjs-link" href="#panel-title"><span
						class="anchorjs-icon"></span></a>
				</h3>
			</div>
			<div class="panel-body">
				<div>
					<div class="news-contents" align="left">
						<ul class="news-list"></ul>
					</div>
					<div align="center">
						<button class="nav btn btn-default" id="left" style="width: 15px">
							<span class="glyphicon glyphicon-triangle-left"
								aria-hidden="true"></span>
						</button>
						<button class="nav btn btn-default" id="right" style="width: 15px">
							<span class="glyphicon glyphicon-triangle-right"
								aria-hidden="true"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div align="center">  
	<div class="panel panel-primary" style="width: 500px">
		<div class="panel-heading">
			<h3 class="panel-title" id="panel-title">
				Panel title<a class="anchorjs-link" href="#panel-title"><span
					class="anchorjs-icon"></span></a>
			</h3>
		</div>
		<div class="panel-body">
			<table class="table table-stripped">
				<tr>
					<th>순위</th>
					<th>팀이름</th>
					<th>팀포인트</th>
				</tr>
				<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.rownum }</td>
						<td><img src="upload/${vo.team_logo_file_name}" style="width: 50px; height: 50px;"> ${vo.team_name }</td>
						<td>${vo.team_point }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</div>
</section>

<%@include file="include/footer.jsp"%>
<script src="/resources/js/news.contents.js"></script>



