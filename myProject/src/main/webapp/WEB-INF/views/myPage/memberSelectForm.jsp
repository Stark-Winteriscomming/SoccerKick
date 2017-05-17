
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.soccerkick.vo.*" %>
<%@ page import = "java.util.*" %>
 
<%@include file="../include/header.jsp"%>

<head>
<script src="/resources/js/jquery-3.1.1.min.js"></script>
<script src="/resources/js/table.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {

		$("#cselect").click(function() {

			if ($("input:checkbox[name='scheck']:checked").length == 0) {
				alert("선택할 항목을 체크해 주세요~");
				$("#scheck").focus();
				return false;
			}

			selectForm.submit();

		});

		$("#tcheck").click(function() {
			if ($("#tcheck").is(":checked")) {
				$("input[name='scheck']").prop("checked", true);
			} else {
				$("input[name='scheck']").prop("checked", false);
			}
		});

	});
</script>
</head>


<section id="portfolio" class="bg-light-gray">
	<div class="container">

		<div class="row">    
			<div class="col-md-6">
				<div class="alert alert-info"
					style="width: 800px; float: left; margin-right: 10px;">
					<div align="center">
						 <!-- 포메이션 폼 -->
 <h1 class="ftitle" align="center" >포메이션</h1>
 <br>
 

<div style="position: absolute;">
<div style="position: relative; top: 120px; left: 85px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;" onClick="javascript:window.open('/myPage/memberSelectPopup','popup','scrollbars=no, resizable=no, width=800,height=600')">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 120px; left: 390px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;" onClick="javascript:window.open('/myPage/ss','popup','scrollbars=no, resizable=no, width=800,height=600')" >
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 300px; left: 20px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 300px; left: 160px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 300px; left: 320px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 300px; left: 460px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>

<div style="position: absolute;">
<div style="position: relative; top: 550px; left: 20px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 550px; left: 160px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 550px; left: 320px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 550px; left: 460px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>
<div style="position: absolute;">
<div style="position: relative; top: 700px; left: 240px;">
<input type="image" src="../../../resources/img/button.png" border="0" style= "width:30%; height:30%;">
</div>
</div>

<img src="../../../resources/img/formation.jpg"></img>
					</div>
				</div>  
			</div>
			<div class="col-md-6">
				<div class="alert alert-info" style="width: 800px; float: left;">
					<!--  <META HTTP-EQUIV="refresh" CONTENT="5"> -->
					<div align="center">
						
						<h1 class="title" align="center">선택 된 선수리스트</h1>  
 <br>  
      <table class="table table-striped">
           <form name="selectForm" action="" >
             <thead>    
              <tr>
              <th><input type="checkbox" name="tcheck" id="tcheck"></th>
              <th>이미지</th>
              <th class="sorting_tno">번호</th>
              <th class="sorting_name">이름</th>
              <th class="sorting">나이</th>
              <th class="sorting">지역</th>
              <th class="sorting">신청포지션</th>
              <th >프로필보기</th>
              </tr>
            </thead>
                  <c:forEach items="${list}" var="vo">
               
	                 <tr>
	                   <td><input type="checkbox" name="scheck" id="scheck"  ></td>
	                   <td><img src="http://sstatic.naver.net/people/91/201405301047405271.jpg" /></td>
	                   <td class="sorting_tno">${vo.rno } </td>
	                   <td class="sorting_name"> ${vo.apply_name}</td>
	                   <td> ${vo.age}</td>
	                   <td> ${vo.region}</td>
	                   <td> ${vo.apply_position}</td>
	                   <td><button class="btn btn-default">프로필보기</button></td>
	                 </tr>
           
                </c:forEach> 
    </form>
  </table>
  <button class="cselect" style="width: 280px; height: 80px;" align="center">선택 취소</button>  
  <button class="cselect" style="width: 280px; height: 80px;" align="center">선택 완료</button>

					</div>
				</div>
			</div>
		</div>
</div>

</section>
<%@include file="../include/footer.jsp"%>
