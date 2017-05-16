<%@page import="com.soccerkick.vo.NoteGroupVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header.jsp"%>

<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px">
		<div class="board alert alert-info">
			<h1 class="boardtitle" align="center">쪽지 함</h1>
			<hr>
			<div class="board_form">
				<div class="form-group">
					<input type="text" class="form-control" list="items"
						placeholder="search">
					<datalist id="items">
						<option value="Chrome">
						<option value="Firefox">
						<option value="Internet Explorer">
						<option value="Opera">
						<option value="Safari">
						<option value="Microsoft Edge">
					</datalist>
				</div>     
				</form> 
				<div align="right">
					<button type="button" class="btn btn-info"
						onclick="location.href='http://172.16.13.19:8088/myPage/chat/form';">쪽지
						함 생성</button>
				</div>
				<!-- 			</a> -->
				<br>
				<table class="table table-hover table-striped">
					<tr>
						<th>쪽지</th>
					</tr>
					<c:forEach items="${list}" var="vo">
					<tr>
						<td class="group_id"><a
							href="/myPage/note/content?groupId=${vo.group_id}">${vo.group_id}</a></td>
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
