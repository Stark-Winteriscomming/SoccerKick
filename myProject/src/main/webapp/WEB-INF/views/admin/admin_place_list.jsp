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
<script src="../../resources/js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#cdelete").click(function(){
	
			//alert($("input:checkbox[name='scheck']:checked").length);
			//$("input[name='scheck']").prop('checked', false)
			
			if($("input:checkbox[name='scheck']:checked").length == 0 ){
				alert("선택할 항목을 체크해 주세요~");
				$("#scheck").focus();
				return false;
			}	

				listForm.submit();						
			
		});
		
		$("#tcheck").click(function(){
			if($("#tcheck").is(":checked")){
				$("input[name='scheck']").prop("checked", true);				
			}else{
				$("input[name='scheck']").prop("checked", false);
			}
		});
		
		
	});

</script>
</head>
<body>
	<h3>관리자 페이지 입니다.</h3>
	<hr>	
	<h4>장소 리스트</h4>
	<span id="cdelete"><a href="admin_place_delete?no=${vo.no}&rno=${vo.rno}">삭제</a></span>
	<span><a href="admin_place_form">장소 입력</a></span>
	<form name="listForm" action=""
	 method="get">
	<table border=1>
		<tr>
			<td><input type="checkbox" name="tcheck" id="tcheck"></td>
			<td>번호</td>
			<td>제목</td>			
			<td>전화번호</td>
		</tr>
		<c:forEach items="${list }" var="vo">
				<tr>
					<td><input type="checkbox" name="scheck" id="scheck" value="${vo.no}" ></td>
					<td class="tno">${vo.rno }</td>
					<td class="title">					
						<a href="admin_place_content?no=${vo.no}&rno=${vo.rno}">
						${vo.title }</a>
					</td>
					<td>${vo.phone }</td>	
				</tr>
				</c:forEach>
	</table>
	<input type="hidden" name="nkey" value="cdelete">
	</form>
</body>
</html>









