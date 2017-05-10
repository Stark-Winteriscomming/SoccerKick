<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<style>
  		div.team_create {
			width:68%;
			margin:auto;  		
		}
		div.teamcreateform {
			width:90%;
			height:500px;
			margin:auto;			
		}
		h1.boardtitle {			
			border-bottom:1px solid gray;
		}		
		.formation_ul {
			display:block;
			width:95%;
		}
		.formation_ul li {
			display:block;
			width:100%;
			list-style-type:none;
			margin-bottom:13px;
		}
		.team_comment{
			margin-top: 40px;
		}
		.label2{
			display:block;
			width:17%;		
			text-align:center;
			background:gray;
			color:white;	
			padding:4px 10px;
			float:left;
			margin-right:10px;
		}
		input[type='file'] {
			display:block;
			width:68%;
			padding:4px 10px;			
		}
		li.agree{
		overflow:hidden;
		}
		
	  	span.create_agree {
	  		display:inline-block;
	  		width:40%;
	  		/*padding:8px 8px;*/
	  		/*border:1px solid red;*/
	  	}
	  	span.btn1, span.btn2 {
  		display:inline-block;
  		width:100px;  		
  		padding:10px 15px 20px 15px;
  		color:white;
  		font-weight:bold;
  		border-radius:5px;
  		text-align:center;
  	}
  	span.btn1 {	background:rgb(155, 189, 70);	}
  	span.btn2 { background:gray; 	}
	  	
		 .upload-file {
			display:block;
			width:40%;
			padding:4px 10px;
			margin-right:5px;	
			float:left;		
		}
		label.upload-text {
			display: inline-block;
			width:10%;
			color: white;
			padding:5px 10px;
			border-radius: 4px;
			background-color:#5A78AF;
			position: absolute;
		}
		.upload-hidden{
			display: inline-block;
			width:20%;
			opacity:0;
			position: relative;
		}
		 #myCarousel{
  			width:650px;
  			height:880px;
  		}
  		.formation_select{
  			width:650px;
  			margin-top:10px;
  		}
  		#formation_433{
  			width:350px;
  			margin:0 auto;
  		}
  		#formation_433 input{
  			width:100%;
  			height:40px;
  			text-align: center;
  			border: 1px solid #bcbcbc;
  			border-radius:5px;
  			background-color: lightgray;
  			font-size: 1.5em;
  		}
  	</style>	
  	<link href="/resources/css/4-3-3.css" rel="stylesheet">
	<section id="portfolio" class="bg-light-gray">
	<div class="team_create">
		<h1 class="boardtitle">팀 생성하기</h1>
		<hr>
		<div class="team_create_form">
		<form name="teamcreateform" action="" method="post" >
			<ul class="formation_ul">
				<li>
					<label class="label2">팀명</label>
					<input type="text" name="teamName" id="teamName" placeholder="팀이름">					
				</li>
				<li>
					<!--  start of image carousel -->
					<label class="label2">포메이션</label>
					
					<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
				    <!-- Indicators -->
				    <!-- Wrapper for slides -->
				    <div class="carousel-inner" role="listbox">
				      <div class="item active">
				        <div class="formation">
				      	<div id="formation_433">
				        	<input type="text" value="4-3-3">
						</div>
						<div class="checks">
							<div class="positon_fw">
								<div class="position_wrap">
						  			<input type="checkbox" id="fw1" class="fw"> 
						  			<label for="fw1"></label>
						  			<label class="position_fw_txt">공격수</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="checkbox" id="fw2"> 
								  	<label for="fw2"></label> 
								  	<label class="position_fw_txt">공격수</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="fw3"> 
								  	<label for="fw3"></label>
								  	<label class="position_fw_txt">공격수</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_mid">
							  	<div class="position_wrap">
						  			<input type="checkbox" id="mid1" class="mid"> 
						  			<label for="mid1"></label>
						  			<label class="position_mid_txt">미드필더</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="checkbox" id="mid2" class="mid"> 
								  	<label for="mid2"></label> 
								  	<label class="position_mid_txt">미드필더</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="mid3" class="mid"> 
								  	<label for="mid3"></label>
								  	<label class="position_mid_txt">미드필더</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_df">
							  	<div class="position_wrap">
						  			<input type="checkbox" id="df1" class="mid"> 
						  			<label for="df1"></label>
						  			<label class="position_df_txt">수비수</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="checkbox" id="df2" class="mid"> 
								  	<label for="df2"></label> 
								  	<label class="position_df_txt">수비수</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="df3" class="mid"> 
								  	<label for="df3"></label>
								  	<label class="position_df_txt">수비수</label> 
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="df4" class="mid"> 
								  	<label for="df4"></label>
								  	<label class="position_df_txt">수비수</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_gk">
						  		<div class="position_wrap">
						  			<input type="checkbox" id="gk1" class="mid"> 
						  			<label for="gk1"></label>
						  			<label class="position_df_txt">골키퍼</label>
					  			</div>
						  	</div>
						</div>
						</div>
						</div>
						
						<div class="item">
				        <div class="formation">
						<div class="checks">
							<div class="positon_fw">
								<div class="position_wrap">
						  			<input type="checkbox" id="fw1" class="fw"> 
						  			<label for="fw1"></label>
						  			<label class="position_fw_txt">공격수</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="checkbox" id="fw2"> 
								  	<label for="fw2"></label> 
								  	<label class="position_fw_txt">공격수</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="fw3"> 
								  	<label for="fw3"></label>
								  	<label class="position_fw_txt">공격수</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_mid">
							  	<div class="position_wrap">
						  			<input type="checkbox" id="mid1" class="mid"> 
						  			<label for="mid1"></label>
						  			<label class="position_mid_txt">미드필더</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="checkbox" id="mid2" class="mid"> 
								  	<label for="mid2"></label> 
								  	<label class="position_mid_txt">미드필더</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="mid3" class="mid"> 
								  	<label for="mid3"></label>
								  	<label class="position_mid_txt">미드필더</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_df">
							  	<div class="position_wrap">
						  			<input type="checkbox" id="df1" class="mid"> 
						  			<label for="df1"></label>
						  			<label class="position_df_txt">수비수</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="checkbox" id="df2" class="mid"> 
								  	<label for="df2"></label> 
								  	<label class="position_df_txt">수비수</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="df3" class="mid"> 
								  	<label for="df3"></label>
								  	<label class="position_df_txt">수비수</label> 
							  	</div>
							  	<div class="position_wrap">
								  	<input type="checkbox" id="df4" class="mid"> 
								  	<label for="df4"></label>
								  	<label class="position_df_txt">수비수</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_gk">
						  		<div class="position_wrap">
						  			<input type="checkbox" id="gk1" class="mid"> 
						  			<label for="gk1"></label>
						  			<label class="position_df_txt">골키퍼</label>
					  			</div>
						  	</div>
						</div>
						</div>
						</div>
						</div>
						<!-- Left and right controls -->
					    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					      <span class="sr-only">Previous</span>
					    </a>
					    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					      <span class="sr-only">Next</span>
					    </a>
				      </div>
				  <button type="button" class="formation_select">선택</button>
				  <p>
				  	*동반인원이 있을경우 그 인원에 맞게 포지션에 체크해주세요.<br>
				  	*동반인원이 없을시 원하는 포지션만 선택해주세요.
				  </p>		
				  <!--  end of image carousel -->
				</li>
				<li class="team_comment">
						<label class="label2">팀설명</label>
						<textarea rows="10" cols="50" name="content" id="content"></textarea>						
				</li>
				<li class="filebox">
						<label class="label2">팀로고 등록</label>
						<input type="text" name="fname" id="fname" class="upload-file" placeholder="파일선택"> 
						<label class="upload-text" id="btnUpload">업로드</label> 
						<input type="file" name="uploadFile" class="upload-hidden">
				</li>
				<li>
					<label class="label2">지역</label>
						<select name="selBox">
                           <option value="1">서울</option>   
                           <option value="2">부산</option>    
                           <option value="3">제주</option>
                           <option value="4">대구</option>
                           <option value="5">대전</option>
                           <option value="6">전주</option>
                           <option value="7">광주</option>    
                       </select>
				</li>
	
				<li class="agree">
					<label class="label2">약관 동의</label>
					<input type="checkbox" name="agree" id="agree">
					<span class="create_agree"> 약관에 동의합니다.</span>
							<!-- <img src="../css/image/tick.png"> -->
				</li>
				<li class="sending">
					<span class="btn1" id= "createCheck" >팀 생성 &nbsp;<!-- <img src="../css/image/tick.png"> --></span>&nbsp;&nbsp;
					<span class="btn2" id= "createCancle">취소 &nbsp;<!-- <img src="../css/image/cross.png">--></span>
				</li>
			</ul>
			
		</form>
	</div>
</section>
  
<%@include file="../include/footer.jsp" %>
<script type="text/javascript" src="/resources/js/formation_select.js"></script>

