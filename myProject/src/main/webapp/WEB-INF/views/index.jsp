<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>
<link href="/resources/css/news.contents.css" rel="stylesheet">

<section id="portfolio" class="bg-light-gray">
	<div class="news-contents">
		<ul class="news-list"></ul>
	</div>
	<button class="nav" id="left">left</button>
	<button class="nav" id="right">right</button>
</section>

<%@include file="include/footer.jsp"%>
<script src="/resources/js/news.contents.js"></script>



