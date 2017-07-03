<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<%@ page import = "com.soccerkick.vo.userVO" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../../resources/js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#cdelete").click(function(){
	
			//alert($("input:checkbox[name='scheck']:checked").length);
			//$("input[name='scheck']").prop('checked', false)
			
			if($("input:checkbox[name='client_id']:checked").length == 0 ){
				alert("선택할 항목을 체크해 주세요~");
				$("#client_id").focus();
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
	<h4>회원 리스트</h4>
	<span id="cdelete">삭제</span>
	<a href="admin_index"><span>메인이동</span></a>
	<form name="listForm" action="admin_member_delete"
	 method="get">
	<table border=1>
		<tr>
			<td><input type="checkbox" name="tcheck" id="tcheck"></td>
			<td>아이디</td>
			<td>비밀번호</td>	
			<td>이름</td>			
			<td>전화번호</td>
		</tr>
		<c:forEach items="${list }" var="vo">
				<tr>
                    <td><input type="checkbox" name="client_id" id="scheck" value="${vo.client_id}" ></td>
					<td class="clientId">${vo.client_id }</td>
					<td class="clientPw">${vo.pw }</td>
					<td class="clientName">${vo.client_name }</td>
					<td calss="clientPhone">${vo.client_phone }</td>	
				</tr>
				</c:forEach>
	</table>
	
	</form>
</body>
</html>









