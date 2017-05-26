<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- <script src="/resources/js/bootstrap-tagsinput.min.js"></script> -->
<link href="/resources/css/bootstrap-tagsinput.css" rel="stylesheet">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<style>
.bootstrap-tagsinput {
	width: 90% !important;
}
</style>
<%@include file="../../include/header.jsp"%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<div class="content"
		style="margin: 0 auto; width: 1000px; border: 1px solid gray">
		<div class="form-group">
			<label for="exampleInputEmail1">받는 사람</label></br> <input type="text"
				id="recv_id" name="recv_id" value="" data-role="tagsinput">
			<button type="button" onclick="popup('/myPage/mail/addressBook')"
				style="float: right;">주소록</button>
		</div>
					<div class="form-group">
				<label for="exampleInputEmail1">제목</label> <input type="text" id="title"
					name="title" class="form-control" placeholder="제목">
			</div>
		<form id="transmit" action="/myPage/mail/write" method="post"
			onsubmit="return false;">

			<div class="form-group">
				<label for="exampleInputEmail1">내용</label>
				<textarea class="form-control" name="content" rows="3"></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputFile">파일 업로드</label> <input type="file"
					id="">
			</div>
			<button id="submitBtn" type="submit" class="btn btn-default">보내기</button>
		</form>
	</div>
</section>
<%@include file="../../include/footer.jsp"%>
<script>
	$("#transmit").submit( function(eventObj) {
	    $('<input />').attr('type', 'hidden')
	        .attr('name', "recv_id")
	        .attr('value', $("#recv_id").val())
	        .appendTo('#transmit');
	    
	    $('<input />').attr('type', 'hidden')
        .attr('name', "title")
        .attr('value', $("#title").val())
        .appendTo('#transmit');
	    
	    return true;
	});
	$("#submitBtn").on("click", function() {
		console.log("ccc");
		$("#transmit").attr("onsubmit", "return true");
	});
	function popup(mylink) {
		window.name = "parent";
		window.open(mylink, '_blank',
				'width=680,height=730,scrollbars=yes,left=0,top=0');
		return false;
	}
	function changeValue(list) {
		for (var i = 0; i < list.length; i++) {
			$("#recv_id").tagsinput("add", list[i].id);
		}
	}
</script>

