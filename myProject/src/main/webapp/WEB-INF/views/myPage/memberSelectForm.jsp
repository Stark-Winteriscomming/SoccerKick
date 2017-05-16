<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
  
<%@include file="../include/header.jsp" %>
<head>
<script src="/resources/js/jquery-3.1.1.min.js"></script>
<script src="/resources/js/table.js" type="text/javascript"></script>
<script> 
	$(document).ready(function(){
		
		$("#cselect").click(function(){
	
			
			
			if($("input:checkbox[name='scheck']:checked").length == 0 ){
				alert("선택할 항목을 체크해 주세요~");
				$("#scheck").focus();
				return false;
			}	

				selectForm.submit();						
			
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

<style>



</style>


</head>   
  
  
<section id="portfolio" class="bg-light-gray">

<div class="alert alert-success" style="width:800px; float:left; margin-right:10px;">
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


 <!-- 선수선발 -->

<div class="alert alert-success" style="width:800px; float:left; ">
 <div align="center">
 <h1 class="title" align="center">선택 된 선수리스트</h1>  
 <br>  
      <table class="table table-striped">
           <form name="selectForm" action="" method="get">
             <thead>    
              <tr>
              <th><input type="checkbox" name="tcheck" id="tcheck"></th>
              <th>이미지</th>
              <th class="sorting">번호</th>
              <th class="sorting">이름</th>
              <th class="sorting">나이</th>
              <th class="sorting">지역</th>
              <th class="sorting">신청포지션</th>
              <th >프로필보기</th>
              </tr>
            </thead>
                 <tr>
                   <td><input type="checkbox" name="scheck" id="scheck" value="" ></td>
                   <td><img src="http://sstatic.naver.net/people/91/201405301047405271.jpg" /></td>
                   <td>1</td>
                   <td>토레스</td>
                   <td>30</td>
                   <td>스페인</td>
                   <td>공격수</td>
                   <td><button class="btn btn-default">프로필보기</button></td>
                 </tr>
      
    </tbody>
  </table>
  <button class="cselect" style="width: 280px; height: 80px;" align="center">선택 취소</button>  
  <button class="cselect" style="width: 280px; height: 80px;" align="center">선택 완료</button>
  
  </div>
 </div>
</section>
<%@include file="../include/footer.jsp" %>
