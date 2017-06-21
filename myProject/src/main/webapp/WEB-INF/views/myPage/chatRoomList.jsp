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
				<form class="navbar-form navbar-left" role="search" action="/myPage/chatRoomList">
					<div class="form-group">
						<input type="text" name="searchText" class="form-control" placeholder="제목으로 검색">
					</div>
					<button type="submit" class="btn btn-default">찾기</button>
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
								String title = (String) pageContext.getAttribute("title"); //No exception.
							%>

							<td class="title"><a
								href="/myPage/chat/chatRoom/${vo.cno}?title=<%=URLEncoder.encode(title,"UTF-8")%>">
									${vo.title} </a></td>
							<td>${vo.count}</td>
							<td>${vo.reg_date}</td>
						</tr>
					</c:forEach>
				</table>
				<%-- 페이지 네비게이션 시작 --%>
				<span id="tcount" style="display: none">${tcount}</span>
				<ul class="pagination pagination-sm" id="document_navi3">
					<li class="prev"><a href="#">&laquo;</a></li>
					<li class="disabled prevx"><a href="#">&laquo;</a></li>
					<span class="pageaction"></span>
					<li class="num"><a href="#">{page}</a></li>
					<li class="active now"><a href="#">{page} <span
							class="sr-only">(current)</span></a></li>
					<li class="next"><a href="#">&raquo;</a></li>
					<li class="disabled nextx"><a href="#">&raquo;</a></li>
				</ul>
				<%-- 페이지 네비게이션 종료  --%>
			</div>
		</div>
	</div>
</section>
<!--  end of Content  -->


<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->
<script src="/resources/js/jquery.pagenavigator.js"></script>
<script>
	$("document").ready(function() {
		//alert($("#tcount").text());
		$('#document_navi3').jaPageNavigator({
			page_row : "5" // 보여질 게시물 목록 수
			,
			page_link : "5" // 보여질 페이지 링크 수
			,
			total_count : $("#tcount").text()
		// 게시물 총 수     
		});
	});
</script>