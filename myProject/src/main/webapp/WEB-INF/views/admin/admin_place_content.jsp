<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<%@ page import = "com.soccerkick.vo.PlaceVO" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>관리자 페이지 입니다.</h3>
	<hr>	
	<h4>장소 내용 보기</h4>
	<ul>
		<li>제목 : ${vo.title}</li>
		<li>소개글 : ${vo.intro }</li>
		<li>내용 : ${vo.content }</li>
		<li>전화번호 : ${vo.phone}</li>
		<li>경기장 사진: </li>
		<img src="http://localhost:9090/resources/ground/${vo.pfname}" width="299" height="168" /> 
	</ul>
	<a href="admin_place_update_form?no=${vo.no} ">수정</a>&nbsp;&nbsp;&nbsp;
	<a href="admin_place_delete?no=${vo.no}">삭제</a>&nbsp;&nbsp;&nbsp;	
	<a href="admin_place_list"><span>메인이동</span></a>
</body>
</html>













