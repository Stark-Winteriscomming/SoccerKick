<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<div style="height: 800px;">
<input type="hidden" name="a_applicant"
	value="${sessionScope.login.client_id}">
<div class="row">
	<div class="col-md-offset-4 col-md-4">   
	<br><br><br>
	<h3><span class="label label-success">경기 일정</span></h3>
	<br>
	<div class="alert alert-success">
		<table class="table table-stripped">
			<tr>
				<th>상대팀</th>
				<th>경기날짜</th>  
				<th>장소</th>
			</tr>  
			<c:forEach items="${list}" var="vo">
				<tr>     
					<td>${vo.applicant}</td>
  					<td>${vo.gameday}</td>
					<td>${vo.place}</td>         
				<tr>
			</c:forEach>  
		</table>  
		</div>
</div>
</div>


</div>

<%@include file="../include/footer.jsp"%>
