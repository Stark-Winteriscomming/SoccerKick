<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<div style="height: 800px;">
	<input type="hidden" name="a_applicant"
		value="${sessionScope.login.client_id}">
	<div class="row">
		<div class="col-md-offset-4 col-md-4">
			<br> <br>


			<h3>
				<span class="label label-primary">들어온 신청</span>
			</h3>
			<div class="alert alert-info">


				<table class="table table-stripped">
					<tr>
						<th>지원자</th>
						<th>수락</th>
						<th>팀정보</th>
						<th></th>
					</tr>
					<c:forEach items="${list}" var="vo">
						<tr>
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
				<br> <br> <br>
			</div>

			<h3>
				<span class="label label-primary">신청한 대결</span>
			</h3>
			<div class="alert alert-info">

				<table class="table table-stripped">
					<tr>
						<th>주최자</th>
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


</div>

<%@include file="../include/footer.jsp"%>

<script>
	var block = new Block('들어온 대결 신청을 수락할 수 있습니다.', 'gameMatch');
	if (getCookie(block.delemeter) !== 'false')
		block.display();
</script>
