<%@page import="com.soccerkick.vo.ChatRoomVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.URLEncoder"%>

<%@include file="../include/header.jsp"%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px">
		<div class="board alert alert-info">
			<h1 class="boardtitle" align="center">대화방</h1>
			<hr>
			<div class="board_form">
				<!-- 			<a href="http://localhost:8000/Moving/board/board_form.jsp"> -->
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="search">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<div align="right">
					<button type="button"
						onclick="location.href='http://172.16.13.19:8088/myPage/chat/form';">방생성</button>
				</div>
				<!-- 				class="btn btn-info" -->
				<!-- 			</a> -->
				<br>
				<table class="table table-hover table-striped">
					<tr>
						<th>방 번호</th>
						<th>방 제목</th>
						<th>방 인원수</th>
						<th>생성 날짜</th>
					</tr>
					<c:forEach items="${list}" var="vo">
						<tr>
							<td class="cno">${vo.rno}</td>
							<c:set var="title" value="${vo.title}" />
							<%
							    String title = (String)pageContext.getAttribute("title");   //No exception.
							%>

							<td class="title"><a
								href="/myPage/chat/chatRoom/${vo.cno}?title=<%=URLEncoder.encode(title,"UTF-8")%>">
									${vo.title} </a></td>
							<td>${vo.count}</td>
							<td>${vo.reg_date}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</section>
<!--  end of Content  -->

<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->

