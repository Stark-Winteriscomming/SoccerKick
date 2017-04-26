<%@page import="com.soccerkick.vo.NoteVO"%>
<%@page import="com.soccerkick.dao.NoteDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/header.jsp"%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<span id="groupId" style="display: none;">${groupId}</span>

	<div id="chatSpace"
		style="margin: 0 auto; border: 1px solid gray; width: 430px">
		<div id="chatHeader" style="width: 100%;">
			<span class="label label-info">...과의 대화</span>
			<button type="button" class="btn btn-warning"
				onclick="disconnect();location.href='http://172.16.13.19:8088/myPage/chatRoomList';"
				style="float: right;">나가기</button>
		</div>
		<hr style="border-top: 1px solid #BDBDBD;">
		<dl class="dl-horizontal" id="contentWindow"
			style="overflow-y: scroll !important; width: 420px; height: 300px; overflow: hidden;">
			<c:forEach items="${list}" var="vo">
				<dt>${vo.send_id}</dt>
				<dd>${vo.content}</dd>
				</br>
			</c:forEach>
		</dl>
		<hr style="border-top: 1px solid #BDBDBD;">
		<div id="form" style="width: 100%">
			<form>
				<div class="input-group">
					<input type="textMessage" class="form-control"
						placeholder="message" aria-describedby="basic-addon2"
						id="textMessage" name="textMessage"> <span
						class="input-group-addon" id="sendBtn">send</span>
				</div>
			</form>
		</div>
	</div>
	<br />
</section>
<!-- google jquery cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	var sendBtn = $("#sendBtn");
	sendBtn.on("click", function() {
			var messageObj = {
			"content" : $("#textMessage").val(),
			"groupId" : $("#groupId").html()
		};
        $.ajax({
            url:"/myPage/note/insert",
            type: "post",
            data: JSON.stringify(messageObj),
            dataType: "json",
            contentType : "application/json; charset=UTF-8",
            success:function(result){
                console.log(result.data);
            }
        })
	});
</script>
<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->