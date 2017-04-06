<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>chat room</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
	<span id="rno" style="display : none;">${rno}</span>
	
	<div id="chatSpace"
		style="margin: 5% auto; border: 1px solid gray; width: 430px">
		<span class="label label-info">왕좌의 게임 단체방</span>
		<hr style="border-top: 1px solid #BDBDBD;">
		<dl class="dl-horizontal">
			<dt>아리아</dt>
			<dd>message</dd>
			<dt>티리온</dt>
			<dd>message</dd>
			<dt>존스노우</dt>
			<dd>message</dd>
			<dt>대너리스</dt>
			<dd>message</dd>
			<dt>대너리스</dt>
			<dd>message</dd>
		</dl>
		<hr style="border-top: 1px solid #BDBDBD;">
		<div id="form" style="width: 100%">
			<form>
				<!-- adding id text -->
				<!-- 			id : <input type="text" name="id" id="id" /> -->
				<div class="input-group">
					<input type="textMessage" class="form-control"
						placeholder="message" aria-describedby="basic-addon2"> <span
						class="input-group-addon" id="basic-addon2">send</span>
				</div>
				<!-- 송신 메시지 작성하는 창 -->
				<!-- 				<input id="textMessage" type="text" style="width: 340px"> -->
				<!-- 송신 버튼 -->
				<!-- 				<input onclick="sendMessage()" value="Send" type="button"> -->
				<!-- 종료 버튼 -->
				<!-- 			<input onclick="disconnect()" value="Disconnect" type="button"> -->
		</div>
		</form>
	</div>
	<br />
	<!-- 결과 메시지 보여주는 창 -->
	<!--     <textarea id="messageTextArea" rows="10" cols="50"></textarea> -->
	</div>


	<script type="text/javascript">
		//WebSocketEx는 프로젝트 이름
		//websocket 클래스 이름
// 		var rno = document.getElementById("rno").innerHTML;
// 		console.log("rno: ", rno);
// 		var webSocket = new WebSocket(
// 				"ws://172.16.13.19:8088/websockettest/websocket/" + rno);
// 		var messageTextArea = document.getElementById("messageTextArea");
// 		//웹 소켓이 연결되었을 때 호출되는 이벤트
// 		webSocket.onopen = function(message) {
// 			//             messageTextArea.value += "Server connect...\n";
// 			console.log("server connected...");
// 		};
// 		//웹 소켓이 닫혔을 때 호출되는 이벤트
// 		webSocket.onclose = function(message) {
// 			messageTextArea.value += "Server Disconnect...\n";
// 		};
// 		//웹 소켓이 에러가 났을 때 호출되는 이벤트
// 		webSocket.onerror = function(message) {
// 			messageTextArea.value += "error...\n";
// 		};
// 		//웹 소켓에서 메시지가 날라왔을 때 호출되는 이벤트
// 		//         webSocket.onmessage = function(message){
// 		//             messageTextArea.value += "Recieve From Server => "+message.data+"\n";
// 		//         };
// 		//Send 버튼을 누르면 실행되는 함수
// 		function sendMessage() {

// 			var id = document.getElementById("id");
// 			var message = document.getElementById("textMessage");
// 			messageTextArea.value += "Send to Server => " + message.value
// 					+ "\n";

// 			var messageObj = {
// 				"id" : id.value,
// 				"text" : message.value
// 			};
// 			var jsonMessage = JSON.stringify(messageObj);
// 			//웹소켓으로 textMessage객체의 값을 보낸다.
// 			webSocket.send(jsonMessage);
// 			//textMessage객체의 값 초기화
// 			message.value = "";
// 		}

// 		//웹소켓 종료
// 		function disconnect() {
// 			webSocket.close();
// 		}
	</script>
</body>
</html>
