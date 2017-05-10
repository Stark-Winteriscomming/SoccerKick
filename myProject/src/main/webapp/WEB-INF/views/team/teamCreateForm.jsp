<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<style>
div.team_create {
	width: 68%;
	margin: auto;
}
div.team_create_Form{
	
}
div.teamcreateform {
	width: 90%;
	height: 500px;
	margin: auto;
}

h1.boardtitle {
	border-bottom: 1px solid gray;
}

.formation_ul {
	display: block;
	width: 95%;
}

.formation_ul li {
	display: block;
	width: 100%;
	list-style-type: none;
	margin-bottom: 13px;
}

.team_comment {
	margin-top: 40px;
}

.label2 {
	display: block;
	width: 17%;
	text-align: center;
	background: gray;
	color: white;
	padding: 4px 10px;
	float: left;
	margin-right: 10px;
}

input[type='file'] {
	display: block;
	width: 135px;
	padding: 4px 10px;
}

span.btn1,span.btn2 {
	display: inline-block;
	width: 100px;
	padding: 10px 15px 20px 15px;
	color: white;
	font-weight: bold;
	border-radius: 5px;
	text-align: center;
}

span.btn1 {
	background: rgb(155, 189, 70);
}

span.btn2 {
	background: gray;
}

.upload-file {
	display: block;
	width: 40%;
	padding: 4px 10px;
	margin-right: 5px;
	float: left;
}

label.upload-text {
	display: inline-block;
	width: 10%;
	color: white;
	padding: 5px 10px;
	border-radius: 4px;
	background-color: #5A78AF;
	position: absolute;
}

.upload-hidden {
	display: inline-block;
	
	opacity: 0;
	position: relative;
}

#myCarousel {
	width: 500px;
	height: 650px;
	margin-top: 20px;
}

.formation_select {
	width: 650px;
	margin-top: 10px;
}

#formation_433 {
	width: 350px;
	margin: 0 auto;
}

#formation_433 input {
	width: 100%;
	height: 40px;
	text-align: center;
	border: 1px solid #bcbcbc;
	border-radius: 5px;
	background-color: lightgray;
	font-size: 1.5em;
}
.carousel-inner{
	width: 500px;
	height: 653px;
}
.item active, .item{
	width: 500px;
	height: 650px;
	background: url("/resources/img/433.png");
	background-size:500px; 
}

.position_value{
	width:210px;
	height:26px;
	margin:0 auto;
}
.position_value input{
	width:100%;
	text-align: center;
}
</style>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
	<div class="team_create">
		<h1 class="boardtitle">팀 생성하기</h1>
		<hr>
		<div class="team_create_form">
			<form name="teamcreateform" action="teamCreateForm_check" method="post" enctype="multipart/form-data">
				<ul class="formation_ul">
					<li>
						<label class="label2">팀명</label> <input type="text"
						name="team_name" id="teamName" placeholder="팀이름">
					</li>
					<li>
						<!--  start of image carousel --> <label class="label2">포메이션</label>
						<br>
						<div id="myCarousel" class="carousel slide" data-ride="carousel"  data-interval="false">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
								<li data-target="#myCarousel" data-slide-to="3"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="position_value">
										<input type="text" value="4-3-3" name="team_formation" />
									</div>
								</div>
								
								<div class="item" style="background: url('/resources/img/4231.png'); background-size:500px;">
									<div class="position_value">
										<input type="text" value="4-2-3-1" name="team_formation" />
									</div>
									
								</div>
								
								<div class="item" style="background: url('/resources/img/41212.png'); background-size:500px;">
									<div class="position_value">
										<input type="text" value="4-1-2-1-2" />
									</div>
									
								</div>

							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</li>
					<li class="team_comment"><label class="label2">팀설명</label> <textarea
							rows="10" cols="50" name="team_history" id="content"></textarea></li>
					<li class="filebox"><label class="label2">팀로고 등록</label> <input
						type="text" name="team_logo_file_name" id="fname" class="upload-file"
						placeholder="파일선택"> 
						<label class="upload-text" id="btnUpload">업로드</label>
						<input type="file" name="uploadfile"
						class="upload-hidden">
					</li>
					<li><label class="label2">지역</label>
				 	<select name="team_region">
							<option value="1">서울</option>
							<option value="2">부산</option>
							<option value="3">제주</option>
							<option value="4">대구</option>
							<option value="5">대전</option>
							<option value="6">전주</option>
							<option value="7">광주</option>
					</select></li>


					<li class="sending"><span class="btn1" id="createCheck">팀
							생성 &nbsp;<!-- <img src="../css/image/tick.png"> -->
					</span>&nbsp;&nbsp; <span class="btn2" id="createCancle">취소 &nbsp;<!-- <img src="../css/image/cross.png">--></span>
					</li>
					
					<button>팀생성</button>
				</ul>

			</form>
		</div>
		</div>
</section>

<%@include file="../include/footer.jsp"%>
