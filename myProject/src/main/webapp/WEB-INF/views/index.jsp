<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>
<link href="/resources/css/news.contents.css" rel="stylesheet">

<section id="portfolio" class="bg-light-gray">





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


<c:forEach items="${list}" var="vo">
${vo.team_name }
</c:forEach>



</section>

<%@include file="include/footer.jsp"%>
<script src="/resources/js/news.contents.js"></script>



