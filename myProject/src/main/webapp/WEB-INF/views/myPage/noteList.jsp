<%@page import="com.soccerkick.vo.ChatRoomVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header.jsp"%>

<!-- jsp code -->
<%
	//ArrayList<ChatRoomVO> list = (ArrayList<ChatRoomVO>) request.getAttribute("list");
%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px">
		<div class="board alert alert-success">
			<h1 class="boardtitle" align="center">쪽지 함</h1>
			<hr>
			<div class="board_form">
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="search">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<div align="right">
					<button type="button" class="btn btn-success"
						onclick="location.href='http://172.16.13.19:8088/myPage/chat/form';">쪽지 함 생성</button>
				</div>
				<!-- 			</a> -->
				<br>
				<table class="table table-hover table-striped">
					<tr>
						<th>쪽지</th>
					</tr>
					<%
						//for (ChatRoomVO vo : list) {
					%>
					<tr>
						<td class="cno"></td>
						<td class="title"><a
							href="/myPage/chat/chatRoom/?title="> 
						</a></td>
						<td></td>
						<td></td>
					</tr>
					<%
						//}
					%>
				</table>
			</div>
		</div>
	</div>
</section>
<!--  end of Content  -->



<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->
