		$(document).ready(function(){
  			/* 회원가입 폼 유효성 체크(validation check) */
  			$("#btn_submit").click(function(){
  				if($("#id").val() == ""){
  					alert("아이디를 입력하세요");
  					$("#id").focus();
  					return false;
  				}else if($("#nickname").val() == ""){ 
  					alert("닉네임을 입력하세요");
  					$("#nickname").focus();
  					return false;
  				}else if($("#pass").val() == ""){
  					alert("비밀번호를 입력하세요"); 
  					$("#pass").focus();
  					return false;
  				}else if($("#cpass").val() == ""){
  					alert("비밀번호 확인을 입력하세요");
  					$("#cpass").focus();
  					return false;
  				}else if($("#name").val() == ""){
  					alert("이름을 입력하세요");
  					$("#name").focus(); 
  					return false;
  				}else if($("#birth").val() == ""){
  					alert("생년월일을 입력하세요");
  					$("#birth").focus();
  					return false;
  				}else if($("#cphone").val() == ""){
  					alert("폰 번호를 입력하세요");
  					$("#cphone").focus();
  					return false;
  				}else if($("#region").val() == ""){
  					alert("사는 지역을 입력하세요");
  					$("#region").focus();
  					return false;
  				}else if($("#history").val() == ""){
  					alert("간단한 소개를 입력하세요");
  					$("#history").focus();
  					return false;
  				}else if($("#agree").is(":checked") == false){
  					alert("약관 동의를 입력하세요");
  					$("#agree").focus();
  					return false;
  				}
  				
  				if(!($("#region").val=="서울" && $("#region".val) == "경기" && $("#region".val) == "인천" && $("#region".val) == "대전"
  					&& $("#region".val) == "대구" && $("#region".val) == "광주" && $("#region".val) == "울산" && $("#region".val) == "부산" && $("#region".val) == "제주")){
  					alert("시, 도 를제외한 지역을 입력해주세요.");
  					
  					return false;
  				}
  				joinForm.submit();
  			});
  			/* 비밀번호 확인 체크 */
  			$("#cpass").blur(function(){
  				
  				if($("#cpass").val() == ""){
  					$(".help-block").text("");
  					$("#cpass").focus();
  				}else{
  					if($("#pass").val() == $("#cpass").val()){
  						$(".help-block").text("비밀번호가 동일합니다.");  						
  					}else{
  						$(".help-block").text("비밀번호가 동일하지 않습니다. 다시 입력해 주세요");
  					}
  				}
  			});
  			/* 회원가입 폼 reset */
  			$("#btn_calcel").click(function(){
  				$("#id").val("");
  				$("#nickname").val("");
  				$("#pass").val("");
  				$("#cpass").val("");
  				$("#name").val("");
  				$("#birth").val("");
  				$("#region").val("");
  				$("#cphone").val("");
  				$("#history").val("");
  				$("#agree").prop("checked", false);			
  			});
  		});