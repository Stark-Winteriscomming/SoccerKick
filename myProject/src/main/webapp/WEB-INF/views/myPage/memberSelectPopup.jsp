<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="com.soccerkick.vo.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<MemberSelectVO> list = (ArrayList<MemberSelectVO>)request.getAttribute("list");
%>
<head>
<script src="/resources/js/jquery-3.1.1.min.js"></script>
<script src="/resources/js/table.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
		$("#tcheck").click(function(){
	        if($("#tcheck").prop("checked")){
	            $("input[name=no]").prop("checked",true);
	        }
	        else{
	            $("input[name=no]").prop("checked",false);
	        }
	    });
		$("#cselect").click(function() {
			if ($("input:checkbox[name='no']:checked").length == 0) {
				alert("선택할 항목을 체크해 주세요~");
				$("#scheck").focus();
				return false;
			}
			window.opener.name = "parentPage";
			document.selectForm.target = window.opener.name;
			selectForm.submit();
			opener.location.reload(); 
			window.close();
			
			/*  $.ajax({
				url : '/myPage/memberSelect_save.do',
				type : 'post',
				data : $("selectForm").serialize(),
				success : function(result) {
					console.log(result);
					opener.location.reload();
					window.close();
				}

			}); */
			
		});
		// end of onclick
		
	});
</script>
</head>

<section id="portfolio" class="bg-light-gray">
	<div align="center">
		<div class="alert alert-success" style="width: 800px; float: left;">

			<h1 class="title" align="center">신청 인원</h1>
			<br>

			<!--<form name="selectForm" action="/myPage/memberSelect_save.do" method="post" enctype="multipart/form-data"> -->
			<form name="selectForm" id="selectForm" method="post" action="/myPage/memberSelect_save.do" >
				<table class="table table-striped">
					<thead>
						<tr>
							<th><input type="checkbox" name="tcheck" id="tcheck"></th>
							<th>이미지</th>
							<th class="sorting_tno">번호</th>
							<th class="sorting_name">이름</th>
							<th class="sorting">나이</th>
							<th class="sorting">지역</th>
							<th class="sorting">신청포지션</th>
							<th>프로필보기</th>
						</tr>
					</thead>
					
					
					<c:forEach items="${list}" var="vo">
						<tr>
							<td><input type="checkbox" name="no" id="scheck"
								value=${vo.no }></td>
							<td><img src="http://sstatic.naver.net/people/91/201405301047405271.jpg" /></td>
							<td class="sorting_tno">${vo.rno }</td>
							<td class="sorting_name">${vo.apply_name}</td>
							<td>${vo.age}</td>
							<td>${vo.region }</td>
							<td>${vo.a_apy_position}</td>
							<td><button class="btn btn-default">프로필보기</button></td>
						</tr>
					</c:forEach>	
				</table>
				<button class="cselect" style="width: 280px; height: 80px;"
						id="cselect" align="center">선발 완료</button>
			</form>
		</div>
	</div>
</section>


