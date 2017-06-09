//inital value
var checkNum = 1;
// 
var maxNum = 3;

$.ajax({
	url : '/api/get',
	type : 'get',
	dataType : 'json',
	success : function(jsonObj) {
		var items = jsonObj.items;
		for (i in items) {
			$('.news-list').append(
					'<li>' + '<a target="_blank" href=' + items[i].originallink
							+ '>' + items[i].title + '</a>' + '</li>')
			//         		items[i].originallink
			//         		console.log(items[i].title);
		}
		var list = $('.news-list li');
		for (var i = 0; i < list.length; i++) {
			if (i < 5) {
				$(list[i]).show();
			} else {
				$(list[i]).hide();
			}
		}
	}
})

$('.nav').on('click', function() {
	if (this.id == 'right')
		checkNum++;
	else if (this.id == 'left')
		checkNum--;
	if (checkNum > maxNum)
		checkNum = 1;
	else if (checkNum < 1)
		checkNum = maxNum;
	console.log(checkNum);
	//     	$('ul li:nth-child(n+)').css('color','green');
	var list = $('.news-list li');
	if (checkNum == 1) {
		for (var i = 0; i < list.length; i++) {
			if (i < 5) {
				$(list[i]).show();
			} else {
				$(list[i]).hide();
			}
		}
	} else if (checkNum == 2) {
		for (var i = 0; i < list.length; i++) {
			if (i >= 5 && i < 10) {
				$(list[i]).show();
			} else {
				$(list[i]).hide();
			}
		}
	} else if (checkNum == 3) {
		for (var i = 0; i < list.length; i++) {
			if (i >= 10 && i < 15) {
				$(list[i]).show();
			} else {
				$(list[i]).hide();
			}
		}
	}

})