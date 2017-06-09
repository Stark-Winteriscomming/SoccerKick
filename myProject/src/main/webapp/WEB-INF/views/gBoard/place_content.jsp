<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ page import = "com.soccerkick.vo.PlaceVO" %>
  
  
<%@include file="../include/header.jsp" %>
<section id="portfolio" class="bg-light-gray">

<body>
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
	<!--  <a href="place_update.do?no=${vo.no }&rno=${rno}>">수정</a>&nbsp;&nbsp;&nbsp;
	<a href="place_delete.do?no=no=${vo.no }">삭제</a>&nbsp;&nbsp;&nbsp;	-->
	<a href="selectPlace"><span>리스트이동</span></a>
</body>



</section>        
<%@include file="../include/footer.jsp" %>
