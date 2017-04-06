<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
<!--     <style type="text/css">

    .clickable {cursor: pointer;}
.hover {text-decoration: underline;}

table {
    text-align: left;
    margin: auto;
     display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
h1.title{text-align:left;}
     
th{
width:60%
margin:auto;
text-align:center;
 background:#F90;}

.odd{ background: #FFC;}
.even{ background: #FF9;}
.bg-light-gray {
    background-color: rgba(155, 189, 70, 0.25);
    text-align:center;
}

        sortable paginated.span{}
     </style> -->
</head>   
  

<section id="portfolio" class="bg-light-gray">
<div align="center">
<div class="alert alert-success" style="width:800px;">
 <h1 class="title" align="center">선수 선발</h1>  
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
              <th class="sorting">주포지션</th>
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
                   <td>공격수</td>
                   <td><button class="btn btn-default">프로필보기</button></td>
                 </tr>
      <tr>
      <td><input type="checkbox" name="scheck" id="scheck" value="" ></td>
      <td><img src="http://sstatic.naver.net/people/38/201312311422378171.jpg" /></td>
       <td>2</td>
       <td>손흥민</td>
       <td>25</td>
       <td>서울</td>
       <td>공격수</td>
       <td>미드필더</td>
       <td><button class="btn btn-default">프로필보기</button></td>
      </tr>
      <tr>
      <td><input type="checkbox" name="scheck" id="scheck" value="" ></td>
      <td><img src="http://sstatic.naver.net/people/12/201106291743205631.bmp" /></td>
       <td>3</td>
       <td>박지성</td>
       <td>35</td>
       <td>서울</td>
       <td>미드필더</td>
       <td>수비수</td>
       <td><button class="btn btn-default">프로필 보기</button></td>    
      </tr>    
      <tr>
      <td><input type="checkbox" name="scheck" id="scheck" value="" ></td>
      <td><img src="http://sstatic.naver.net/people/17/201403271921402431.jpg" /></td>
       <td>4</td>
       <td>차두리</td>
       <td>36</td>
       <td>독일</td>
       <td>수비수</td>
       <td>골키퍼</td>
       <td><button class="btn btn-default">프로필보기</button></td>
      </tr>
      <tr>
       <td><input type="checkbox" name="scheck" id="scheck" value="" ></td>
       <td><img src="http://sstatic.naver.net/people/3/201607071816066361.jpg" /></td>
       <td>5</td>
       <td>메시</td>    
       <td>29</td>          
       <td>아르헨티나</td>      
       <td>공격수</td>
       <td>미드필더</td>
       <td><button class="btn btn-default">프로필 보기</button></td>
      </tr>
    </tbody>
  </table>
  <button class="btn btn-success btn-lg" style="width: 280px; height: 80px;">선발 완료</button>                   
  </div>
  </div>
</section>
<%@include file="../include/footer.jsp" %>
