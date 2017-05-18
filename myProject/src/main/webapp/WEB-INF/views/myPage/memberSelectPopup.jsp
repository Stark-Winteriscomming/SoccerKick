<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  

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
  </head>

<section id="portfolio" class="bg-light-gray">
<div align="center">
<div class="alert alert-success" style="width:800px; float:left; ">
 
 <h1 class="title" align="center">공격수 신청 인원</h1>  
 <br>  
      <table class="table table-striped">
           <form name="selectForm" action="memberSelect_save.do" method="post" enctype="multipart/form-data">
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
                   <td><input type="checkbox" name="scheck" id="scheck" value=${vo.no }  ></td>
                   <td><img src="http://sstatic.naver.net/people/91/201405301047405271.jpg" /></td>
                   <td class="sorting_tno">${vo.rno }</td>
                   <td class="sorting_name">${vo.apply_name}</td>
                   <td>${vo.age}</td>
                   <td>${vo.region }</td>
                   <td>${vo.apply_position }</td>
                   <td><button class="btn btn-default">프로필보기</button></td>
                 </tr>
            </c:forEach>
            <button class="cselect" style="width: 280px; height: 80px;" align="center">선발 완료</button>
    </form>
  </table>

  
  
  </div>
  </div>
</section>


