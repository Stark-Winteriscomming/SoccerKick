<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ page import = "com.soccerkick.vo.PlaceVO" %>
  
  
<%@include file="../include/header.jsp" %>
<style>

.thumbnail{
	width:1000px;
	height:100%;
	background-color: #d9edf7;
	margin: 0 auto;
	
	
}
</style>
<!--  
<section id="portfolio" class="bg-light-gray">


	<div class="wrap_place_contentform">	
			<h2 class="title" align="center">${vo.title}</h2>
			<br>
			<br>
			<img src="http://localhost:9090/resources/ground/${vo.pfname}"  align="center"/>
			<h3 class="phone" align="left">전화번호: ${vo.phone}</h3>
            <h3 class="content" align="center"> ${vo.content}</h3>
			
		</div>
	
	
 	<h3>테스트 내용</h3>
	<hr>	
	<h4>상세 내용 보기</h4>
	<ul>
		<li>번호 : ${vo.rno }</li>
		<li>제목 : ${vo.title}</li>
		<li>내용 : ${vo.content}</li>
		<li>전화번호: ${vo.phone}</li>
		<img src="http://localhost:9090/resources/ground/${vo.pfname}" />
	</ul>

	<a href="selectPlace"><span>리스트이동</span></a> -->


<section id="portfolio" class="bg-light-gray" >
	<div class="container"  >
	<div class="row"  >
  
  <!--  <a href="/place_content?no=${vo.no }&rno=${rno}"> -->
  
	<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <!--  <img src= "../resources/ground/1.jpgame} alt="..." > -->
        <img src="http://localhost:9090/resources/ground/${vo.pfname}" />
        
      <div class="caption">
        <h1 class="title" align="center">${vo.title}</h1>
        <h3 class="phone"> telephone :<h4> ${vo.phone} </h4></h3>
        <h3 class="content"> information : <h4> ${vo.content} </h4></h3>              
      </div>
    </div>   
  </div>
	
	
  
</div>  
	</div>  
</section>      
<%@include file="../include/footer.jsp" %>
