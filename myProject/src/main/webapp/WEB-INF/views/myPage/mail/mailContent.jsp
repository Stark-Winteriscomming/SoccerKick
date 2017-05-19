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

					</div>
				</table>
				<div style="border:1px solid white;background-color:white;height:100px;color:black;">
					${vo.content}
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ########## start of footer ################## -->
<%@include file="../../include/footer.jsp"%>
<!-- ########## end of footer ################## -->