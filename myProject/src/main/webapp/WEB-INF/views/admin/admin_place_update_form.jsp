<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<%@ page import = "com.soccerkick.vo.PlaceVO" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<style>
		li { margin:20px; 
			 width:400px;
			 list-style-type:none;}
		label {
			display:block;
			width:120px;
			float:left;		
		}
		li.button { text-align:center;}
		input {
			width:250px;
			padding:5px;
		}
	</style>
	<script src="../../resources/js/jquery-3.1.1.min.js" ></script>
	<%--<script src="http://code.jquery.com/jquery-min.js" ></script> --%>
	<script>
		$(document).ready(function(){
			$("#btnSave").click(function(){
				if($("#title").val() == ""){
					alert("제목을 입력하세요");
					$("#title").focus();
					return false;
				}
				
				noticeForm.submit();				
			});				
		});	
	</script>
</head>
<body>
	<h3>관리자 페이지 > 장소 입력 폼</h3>
	<hr>
	<form name="placeForm" action="admin_place_update_save.do" method="post" enctype="multipart/form-data">
		<ul>
			<li>
				<label>제목</label>
				<input type="text" name="title" id="title" value="${vo.title}">
			</li>
			<li>
				<label>경기장 소개글</label>
				<textarea rows=2 cols=50 name="intro">${vo.intro}</textarea>
			</li>
			<li>
				<label>경기장 전화번호</label>
				<textarea rows=1 cols=50 name="phone" >${vo.phone}</textarea>
			</li>
			
			<li>
				<label>경기장 정보</label>
				<textarea rows=10 cols=50 name="content" >${vo.content}</textarea>
			</li>
			<li>
				<label>경기장 사진</label>
				<input type="file" name="file" id="file" value="${vo.fname}">
			</li>
			<li class="button">
				<button type="button" id="btnSave">저장</button>
				<button type="reset">취소</button>
			</li>
		</ul>
		
	</form>
</body>
</html>















