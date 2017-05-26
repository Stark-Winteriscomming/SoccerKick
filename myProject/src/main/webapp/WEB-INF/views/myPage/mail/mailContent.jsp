<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../../include/header.jsp"%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px">
		<div class="board alert alert-success">
			<hr>
			<div class="board_form">
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="search">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<br>
				<table class="table table-hover table-striped">
					<tr>
						<td>보낸 사람</td>
						<td>${vo.send_id}</td>
					</tr>
					<tr>
						<td>받는 사람</td>
						<td>${vo.recv_id}</td>
					</tr>
					<tr>
						<td>제목</td>
						<td>${vo.title}</td>
					</tr>
					<tr>
						<td>내용</td>
						<td class="title">${vo.content}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</section>
<!-- ########## start of footer ################## -->
<%@include file="../../include/footer.jsp"%>
<!-- ########## end of footer ################## -->