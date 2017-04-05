<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Moving > board</title>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<style>
  		div.content div.board {
			width:68%;
			margin:auto;
		}
		div.content div.board div.board_form {
			width:85%;
			margin:auto;
		}
		h1.boardtitle {
			border-bottom:1px solid gray;
		}
		table{
			width:100%;
			border:1px solid gray;
			margin-bottom:20px;

		}
		th, td {
			border:1px solid gray;
			padding:7px 0px;
			text-align:center;
		}
		th {
			background:#A6A6A6;
		}
		.tno {	width:10%;	}
		td.ttile {
			width:60%;
			text-align:left;
			text-indent:10px;}
		.tdate { width:20%; }
		.thit { width:10%; }
		img {
			margin-left:60px;
		}
		span.board_write {
	  		display:inline-block;
	  		width:20%;
	  		background:#1C1C1C;
	  		padding:5px 8px;
	  		color:white;
	  		font-weight:bold;
	  		border-radius:4px;
	  		border:2px double white;
	  		text-align:center;
	  		float:right;
	  		margin-bottom:10px;

	  	}
  	</style>
</head>
<body>
	<!-- ########## start of header ################## -->
<!--  	<iframe width="100%" height="200" src="http://localhost:8000/Moving/header.jsp" -->
<!--  		frameborder=0 scrolling="no"></iframe> -->
 	<!-- ########## end of header ################## -->


 	<!--  start of Content  -->
	<div class="content">
		<div class="board">
		<h1 class="boardtitle">대화방</h1>
		<hr>
		<div class="board_form">
<!-- 			<a href="http://localhost:8000/Moving/board/board_form.jsp"> -->
				<span class="board_write">방 생성</span>
<!-- 			</a> -->
			<table>
				<!-- <tr> -->
					<!-- <th class="tno">번호</th> -->
					<!-- <th class="ttile">占쏙옙占쏙옙</th>
					<th class="tdate">占쏙옙占쏙옙占쏙옙</th>
					<th class="thit">占쏙옙占쏙옙 占싸울옙</th> -->
				<!-- </tr> -->
				<tr>
					<td class="tno">1</td>
					<td class="ttile">
						<a href="http://localhost:8000/Moving/board/board_content.jsp">
						양평 FC 토크방</a>
					</td>
					<td>2016-02-16</td>
					<!-- <td>20</td> -->
				</tr>
        <tr>
					<td class="tno">2</td>
					<td class="ttile">
						<a href="http://localhost:8000/Moving/board/board_content.jsp">
						솔데스크 FC 토크방</a>
					</td>
					<td>2016-02-16</td>
					<!-- <td>20</td> -->
				</tr>
        <tr>
					<td class="tno">3</td>
					<td class="ttile">
						<a href="http://localhost:8000/Moving/board/board_content.jsp">
						종로 FC 토크방</a>
					</td>
					<td>2016-02-16</td>
					<!-- <td>20</td> -->
				</tr>
			</table>
<!-- 			<img src="http://localhost:8000/Moving/image/nav_bar.png"></img> -->
		</div>
	</div>
	</div>
	<!--  end of Content  -->



	<!-- ########## start of footer ################## -->
<!-- 	<iframe width="100%" height="280" src="http://localhost:8000/Moving/footer.jsp" -->
<!-- 			frameborder=0 scrolling="no"></iframe>			 -->
	<!-- ########## end of footer ################## -->

</body>
</html>
