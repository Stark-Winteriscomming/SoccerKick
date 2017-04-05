<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- #container{width:100%;}
#left{float:left;width:100px;}
#right{float:right;width:100px;}
#center{margin:0 auto;width:100px;} -->


<%@include file="../include/header.jsp"%>
<section id="gatheringFrom" class="bg-light-gray">
<div align="center"> 
	<div>  
			모임 명<br><input type="text" name="gatheringName" value=""
				id="gatheringName"><br> 
			지역<br><input type="text" name="region" value=""><br>
		<p>날짜</p>
		<select>
			<%
						for (int i = 1; i <= 12; i++) {
					%>
			<option value="m1"><%=i%>월</option>
			<%
						}
					%>
		</select> 
		<select>
			<%
						for (int i = 1; i <= 31; i++) {
					%>
			<option value="d1"><%=i%>일</option>
			<%
						}
					%>
		</select> 
	</div>

	<div>
		<img src="../resources/img/team/formation.jpg" alt="">
	</div>

	<div class="">
		<p>모임설명</p>
		<textarea name="name" rows="8" cols="80"></textarea>
	</div>
	<button class="btn btn-success btn-lg"
			style="width: 300px; height: 70px">모임 생성</button>
</div>  
</section> 
<%@include file="../include/footer.jsp"%>
