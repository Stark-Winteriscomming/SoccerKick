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
        <h5 class="phone">전화 : ${vo.phone}</h5>
        <h5 class="intro">소개 : ${vo.intro}</h5>              
      </div>
    </div>   
  </div>
	
  </c:forEach>	
  
</div>  
	</div>  
</section>        
<%@include file="../include/footer.jsp" %>
