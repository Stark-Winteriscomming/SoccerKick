<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>


<%@include file="../include/header.jsp" %>
<section id="gatheringFrom" class="bg-light-gray">
  <div class="">
      모임 명 <input type="text" name="" value="" id="gatheringName">
      지역 <input type="checkbox" name="" value=""><br>
      날짜 <input type="checkbox" name="" value="">
           <input type="checkbox" name="" value="">
             ~
           <input type="checkbox" name="" value="">
           <input type="checkbox" name="" value=""><br>
  </div>

  <div class="">
    <img src="resource/img/formation.jpg" alt="">
  </div>
  
  <div class="">
    <p>모임설명</p>
    <textarea name="name" rows="8" cols="80"></textarea>
  </div>
  <button class="btn btn-success btn-lg" style="width: 300px; height:70px">신청 하기</button>
</section>
<%@include file="../include/footer.jsp" %>
