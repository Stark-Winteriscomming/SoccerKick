<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<style>
div.team_create {
	width: 68%;
	margin: auto;
}

div.team_create_Form {
	
}

div.teamcreateform {
	width: 90%;
	height: 500px;
	margin: auto;
}

h1.boardtitle {
	border-bottom: 1px solid gray;
}

.formation_ul {
	display: block;
	width: 95%;
}

.formation_ul li {
	display: block;
	width: 100%;
	list-style-type: none;
	margin-bottom: 13px;
}

.team_comment {
	margin-top: 40px;
}

.label2 {
	display: block;
	width: 17%;
	text-align: center;
	
	color: white;
	padding: 4px 10px;
	float: left;
	margin-right: 10px;
	
    background-color: #5bc0de;
    border-color: #46b8da;

}

input[type='file'] {
	display: block;
	width: 135px;
	padding: 4px 10px;
}

span.btn_create, span.btn_cancel {
	display: inline-block;
	width: 100px;
	padding: 10px 15px 20px 15px;
	color: white;
	font-weight: bold;
	border-radius: 5px;
	text-align: center;
}

#btn_save{
display: block;
	width: 17%;
	text-align: center;
	
	color: white;
	padding: 4px 10px;
	float: left;
	margin-right: 10px;
	
    background-color: #5bc0de;
    border-color: #46b8da;

}
#btn_cancle{
display: block;
	width: 17%;
	text-align: center;
	
	color: white;
	padding: 4px 10px;
	float: left;
	margin-right: 10px;
	
    background-color: #5bc0de;
    border-color: #46b8da;

}


.upload-file {
	display: block;
	width: 40%;
	padding: 4px 10px;
	margin-right: 5px;
	float: left;
}

label.upload-text {
	display: inline-block;
	width: 10%;
	color: white;
	padding: 5px 10px;
	border-radius: 4px;
	background-color: #5A78AF;
	position: absolute;
}

.upload-hidden {
	display: inline-block;
	opacity: 0;
	position: relative;
}

input[type=radio]:checked {
	opacity: 0;
}
</style>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<link href="/resources/css/formation_select.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
	<div class="team_create">
		<h1 class="boardtitle">팀 생성하기</h1>
             
		<hr>
		<div class="team_create_form">
			<form name="teamcreateform" action="teamCreateForm_check"
				method="post" enctype="multipart/form-data">
				<ul class="formation_ul">
					<li><label class="label2">팀명</label> <input type="text"
						name="team_name" id="teamName" placeholder="팀이름"></li>
					<li><label class="label2" id="#label2">포메이션</label><br>
					<br>
						<div id="wrap">
							<div id="position1"
								style="background: url('/resources/img/433.png'); background-size: 500px;">
								<input type="radio" name="team_formation" value="433" id="chk1"
									checked="checked"> <a href="#label2" id="left"
									class="btn2" role="button"><span
									class="glyphicon glyphicon-chevron-left"
									style="vertical-align: middle;"></span></a> <a href="#label2"
									id="right" class="btn2" role="button"><span
									class="glyphicon glyphicon-chevron-right"></span></a>
							</div>
							<div id="position2"
								style="background: url('/resources/img/4231.png'); background-size: 500px;">
								<input type="radio" name="team_formation" value="4231" id="chk2">
								<a href="#label2" id="left" class="btn2" role="button"><span
									class="glyphicon glyphicon-chevron-left"></span></a> <a
									href="#label2" id="right" class="btn2" role="button"><span
									class="glyphicon glyphicon-chevron-right"></span></a>

							</div>
							<div id="position3"
								style="background: url('/resources/img/41212.png'); background-size: 500px;">
								<input type="radio" name="team_formation" value="41212"
									id="chk3"> <a id="left" class="btn2" href="#label2"
									role="button"> <span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a id="right" class="btn2" href="#label2" role="button"> <span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
						</div></li>
					<li class="team_comment"><label class="label2">팀설명</label> <textarea
							rows="10" cols="50" name="team_history" id="content"></textarea></li>
					<li class="filebox">
					<label class="label2">팀로고 등록</label> 
					<input type="text" name="team_logo_file_name" id="fname" class="upload-file" placeholder="파일선택"> 
						<label class="upload-text" id="btnUpload">업로드</label> 
						<input type="file" name="uploadfile" class="upload-hidden"></li>
					<li><label class="label2">지역</label> <select
						name="team_region">
							<option value="서울">서울</option>
							<option value="부산">부산</option>
							<option value="제주">제주</option>
							<option value="대구">대구</option>
							<option value="대전">대전</option>
							<option value="전주">전주</option>
							<option value="광주">광주</option>
					</select></li>




					<button id="btn_save">팀생성</button>
					<button type="reset" id= "btn_cancle">취소</button>
				</ul>

			</form>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<script type="text/javascript" src="/resources/js/formation_select.js"></script>

<script>  
// swal("팀을 생성 할 수 있습니다.")
/* 업로드 버튼 클릭 */
  	  		var fileTarget=$('.filebox .upload-hidden');
  	  		
  	  		fileTarget.on('change',function(){
  	  			//var id = $(this).attr("id");
  	  		
  	  			if(window.FileReader){
  	  				//modern browser
  	  				var filename = $(this)[0].files[0].name;
  	  			$("#fname").val(filename);
  	  			
  	  		
  	   				
  	  			}else{
  	  				//old IE
  	  				var filename = $(this).val().split('/').pop().split('\\').pop();
  	  				$("#fname").val(filename);
  	   			}
  	  		});  		
</script> 

<script>
	//swal("경기 장소 정보를 볼 수 있습니다.")
	var block = new Block('팀을 생성 할 수 있습니다.', 'teamCreate');
	if(getCookie(block.delemeter) !== 'false')
		block.display();
// 	block.display
	
</script>
