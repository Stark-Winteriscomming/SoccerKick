$(document).ready(function() {
		
		/*$("input[name='team_formation']").css('opacity','.1');*/
		count = 1;
		/* $("input[name='team_formation']").css('visibility', 'hidden'); */
		var val = $("input[name='team_formation']").val();
		//
		$(".btn2").click(function() {
			
			var val_ = $(this).attr("id");
			/* $("input[name='team_formation']").prop("checked",false); */
			if (val_ == "left") {
				if (count == 1) {
					$("#chk3").prop("checked", true);
					$("#position3").css('z-index',3);
					val = $("#chk3").val();
					count = 3;
				} else {
					$("#position" + count).css('z-index',2);
					count--;
					/* count2 = count; */
					$("#chk" + count).prop("checked", true);
					$("#position" + count).css('z-index',3);
					val = $("#chk" + count).val();
					
				}
				
			} 
			else if (val_ == "right") {
				if (count < 3) {
					$("#position" + count).css('z-index',2);
					count++;
					$("#chk" + count).prop("checked", true);
					$("#position" + count).css('z-index',3);
					val = $("#chk" + count).val();
				} else {
					$("#position2").css('z-index',2);
					$("#position3").css('z-index',2);
					$("#chk1").prop("checked", true);
					$("#position1").css('z-index',3);
					val = $("#chk1").val();
					count = 1;
				}
			}
			console.log(count);
		});

	});