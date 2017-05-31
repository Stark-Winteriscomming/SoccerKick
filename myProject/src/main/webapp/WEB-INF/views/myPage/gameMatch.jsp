<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<input type="hidden" name="a_applicant"
	value="${sessionScope.login.client_id}">
<div class="row">
	<div class="col-md-offset-3 col-md-3">
		<br>
		<br>
		<div class="alert alert-info">

			들어온 신청
			<table class="table table-stripped">
				<tr>
					<th>host</th>
					<th>applicant</th>
					<th>수락</th>
					<th>팀정보</th>
					<th></th>
				</tr>
				<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.host}</td>
						<td>${vo.applicant}</td>
						<c:choose>
							<c:when test="${vo.result!='1'}">
								<td><a
									href="/myPage/admit?host=${vo.host}&applicant=${vo.applicant}">수락
										하기</a></td>
							</c:when>
							<c:otherwise>
								<td>수락완료</td>
							</c:otherwise>
						</c:choose>
						<td><a href="/myPage/teamView?client_id=${vo.applicant}">팀정보</a>
						</td>
					<tr>
				</c:forEach>
			</table>
			<br>
			<br>
			<br>
		</div>
		<div class="alert alert-info">
			내가 신청한 대결
			<table class="table table-stripped">
				<tr>
					<th>팀이름</th>
					<th>수락</th>
					<th>팀정보</th>
					<th></th>
				</tr>
				<c:forEach items="${list2}" var="vo">
					<tr>
						<td>${vo.host}</td>
						<c:choose>
							<c:when test="${vo.result!='1'}">
								<td>기다리는 중</td>
							</c:when>
							<c:otherwise>
								<td>수락함</td>
							</c:otherwise>
						</c:choose>
						<td><a href="/myPage/teamView?client_id=${vo.applicant}">팀정보</a>
						</td>
					<tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>




<%@include file="../include/footer.jsp"%>
