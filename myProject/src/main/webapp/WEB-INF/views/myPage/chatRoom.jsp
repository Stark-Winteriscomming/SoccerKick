<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- jsp code -->
<%
	String cno = (String) request.getAttribute("cno");
	String title = (String) request.getAttribute("title");
%>
<!--  start of Content  -->
<section id="portfolio" class="bg-light-gray">
	<span id="cno" style="display: none;"><%=cno%></span>

	<div id="chatSpace"
		style="margin: 0 auto; border: 1px solid gray; width: 430px">
		<div id="chatHeader" style="width: 100%;">
			<span class="label label-info"><%=title %></span>
			<button type="button" class="btn btn-warning"
				onclick="disconnect();location.href='http://172.16.13.19:8088/myPage/chatRoomList';"
				style="float: right;">나가기</button>
		</div>
		<hr style="border-top: 1px solid #BDBDBD;">
		<dl class="dl-horizontal" id="contentWindow"
			style="overflow-y: scroll !important; width: 420px; height: 300px; overflow: hidden;">
		</dl>
		<hr style="border-top: 1px solid #BDBDBD;">
		<div id="form" style="width: 100%">
			<form>
				<div class="input-group">
					<input type="textMessage" class="form-control"
						placeholder="message" aria-describedby="basic-addon2"
						id="textMessage"> <span class="input-group-addon"
						id="basic-addon2" onclick="sendMessage()">send</span>
				</div>
		</div>
		</form>
	</div>
	<br />
	</div>


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
			// 		            messageTextArea.value += "Recieve From Server => "+message.data+"\n";
			var node = document.createElement("dt"); // Create a <li> node
			node.innerHTML = message.data; // Append the text to <li>
			document.getElementById("contentWindow").appendChild(node);
		};
		//Send 버튼을 누르면 실행되는 함수
		function sendMessage() {

			// 			var id = document.getElementById("id");
			var message = document.getElementById("textMessage").value;
			// 			messageTextArea.value += "Send to Server => " + message.value
			// 					+ "\n";

			// 			var messageObj = {
			// 				"id" : id.value,
			// 				"text" : message.value
			// 			};
			// 			var jsonMessage = JSON.stringify(messageObj);
			//웹소켓으로 textMessage객체의 값을 보낸다.
			// 			webSocket.send(jsonMessage);
			webSocket.send(message);
			//textMessage객체의 값 초기화
			// 			message.value = "";
		}

		//웹소켓 종료
		function disconnect() {
			webSocket.close();
		}
	</script>
</section>
<!-- ########## start of footer ################## -->
<%@include file="../include/footer.jsp"%>
<!-- ########## end of footer ################## -->