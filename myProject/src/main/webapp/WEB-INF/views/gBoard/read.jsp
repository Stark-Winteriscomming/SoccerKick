<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
  
<%@include file="../include/header.jsp" %>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
	<div class="btn-group-vertical navbar-fixed-top"  role="group" aria-label="..." style="top: 550px; left: 30px;"> 
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 1</button>
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 2</button>
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 3</button>
	</div>
	<div align="center">
	<h1>팀명 - 서울성북</h1>
	</div>
	<br>
	<div class="row">
	<div class="col-md-offset-4 col-md-4">   
			<img src="../resources/img/portfolio/1.png" class="img-circle" style="width: 350px; height: 350px;">  
		</div> 
		<div class="team-member col-md-2" style="margin-top: 70px;">
			감독-안상호
            <img src="../resources/img/team/1.jpg" class="img-responsive img-circle" alt="">
            <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a>
            </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a>
            </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a>
            </li>
            </ul>
         </div>    
		
	</div>
	<br><br>
	
		
         <div align="center">
			<img src="../resources/img/team/formation.jpg">
		 </div>
		 <div align="center">
		 <div class="panel panel-success" style="width: 691px"> 
		      <div class="panel-heading">
		        <h3 class="panel-title" id="panel-title">팀 소개<a class="anchorjs-link" href="#panel-title"><span class="anchorjs-icon"></span></a></h3>
		      </div>
		      <div class="panel-body">
		        생략
		      </div>
	     </div>
	     </div>     
		 <br>  
		 <div align="center"> 
		 	<button class="btn btn-success btn-lg" style="width: 300px; height:70px">신청 하기</button>
		 </div>
		 
	</div>
</section>
<%@include file="../include/footer.jsp" %>
