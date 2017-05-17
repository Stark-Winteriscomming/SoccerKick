<%@page import="com.soccerkick.vo.NoteGroupVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../../include/header.jsp"%>

<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content" style="margin: 0 auto; width: 700px">
<<<<<<< HEAD:myProject/src/main/webapp/WEB-INF/views/myPage/noteList.jsp
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
=======
		<div class="board alert alert-success">
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
>>>>>>> 1452d9efa9d51b9ce9e5eed376318cf999690f2b:myProject/src/main/webapp/WEB-INF/views/myPage/mail/mailList.jsp
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
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</section>
<!--  end of Content  -->




<!-- ########## start of footer ################## -->
<%@include file="../../include/footer.jsp"%>
<!-- ########## end of footer ################## -->
