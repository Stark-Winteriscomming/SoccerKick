<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.soccerkick.vo.*"%>
<%@ page import="java.util.*"%>

<%@include file="../include/header.jsp"%>
<% 
	TeamVO vo = (TeamVO)request.getAttribute("vo");
%>

<script src="/resources/js/jquery-3.1.1.min.js"></script>
<script src="/resources/js/table.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
		$("#tcheck").click(function() {
			if ($("#tcheck").is(":checked")) {
				$("input[name='scheck']").prop("checked", true);
			} else {
				$("input[name='scheck']").prop("checked", false);
			}
		});

	});
</script>

<script>

function reloadpage(){
	location.reload(true);
}
</script>
<style>
td,th {
	text-align: center;
}
.wrap_memberselectform{
	width:1500px;
	height:100%;
	background-color: #d9edf7;
	margin: 0 auto;
}
</style>
<section id="portfolio" class="bg-light-gray">
	
		<div class="wrap_memberselectform">			
				<%
					if (vo.getTeam_formation().equals("433")) {
				%>
					<%@include file="../position/433.jsp"%>
				<%
					} else if (vo.getTeam_formation().equals("4231")) {
				%>
					<%@include file="../position/4231.jsp"%>
				<%
					} else {
				%>
					<%@include file="../position/41212.jsp"%>
				<%
					}
				%>
			
		</div>


</section>
<%@include file="../include/footer.jsp"%>
