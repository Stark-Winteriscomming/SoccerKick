$(document).ready(function(){
	$(".formation_select").click(function(){
		var num = $('input:checkbox:checked').length;
		if(num == 0){
			var fcon = confirm("해당 포메이션으로 선택하시겠습니까?");
			if(fcon == false){
				alert("포메이션을 다시 선택해 주세요.");
			}
		}
		else{
			var con = confirm("선택하신 동반인원이 " + num + "명 맞습니까?");
			if(con == false){
				alert("다신 선택해 주세요.");
			}
		}
		
	});
});