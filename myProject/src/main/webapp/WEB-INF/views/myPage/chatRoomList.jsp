<%@page import="com.soccerkick.vo.ChatRoomVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="utf-8"> -->
<!-- <title>Moving > board</title> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->

<!-- <!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->

<!-- <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

<!-- </head> -->

<!-- <body> -->  
<%@include file="../include/header.jsp"%>

<!-- jsp code -->
<%
	ArrayList<ChatRoomVO> list = (ArrayList<ChatRoomVO>)request.getAttribute("list");
%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
<div class="content" style="margin : 0 auto; width:700px">
	<div class="board alert alert-success">
		<h1 class="boardtitle" align="center">대화방</h1>   
		<hr>  
		<div class="board_form">
			<!-- 			<a href="http://localhost:8000/Moving/board/board_form.jsp"> -->
			<div align="right">
				<button type="button" class="btn btn-success" onclick="location.href='http://172.16.13.19:8088/myPage/chat/form';">방생성</button>  
			</div>   
			<!-- 			</a> -->
			<br>
			<table class="table table-hover table-striped">
				<tr>
					<th>방 번호</th>
					<th>방 제목</th>
					<th>방 인원수</th>
					<th>생성 날짜</th>
				</tr>
				<% for(ChatRoomVO vo : list) { %>
				<tr>
					<td class="cno"><%= vo.getRno() %></td>
					<td class="title"><a
						href="/myPage/chat/chatRoom/<%=vo.getCno()%>">
						<%= vo.getTitle() %>
							</a></td>
					<td><%= vo.getCount() %></td>
					<td><%= vo.getReg_date() %></td>
					<!-- <td>20</td> -->
				</tr>
				<% } %>
			</table>
			<!-- 			<img src="http://localhost:8000/Moving/image/nav_bar.png"></img> -->
		</div>
	</div>
</div>
</section>
<!--  end of Content  -->



<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp" %>
<!-- ########## end of footer ################## -->

<!-- </body> -->
<!-- </html> -->
