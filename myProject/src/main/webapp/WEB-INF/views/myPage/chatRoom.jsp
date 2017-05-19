<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <link href="/resources/css/speech-bubble.css" rel="stylesheet"> -->
<style>
.speech-bubble {
   position: relative;
   width: 51px;
   height: 28px;
   line-height: 28px;
   color: #FFFFFF;
   text-align: center;
   padding: 0px;
   background: #50c5c9;
   border-radius: 1%;
}

.speech-bubble:after {
   content: '';
   position: absolute;
   border-style: solid;
   border-width: 3px 6px 3px 0;
   border-color: transparent #50c5c9;
   display: block;
   width: 0;
   z-index: 1;
   left: -6px;
   top: 8px;
}

</style>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<span id="cno" style="display: none;">${cno}</span>
	<button>test</button>
	<div id="chatSpace"
		style="margin: 0 auto; border: 1px solid gray; width: 430px">
		<div id="chatHeader" style="width: 100%;">
			<span class="label label-info">${title}</span>
			<button type="button" class="btn btn-warning"
				onclick="disconnect();location.href='http://172.16.13.19:8088/myPage/chatRoomList';"
				style="float: right;">나가기</button>
		</div>
		<hr style="border-top: 1px solid #BDBDBD;">
		<ul class="dl-horizontal" id="contentWindow"
			style="overflow-y: scroll !important; width: 420px; height: 300px; overflow: hidden;">
		</ul>
		<hr style="border-top: 1px solid #BDBDBD;">
		<div id="form" style="width: 100%">
			<!-- 			<form> -->
			<div class="input-group">
				<input type="textMessage" class="form-control" placeholder="message"
					aria-describedby="basic-addon2" id="textMessage"> <span
					class="input-group-addon" id="basic-addon2" onclick="sendMessage()">send</span>
			</div>
			<!-- 			</form> -->
		</div>
		<br />
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		//WebSocketEx는 프로젝트 이름
		//websocket 클래스 이름
		var cno = document.getElementById("cno").innerHTML;
		console.log("cno: ", cno);
		var webSocket = new WebSocket("ws://172.16.13.19:8088/room/" + cno);
		//웹 소켓이 연결되었을 때 호출되는 이벤트
		webSocket.onopen = function(message) {
			console.log("server connected...");
		};
		//웹 소켓이 닫혔을 때 호출되는 이벤트
		webSocket.onclose = function(message) {
			console.log("websocket close");
		};
		//웹 소켓이 에러가 났을 때 호출되는 이벤트
		webSocket.onerror = function(message) {
			console.log("websocket error");
		};
		// 		웹 소켓에서 메시지가 날라왔을 때 호출되는 이벤트
		webSocket.onmessage = function(message) {
			console.log(message.data);
			var obj = JSON.parse(message.data);
// 			var spanNode = document.createElement("span");
// 			spanNode.innerHTML = obj.id;
			var node = document.createElement("li"); // Create a <li> node
		
			node.setAttribute("tabindex", "1");
			node.setAttribute("class", "callouts--left	");
// 			node.appendChild(spanNode);
			// 			message.data	
			node.innerHTML = node.innerHTML + ":" + "&nbsp&nbsp&nbsp" + obj.msg; // Append the text to <li>
// 			document.getElementById("contentWindow").appendChild(node);
			var id = '<span>' + obj.id +'</span>';
			$("#contentWindow").append(id);
			var item = '&nbsp&nbsp&nbsp&nbsp&nbsp' + '<div class="speech-bubble" style="display:inline">'+ obj.msg +'</div>';
			$("#contentWindow").append(item);
			$("#contentWindow").append("<br><br>");
			
			
		};
		//Send 버튼을 누르면 실행되는 함수
		function sendMessage() {

			var message = document.getElementById("textMessage").value;
			webSocket.send(message);

			//textMessage객체의 값 초기화
			$("#textMessage").val("");
		}

		//나가기 버튼, 웹소켓 종료
		function disconnect() {
			webSocket.close();
		}
		
		//window 창 끄기 전 실행 event
		window.onbeforeunload = function(){
			webSocket.close();
		}
		
		$("#textMessage").keypress(function(e) {
			if (e.which == 13) {
				sendMessage(); // 실행할 이벤트
			}
		});
		$("#btn").click(function() {
		    $("#contentWindow").animate({
		        scrollTop: $("#contentWindow").offset().top
		    }, 2000);
		});
		</script>
</section>
<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->