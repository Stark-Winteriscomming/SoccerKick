<%@page import="com.soccerkick.vo.NoteGroupVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../../include/header.jsp"%>

<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px">
		<div class="board alert alert-info">
			<h1 class="boardtitle" align="center">메일함</h1>
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
						onclick="location.href='/myPage/mail/form';">메일쓰기</button>
				</div>
				<br>
				<table class="table table-hover table-striped">
					<c:forEach items="${list}" var="vo">
						<tr>
							<td style="text-align: center;"><input type="checkbox"
								name="mailCheck" value="" /></td>
							<td class="sendId">${vo.send_id}</td>
							<td class="title"><a
								href="/myPage/mail/content/${vo.mail_no}"> ${vo.title} </a></td>
							<td>${vo.reg_date}</td>
							<c:choose>
								<c:when test="${vo.is_checked == 0}">
									<td>읽지 않음</td>
								</c:when>
								<c:otherwise>
									<td>읽음</td>
								</c:otherwise>
							</c:choose>
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
<%@include file="../../include/footer.jsp"%>
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
