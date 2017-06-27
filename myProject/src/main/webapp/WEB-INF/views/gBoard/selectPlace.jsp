<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ page import = "com.soccerkick.vo.PlaceVO" %>
  
  
<%@include file="../include/header.jsp" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<<<<<<< HEAD
$(document).ready(function(){
    $("button").click(function(){
        var no = $(this).attr("value");
    	
    	 $.ajax({
   		  url : 'http://172.16.13.8:9090/gBoard/place_content_detail',
   		   type : 'GET',
		   data : 'no='+no,
   		  dataType : "json",
   		  success : function(data) {				
   			
   			if(data.length !=0){  
   				
   				$("#mtitle").text(data[0].title);
   				$("#mphone").text(data[0].phone);
   				$("#mcontent").text(data[0].content);
   				$("#mpfname").attr("src", "http://172.16.13.8:9090/resources/ground/" + data[0].pfname );
   				
   			}
   		  }
   	  });
    	
    	//$("#myModal").modal();
    	
    });
});
</script>
=======
<style>
#btn_cancle{
  background-color: #5bc0de;
    border-color: #46b8da;

}
</style>
>>>>>>> a318af62d9a88ef125a81b927a21b9cf055a596c
</head>
<body>
<section id="portfolio" class="bg-light-gray">
	<div class="container">
	<div class="row">
  
  <!--  <a href="/place_content?no=${vo.no }&rno=${rno}"> -->
  <c:forEach items="${list}" var="vo">
	<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <!--  <img src= "../resources/ground/1.jpgame} alt="..." > -->
        <img src="http://172.16.13.8:9090/resources/ground/${vo.pfname}" width="299" height="168" />
        
      <div class="caption">
        <h3 class="title">${vo.title}</h3>
        <h5 class="phone">전화 : ${vo.phone}</h5>
        <h5 class="intro">정보 : ${vo.intro}</h5>  
         <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" value="${vo.no }">상세 정보</button>
      </div>
    </div>   
  </div>
	
  </c:forEach>	
 

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" id="mtitle" align="center"></h4>
      </div>
      <div class="modal-body">
        <img src="" width="560" height="300" id="mpfname" align="center"/>
        <h3 id="mphone"></h3>
        <p id="mcontent"></p>
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="btn_cancle">Close</button>
      </div>
    </div>

  </div>
</div>
  
</div>  
	</div>  
</section> 



</body>
</html>       
<%@include file="../include/footer.jsp" %>
<script>

$(document).ready(function(){
    $("button").click(function(){
        var no = $(this).attr("value");
    	console.log('no: ' + no);
    	 $.ajax({
    		url : '/gBoard/place_content_detail',    		 
//    		  url : 'http://172.16.13.8:9090/gBoard/place_content_detail',
   		   	type : 'GET',
		   	data : 'no='+no,
   		  	dataType : "json",
   		  	success : function(data) {				
   			
   			if(data.length !=0){  
   				
   				$("#mtitle").text(data[0].title);
   				$("#mphone").text(data[0].phone);
   				$("#mcontent").text(data[0].content);
   				
   				$("#mpfname").attr("src", "http://172.16.13.8:9090/resources/ground/" + data[0].pfname );
   				
   			}
   		  }
   	  });
    	
    	//$("#myModal").modal();
    	
    });
});
</script>

<script>  
swal("경기 장소 정보를 볼 수 있습니다.")
</script>

