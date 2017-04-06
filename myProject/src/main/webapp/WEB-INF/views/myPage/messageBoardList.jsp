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
<!--  start of Content  -->
<section>
<div class="content" style="margin : 0 auto; width:700px">
	<div class="board">
		<h1 class="boardtitle">대화방</h1>
		<hr>
		<div class="board_form">
			<!-- 			<a href="http://localhost:8000/Moving/board/board_form.jsp"> -->
			<p>
				<button type="button" class="btn btn-warning">방생성</button>
			</p>
			<!-- 			</a> -->
			<table class="table">
				<tr>
					<td class="tno">1</td>
					<td class="ttile"><a
						href="http://localhost:8088/myPage/message/chatRoom"> 양평 FC
							토크방</a></td>
					<td>2016-02-16</td>
					<!-- <td>20</td> -->
				</tr>
				<tr>
					<td class="tno">2</td>
					<td class="ttile"><a
						href="http://localhost:8088/myPage/message/chatRoom"> 왕좌의 게임
							단체방</a></td>
					<td>2016-02-16</td>
					<!-- <td>20</td> -->
				</tr>
				<tr>
					<td class="tno">3</td>
					<td class="ttile"><a
						href="http://localhost:8088/myPage/message/chatRoom"> 종로 FC
							토크방</a></td>
					<td>2016-02-16</td>
					<!-- <td>20</td> -->
				</tr>
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
