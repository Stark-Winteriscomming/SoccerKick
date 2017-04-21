<%@page import="com.soccerkick.vo.NoteVO"%>
<%@page import="com.soccerkick.dao.NoteDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- jsp code -->
<%
	ArrayList<NoteVO> list = (ArrayList<NoteVO>) request.getAttribute("list");
%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<span id="cno" style="display: none;"></span>

	<div id="chatSpace"
		style="margin: 0 auto; border: 1px solid gray; width: 430px">
		<div id="chatHeader" style="width: 100%;">
			<%-- 			<span class="label label-info"><%=title %></span> --%>
			<button type="button" class="btn btn-warning"
				onclick="disconnect();location.href='http://172.16.13.19:8088/myPage/chatRoomList';"
				style="float: right;">나가기</button>
		</div>
		<hr style="border-top: 1px solid #BDBDBD;">
		<dl class="dl-horizontal" id="contentWindow"
			style="overflow-y: scroll !important; width: 420px; height: 300px; overflow: hidden;">
			<% for(NoteVO vo : list) {%>
			<dt><%= vo.getSend_id() %></dt>
			<dd><%= vo.getContent() %></dd>
			</br>		
			<% } %>
		</dl>
		<hr style="border-top: 1px solid #BDBDBD;">
	</div>
	<br />
</section>
<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->