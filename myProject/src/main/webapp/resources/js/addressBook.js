var rListArray = new Array();
var sListArray = new Array();

var rObjArray = new Array();
var sObjArray = new Array();

$(".rList > li > input").on("click", function(event) {
	var element = $(event.target).parent();
	var copy = element.clone();
	copy.find("input").prop("checked", false);
	var isChecked = $(event.target).prop("checked");
	if (isChecked === true) {
		console.log("push");
		rObjArray.push(copy);
		getList(rObjArray);
	} else {
		console.log("remove");
		for (var i = 0; i < rObjArray.length; i++)
			if (!(typeof rObjArray[i] === 'undefined'))
				if (rObjArray[i].attr("id") === element.attr("id")) {
					delete rObjArray[i];
					getList(rObjArray);
				}
	}
	// $("#sList").append(copy);

})
$("#rightBtn").on("click", function() {
	for (var i = 0; i < rObjArray.length; i++) {
		$(".sList").append(rObjArray[i]);
	}
	addOnClickEvent();
	// 모든 요소 제거
	rObjArray = [];
	setCheckedFalse();
})
$("#leftBtn").on("click", function() {
	for (var i = 0; i < sObjArray.length; i++) {
		if (!(typeof sObjArray[i] === 'undefined'))
			sObjArray[i].remove();
	}
})

function setCheckedFalse() {
	console.log("setCheckedFalse called");
	$(".rList > li").find("input").prop("checked", false);
}

function addOnClickEvent() {
	$(".sList > li > input").on("click", function(event) {
		var element = $(event.target).parent();
		var isChecked = $(event.target).prop("checked");
		// console.log(isChecked);
		if (isChecked === true) {
			console.log("push");
			sObjArray.push(element);
			getList(sObjArray);
		} else {
			console.log("remove");
			for (var i = 0; i < sObjArray.length; i++) {
				if (!(typeof sObjArray[i] === 'undefined'))
					if (sObjArray[i].attr("id") === element.attr("id")) {
						delete sObjArray[i];
						getList(sObjArray);
					}
			}
		}
		console.log("sObjArray.length: " + sObjArray.length);
	})

}

function getList(array) {
	console.log("get List");
	for (var i = 0; i < array.length; i++) {
		console.log(array[i]);
	}
}
$("#confirm").on("click", function() {
	console.log("test called");
	var list = $(".sList").children();
	opener.changeValue(list);
	window.close();
})
$("#cancel").on("click", function() {
	window.close();
})
