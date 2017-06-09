<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ page import = "com.soccerkick.vo.PlaceVO" %>
  
  
<%@include file="../include/header.jsp" %>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
	<div class="row">
  
  <!--  <a href="/place_content?no=${vo.no }&rno=${rno}"> -->
  <c:forEach items="${list}" var="vo">
	<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <!--  <img src= "../resources/ground/1.jpgame} alt="..." > -->
        <img src="http://localhost:9090/resources/ground/${vo.pfname}" width="299" height="168" />
        
      <div class="caption">
        <h3 class="title"><a href="/gBoard/place_content?no=${vo.no }&rno=${rno}">${vo.title}</a></h3>
        <p class="no">${vo.no}</p>
        <p class="tno">${vo.rno}</p>
        <p class="phone">${vo.phone}</p>
        <p class="intro">${vo.intro}</p>              
        <p><a href="#" class="btn btn-primary" role="button">선택하기</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>   
  </div>
	
  </c:forEach>	
  <!--  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../resources/ground/2.jpg" alt="...">
      <div class="caption">
        <h3>강남 경기장</h3>
        <p>...</p> 
        <p><a href="#" class="btn btn-primary" role="button">선택하기</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../resources/ground/3.jpg" alt="...">
      <div class="caption">
        <h3>동대문 경기장</h3>
        <p>...</p> 
        <p><a href="#" class="btn btn-primary" role="button">선택하기</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
 
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../resources/ground/2.jpg" alt="...">
      <div class="caption">  
        <h3>광진 경기장</h3>
        <p>...</p> 
        <p><a href="#" class="btn btn-primary" role="button">선택하기</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
 
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../resources/ground/5.jpg" alt="...">
      <div class="caption">
        <h3>서초 경기장</h3>
        <p>...</p> 
        <p><a href="#" class="btn btn-primary" role="button">선택하기</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div> 
  </div>-->
  
</div>  
	</div>  
</section>        
<%@include file="../include/footer.jsp" %>
