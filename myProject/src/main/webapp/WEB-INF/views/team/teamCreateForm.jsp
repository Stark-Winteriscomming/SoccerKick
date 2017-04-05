<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
  
<%@include file="../include/header.jsp" %>
<style>
  		div.team_create {
			width:68%;
			margin:auto;  		
		}
		div.teamcreateform {
			width:90%;
			height:500px;
			margin:auto;			
		}
		h1.boardtitle {			
			border-bottom:1px solid gray;
		}		
		ul {
			display:block;
			width:95%;		
			
		}
		li {
			display:block;
			width:100%;
			list-style-type:none;
			margin-bottom:13px;
		}
		label {
			display:block;
			width:17%;		
			text-align:center;
			background:gray;
			color:white;	
			padding:4px 10px;
			float:left;
			margin-right:10px;
			
		}
		input[type='file'] {
			display:block;
			width:68%;
			padding:4px 10px;			
		}
		li.agree{
		overflow:hidden;
		}
		
	  	span.create_agree {
	  		display:inline-block;
	  		width:40%;
	  		/*padding:8px 8px;*/
	  		/*border:1px solid red;*/
	  	}
	  	span.btn1, span.btn2 {
  		display:inline-block;
  		width:100px;  		
  		padding:10px 15px 20px 15px;
  		color:white;
  		font-weight:bold;
  		border-radius:5px;
  		text-align:center;
  	}
  	span.btn1 {	background:rgb(155, 189, 70);	}
  	span.btn2 { background:gray; 	}
	  	
		 .upload-file {
			display:block;
			width:40%;
			padding:4px 10px;
			margin-right:5px;	
			float:left;		
		}
		label.upload-text {
			display: inline-block;
			width:10%;
			color: white;
			padding:5px 10px;
			border-radius: 4px;
			background-color:#5A78AF;
			position: absolute;
		}
		.upload-hidden{
			display: inline-block;
			width:20%;
			opacity:0;
			position: relative;
		}
  	</style>	
<section id="portfolio" class="bg-light-gray">

<div class="team_create">
		<h1 class="boardtitle">팀 생성하기</h1>
		<hr>
		<div class="team_create_form">
		<form name="teamcreateform" action="" method="post" >
			<ul>
				<li>
					<label>팀명</label>
					<input type="text" name="teamName" id="teamName" placeholder="팀이름">					
				</li>
				<li>
							<!--  start of image carousel -->
		<label>포메이션</label>
		
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		      <!--  <li data-target="#myCarousel" data-slide-to="3"></li> -->
		    </ol>
		
		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">
		
		      <div class="item active">
		        <img src="img/for1.jpg" width="20%" height="100">
		        <div class="carousel-caption">
		          <h3>포메이션1</h3>
		          <p>...</p>
		        </div>
		      </div>
		
		      <div class="item">
		        <img src="img/for2.jpg"  width="20%" height="100">
		        <div class="carousel-caption">
		          <h3>포메이션2</h3>
		          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
		        </div>
		      </div>
		    
		      <div class="item">
		        <img src="img/for3.jpg"  width="20%" height="100">
		        <div class="carousel-caption">
		          <h3>포메이션3</h3>
		          <p>Beatiful flowers in Kolymbari, Crete.</p>
		        </div>
		      </div>
		
		 
		  
		    </div>
		
		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>		
		
		<!--  end of image carousel -->
				</li>
				<li>
						<label>팀설명</label>
						<textarea rows="10" cols="50" name="content" id="content"></textarea>						
				</li>
				<li class="filebox">
						<label>팀로고 등록</label>
						<input type="text" name="fname" id="fname" class="upload-file" placeholder="파일선택"> 
						<label class="upload-text" id="btnUpload">업로드</label> 
						<input type="file" name="uploadFile" class="upload-hidden">
				</li>
				<li>
					<label>지역</label>
						<select name="selBox">
                           <option value="1">서울</option>   
                           <option value="2">부산</option>    
                           <option value="3">제주</option>
                           <option value="4">대구</option>
                           <option value="5">대전</option>
                           <option value="6">전주</option>
                           <option value="7">광주</option>    
                       </select>
				</li>
	
				<li class="agree">
					<label>약관 동의</label>
					<input type="checkbox" name="agree" id="agree">
					<span class="create_agree"> 약관에 동의합니다.</span>
							<!-- <img src="../css/image/tick.png"> -->
					
				</li>
				<li class="sending">
					<span class="btn1" id= "createCheck" >팀 생성 &nbsp;<!-- <img src="../css/image/tick.png"> --></span>&nbsp;&nbsp;
					<span class="btn2" id= "createCancle">취소 &nbsp;<!-- <img src="../css/image/cross.png">--></span>
				</li>
			</ul>
		</form>
		</div>
	</div>
            
</section>
  
<%@include file="../include/footer.jsp" %>
