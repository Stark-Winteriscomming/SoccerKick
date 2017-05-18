var regListArray = new Array();
var sendArray = new Array();
var interval = null;
//initial page loading --> call update function
//update();


$(".sendedList > li > input").on("click", function(event) {
	var element = $(event.target).parent();
	var isChecked = $(event.target).prop("checked");
	if (isChecked === true) {
		console.log("push");
		regListArray.push(element.text());
	} else {
		console.log("remove");
		for (var i = 0; i < regListArray.length; i++)
			if (!(typeof regListArray[i] === 'undefined'))
				if (regListArray[i] == element.text()) {
					delete regListArray[i];
				}
	}

})
function check() {
	console.log("check() start");
	for (var i = 0; i < regListArray.length; i++) {
		if (!(typeof regListArray[i] === 'undefined')) {
			sendArray.push(regListArray[i]);
		}
	}
}

$("#add").on("click", function() {
	// undefine 정제 작업
	check();
	var sendData = JSON.stringify(sendArray);
	//	var jsonArray = JSON.parse(JSON.stringify(sendArray))
	console.log(sendData);
	$.ajax({
		url : "/myPage/mail/regAddressList",
		type : "POST",
		data : sendData,
		dataType : "text",
		contentType : "application/json; charset=UTF-8",
		success : function(result) {	
			//data - response from server
			console.log(result);
			$("#addressList").text(result);
		},
		error : function(jqXHR, textStatus, errorThrown) {

		}
	});
});

// showing not read mails

if ($("#mailCount").is(":visible")) {
	console.log('visible true');
	update();
	//5 seconds
	interval = setInterval(update, 5000);
}

//$("#mailCount").on("click", function(){
//	update();
//})


function update() {
	$.ajax({
		url : "/myPage/mail/readCount",
		type : "GET",
		data : "",
		dataType : "text",
		success : function(result) { // on completion, restart
			$("#mailCount").text(result);
			setTimeout(update, 3000); // function refers to itself
		},
		error : function(jqXHR, textStatus, errorThrown) {
			clearInterval(interval);
			//prevent update function 
			window.update=function(){return false;};
		}
	})
};
