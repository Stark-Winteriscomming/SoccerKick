<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
  
<%@include file="../include/header.jsp" %>
<section id="portfolio" class="bg-light-gray">
   <div class="team_create">
		<h1>팀 생성하기</h1>
		<hr>
		<div class="team_create_form">
		<form name="teamcreateform" action="" method="post" >
			<ul>
				<li>
					<label>팀명</label><br>
					<input type="text" name="teamName" id="teamName" placeholder="팀이름">					
				</li>
				<li>
							<!--  start of image carousel -->
		<label>포메이션</label>
		<section>
			<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 540px;">
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
		        <img src="../../../resources/img/for1.jpg">
		        <div class="carousel-caption">
		          <h3>포메이션1</h3>
		          <p>...</p>
		        </div>
		      </div>
		
		      <div class="item">
		        <img src="../../../resources/img/for2.jpg">
		        <div class="carousel-caption">
		          <h3>포메이션2</h3>
		          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
		        </div>
		      </div>
		    
		      <div class="item">
		        <img src="../../../resources/img/for3.jpg">
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
		</section>
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
					<label>지역</label><br>
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
	
				<li>
					<label>약관 동의</label><br>
					
					<input type="checkbox" name="agree" id="agree">
							<!-- <img src="../css/image/tick.png"> -->
					<span class="notice2">약관에 동의합니다.</span>
				</li>
				<li class="sending">
					<span class="btn1" id= "joinCheck" >팀 생성 &nbsp;<!-- <img src="../css/image/tick.png"> --></span>&nbsp;&nbsp;
					<span class="btn2" id= "joinCancle">취소 &nbsp;<!-- <img src="../css/image/cross.png">--></span>
				</li>
			</ul>
		</form>
		</div>
	</div>






</section>
<%@include file="../include/footer.jsp" %>
