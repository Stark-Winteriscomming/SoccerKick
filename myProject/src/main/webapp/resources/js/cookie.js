var cEnum = {
	1 : 'cplace',
	2 : 'cselect'
}
var btn = "button";


function Block(text, delemeter) {
	this.text = text;
	this.cName = 'bcookie';
	this.delemeter = delemeter;
	this.display = function() {
		swal({
			title : text,
			text :'<button class="' + this.cName + '" data-name="'+delemeter+'">그만 보기</button> '+
				'<button>확인</button> ',
			html : true,
			showConfirmButton : false
		});
		$('.bcookie').on('click', function(){
			console.log($(this).data('name'));
			setCookie($(this).data('name'), 'false');
		})
	}
}


function setCookie(cname, value) {
	document.cookie = cname + "=" + value + ";";
}

function getCookie(cname) {
	var name = cname + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(';');
	for (var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}
	return "";
}




