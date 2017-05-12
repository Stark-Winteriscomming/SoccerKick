var regListArray = new Array();
var sendArray = new Array();
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
	console.log(regListArray);
	for (var i = 0; i < regListArray.length; i++) {
		if (!(typeof regListArray[i] === 'undefined')){
			console.log(regListArray[i]);
			sendArray.push(regListArray[i]);
		}
	}
}

$("#add").on("click", function() {
	$.ajax({
		url : "/myPage/mail/regAddressList",
		type : "POST",
		data : "{data : value}",
		success : function(data, textStatus, jqXHR) {
			//data - response from server
		},
		error : function(jqXHR, textStatus, errorThrown) {

		}
	});
});
