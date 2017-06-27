<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
	<%@include file="../include/header.jsp" %>
	<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<link href="/resources/css/team_open.css" rel="stylesheet">


<style>
	#selected_place{
		display:none;

	}
	h3{
		text-align: center;
	}
	.thumbnail{
		height:300px;
	}
</style>
<section id="portfolio" class="bg-light-gray">
		<div class="content">
			<div class="pageTitle">
				<h1>경기매칭</h1>
			</div>
			<form name="matching_form" action="matching_controller" method="post"> 
				<div class="container">
				<!-- <div class="btn-group-vertical navbar-fixed-top"  role="group" aria-label="..." style="top: 550px; left: 30px;"> 
					<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 1</button>
					<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 2</button>
					<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 3</button>
				</div> -->
					<!-- start of team_logo -->
				
					<!-- end of team_logo -->

					<!-- start of team_title -->
					<div class="team_title">
						<h4 class="webFont">제목</h4>
						<div class="edit">
							<input type="text" placeholder="매칭 제목을 입력해 주세요." name="gametitle"/>
						</div>
					</div>
					<!-- end of team_title -->

					<!-- start of reception -->
					<div class="reception">
						<h4 class="webFont">경기신청기간</h4>
						<div class="start">
							<input type="text" id="datepicker1" size="12" name="startdate"> <span>
								<select name="startclock" class="time_select">
									<option value="00:00">오전 0시 00분(자정)</option>
									<option value="00:30">오전 0시 30분</option>
									<option value="01:00">오전 1시 00분</option>
									<option value="01:30">오전 1시 30분</option>
									<option value="02:00">오전 2시 00분</option>
									<option value="02:30">오전 2시 30분</option>
									<option value="03:00">오전 3시 00분</option>
									<option value="03:30">오전 3시 30분</option>
									<option value="04:00">오전 4시 00분</option>
									<option value="04:30">오전 4시 30분</option>
									<option value="05:00">오전 5시 00분</option>
									<option value="05:30">오전 5시 30분</option>
									<option value="06:00">오전 6시 00분</option>
									<option value="06:30">오전 6시 30분</option>
									<option value="07:00">오전 7시 00분</option>
									<option value="07:30">오전 7시 30분</option>
									<option value="08:00">오전 8시 00분</option>
									<option value="08:30">오전 8시 30분</option>
									<option value="09:00">오전 9시 00분</option>
									<option value="09:30">오전 9시 30분</option>
									<option value="10:00">오전 10시 00분</option>
									<option value="10:30">오전 10시 30분</option>
									<option value="11:00">오전 11시 00분</option>
									<option value="11:30">오전 11시 30분</option>
									<option value="12:00">오후 0시 00분(정오)</option>
									<option value="12:30">오후 0시 30분</option>
									<option value="13:00">오후 1시 00분</option>
									<option value="13:30">오후 1시 30분</option>
									<option value="14:00">오후 2시 00분</option>
									<option value="14:30">오후 2시 30분</option>
									<option value="15:00">오후 3시 00분</option>
									<option value="15:30">오후 3시 30분</option>
									<option value="16:00">오후 4시 00분</option>
									<option value="16:30">오후 4시 30분</option>
									<option value="17:00">오후 5시 00분</option>
									<option value="17:30">오후 5시 30분</option>
									<option value="18:00">오후 6시 00분</option>
									<option value="18:30">오후 6시 30분</option>
									<option value="19:00">오후 7시 00분</option>
									<option value="19:30">오후 7시 30분</option>
									<option value="20:00">오후 8시 00분</option>
									<option value="20:30">오후 8시 30분</option>
									<option value="21:00">오후 9시 00분</option>
									<option value="21:30">오후 9시 30분</option>
									<option value="22:00">오후 10시 00분</option>
									<option value="22:30">오후 10시 30분</option>
									<option value="23:00">오후 11시 00분</option>
									<option value="23:30">오후 11시 30분</option>
							</select>
							</span>
						</div>
						<span class="start_txt">~</span>
						<div class="end">
							<input type="text" id="datepicker2" size="12" name="enddate"> <select
								name="endclock" class="time_select">
								<option value="00:00">오전 0시 00분(자정)</option>
									<option value="00:30">오전 0시 30분</option>
									<option value="01:00">오전 1시 00분</option>
									<option value="01:30">오전 1시 30분</option>
									<option value="02:00">오전 2시 00분</option>
									<option value="02:30">오전 2시 30분</option>
									<option value="03:00">오전 3시 00분</option>
									<option value="03:30">오전 3시 30분</option>
									<option value="04:00">오전 4시 00분</option>
									<option value="04:30">오전 4시 30분</option>
									<option value="05:00">오전 5시 00분</option>
									<option value="05:30">오전 5시 30분</option>
									<option value="06:00">오전 6시 00분</option>
									<option value="06:30">오전 6시 30분</option>
									<option value="07:00">오전 7시 00분</option>
									<option value="07:30">오전 7시 30분</option>
									<option value="08:00">오전 8시 00분</option>
									<option value="08:30">오전 8시 30분</option>
									<option value="09:00">오전 9시 00분</option>
									<option value="09:30">오전 9시 30분</option>
									<option value="10:00">오전 10시 00분</option>
									<option value="10:30">오전 10시 30분</option>
									<option value="11:00">오전 11시 00분</option>
									<option value="11:30">오전 11시 30분</option>
									<option value="12:00">오후 0시 00분(정오)</option>
									<option value="12:30">오후 0시 30분</option>
									<option value="13:00">오후 1시 00분</option>
									<option value="13:30">오후 1시 30분</option>
									<option value="14:00">오후 2시 00분</option>
									<option value="14:30">오후 2시 30분</option>
									<option value="15:00">오후 3시 00분</option>
									<option value="15:30">오후 3시 30분</option>
									<option value="16:00">오후 4시 00분</option>
									<option value="16:30">오후 4시 30분</option>
									<option value="17:00">오후 5시 00분</option>
									<option value="17:30">오후 5시 30분</option>
									<option value="18:00">오후 6시 00분</option>
									<option value="18:30">오후 6시 30분</option>
									<option value="19:00">오후 7시 00분</option>
									<option value="19:30">오후 7시 30분</option>
									<option value="20:00">오후 8시 00분</option>
									<option value="20:30">오후 8시 30분</option>
									<option value="21:00">오후 9시 00분</option>
									<option value="21:30">오후 9시 30분</option>
									<option value="22:00">오후 10시 00분</option>
									<option value="22:30">오후 10시 30분</option>
									<option value="23:00">오후 11시 00분</option>
									<option value="23:30">오후 11시 30분</option>
							</select>
						</div>
					</div>
					<!-- end of reception -->

					<!-- start of formation -->
					<div class="formation">
						<h4 class="webFont">장소선택</h4>
						<div class="container2">
						  <input type="hidden" name="place" id="place" value="${vo.title }"/>
						  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">장소 선택</button>
						  <div class="modal fade" id="myModal" role="dialog">
						    <div class="modal-dialog">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">장소 선택</h4>
						        </div>
						        <div class="modal-body">
						          <div class="container_place">
									<div class="row">
								  <div class="col-sm-6 col-md-4" id="seongbuk">
								    <div class="thumbnail">
								      <img src="../resources/ground/1.jpg" alt="...">
								      <div class="caption">
								        <h3>성북 경기장</h3>
								                     
								        <p><a href="#btn" class="btn btn-primary" role="button" id="btn_seongbuk">선택하기</a></p>
								      </div>
								    </div>   
								  </div>
								  <div class="col-sm-6 col-md-4">
								    <div class="thumbnail">
								      <img src="../resources/ground/2.jpg" alt="...">
								      <div class="caption">
								        <h3>강남 경기장</h3>
								        <p><a href="#btn" class="btn btn-primary" role="button" id="btn_gangnam">선택하기</a></p>
								      </div>
								    </div>
								  </div>
								  <div class="col-sm-6 col-md-4">
								    <div class="thumbnail">
								      <img src="../resources/ground/3.jpg" alt="...">
								      <div class="caption">
								        <h3>동대문<br>경기장</h3>
								        
								        <p><a href="#btn" class="btn btn-primary" role="button" id="btn_dongdaemun">선택하기</a></p>
								      </div>
								    </div>
								  </div> 
								  <div class="col-sm-6 col-md-4">
								    <div class="thumbnail">
								      <img src="../resources/ground/2.jpg" alt="...">
								      <div class="caption">
								        <h3>광진 경기장</h3>
								         
								        <p><a href="#btn" class="btn btn-primary" role="button" id="btn_gwangjin">선택하기</a></p>
								      </div>
								    </div>
								  </div>
								  <div class="col-sm-6 col-md-4">
								    <div class="thumbnail">
								      <img src="../resources/ground/5.jpg" alt="...">
								      <div class="caption">
								        <h3>서초 경기장</h3>
								        <p><a href="#btn" class="btn btn-primary" role="button" id="btn_seocho">선택하기</a></p>
								      </div>
								    </div> 
								  </div>
								  
								</div>  
									</div>  
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						        </div>
						      </div>
						    </div>
						  </div>
						  
						 	<div id="selected_place">
								 <div class="col-sm-6 col-md-4" id="selected_seongbuk">
								      <img src="../resources/ground/1.jpg" alt="..." id="img_seongbuk">
								      <div class="caption">
								        <h3>성북 경기장</h3>           
								      </div>
								  </div>
								   <div class="col-sm-6 col-md-4" id="selected_gangnam">
								      <img src="../resources/ground/2.jpg" alt="..." id="img_gangnam">
								      <div class="caption">
								        <h3>강남 경기장</h3>
								      </div>
								  </div>
								  
								  <div class="col-sm-6 col-md-4" id="selected_dongdaemun">
								      <img src="../resources/ground/3.jpg" alt="..." id="img_dongdaemun">
								      <div class="caption">
								        <h3>동대문 경기장</h3>
								      </div>
								    
								  </div>
								   <div class="col-sm-6 col-md-4" id="selected_gwangjin">
								      <img src="../resources/ground/2.jpg" alt="..." id="img_gwangjin">
								      <div class="caption">
								        <h3>광진 경기장</h3>
								      </div>
								  </div>
								  <div class="col-sm-6 col-md-4" id="selected_seocho">
								      <img src="../resources/ground/5.jpg" alt="..." id="img_seocho">
								      <div class="caption">
								        <h3>서초 경기장</h3>
								      </div>
								  </div> 
							</div>
						</div>
						
						
					</div>
					<!-- end of formation -->
					
					<!-- start of team_comment -->
					<div class="team_comment">
						<h4 class="webFont">팀 소개</h4>
						<div class="comment">
							<textarea cols="95" rows="5" name="content"></textarea>
						</div>
					</div>
					<!-- end of team_comment -->

					<div class="aplication_phone">
						<h4 class="webFont">
							신청문의<br>연락처
						</h4>
						<div class="edit">
							<div class="contact">
								<div class="phone">
									<span>전화번호 입력</span>
									<select class="ownerphone_head" name="phone1">
										<option selected="selected" value="010">010</option>
										<option value="011">011</option>
										<option value="015">015</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
										<option value="02">02</option>
										<option value="031">031</option>
										<option value="032">032</option>
										<option value="033">033</option>
										<option value="041">041</option>
										<option value="042">042</option>
										<option value="043">043</option>
										<option value="044">044</option>
										<option value="0502">0502</option>
										<option value="0505">0505</option>
										<option value="051">051</option>
										<option value="052">052</option>
										<option value="053">053</option>
										<option value="054">054</option>
										<option value="055">055</option>
										<option value="061">061</option>
										<option value="062">062</option>
										<option value="063">063</option>
										<option value="064">064</option>
										<option value="070">070</option>
									</select>
									<input type="text" size="4" name="phone2"/>
									<input type="text" size="4" name="phone3"/>
								</div>
								<div class="email">
									<span>이메일 입력</span>
									<input type="text" name="email1" />@
									<input type="text" name="email2"/>
								</div>
							</div>
						</div>
					</div>
					<div class="btn_group">
						<button type="button" class="btn_open">개설하기</button>
						<button type="button" class="btn_cancel">취소</button>
					</div>
				</div>
			</form>
		</div>
	</section>
	
	
	<%@include file="../include/footer.jsp" %>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

	<script>
		$(function() {
		  $( "#datepicker1, #datepicker2" ).datepicker({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    dayNames: ['일','월','화','수','목','금','토'],
		    dayNamesShort: ['일','월','화','수','목','금','토'],
		    dayNamesMin: ['일','월','화','수','목','금','토'],
		    showMonthAfterYear: true,
		    changeMonth: true,
		    changeYear: true,
		    yearSuffix: '년'
		  });
		});
	</script>

	<script>
		$(document).ready(function(){
			
		    $("#btn_seongbuk").click(function(){
		    	$(".formation").css('height','500px');
		    	$("#selected_place").css('display','block').css('width','783px')
		    	.css('height','400px').css('margin-top','30px')
		    	.css('margin-left','0px');
		    	$("#selected_seongbuk").css('padding-left','0px')
		    	.css('display','block').css('width','100%');
		    	$("#img_seongbuk").css('width','100%').css('height','300px');
		    	$("#place").val('성북');
		    	
		    	$("#selected_gangnam").css('display','none');
		    	$("#selected_dongdaemun").css('display','none');
		    	$("#selected_gwangjin").css('display','none');
		    	$("#selected_seocho").css('display','none');
		    });
		    
		    $("#btn_gangnam").click(function(){
		    	$(".formation").css('height','500px');
		    	$("#selected_place").css('display','block').css('width','783px')
		    	.css('height','400px').css('margin-top','30px')
		    	.css('margin-left','0px');
		    	$("#selected_gangnam").css('padding-left','0px').css('display','block').css('width','100%');
		    	$("#img_gangnam").css('width','100%').css('height','300px');
		    	$("#place").val('강남');
		    	
		    	$("#selected_seongbuk").css('display','none');
		    	$("#selected_dongdaemun").css('display','none');
		    	$("#selected_gwangjin").css('display','none');
		    	$("#selected_seocho").css('display','none');
		    });
		    $("#btn_dongdaemun").click(function(){
		    	$(".formation").css('height','500px');
		    	$("#selected_place").css('display','block').css('width','783px')
		    	.css('height','400px').css('margin-top','30px')
		    	.css('margin-left','0px');
		    	$("#selected_dongdaemun").css('padding-left','0px').css('display','block').css('width','100%');
		    	$("#img_dongdaemun").css('width','100%').css('height','300px');
		    	$("#place").val('동대문');
		    	
		    	$("#selected_seongbuk").css('display','none');
		    	$("#selected_gangnam").css('display','none');
		    	$("#selected_gwangjin").css('display','none');
		    	$("#selected_seocho").css('display','none');
		    });
		    
		    $("#btn_gwangjin").click(function(){
		    	$(".formation").css('height','500px');
		    	$("#selected_place").css('display','block').css('width','783px')
		    	.css('height','400px').css('margin-top','30px')
		    	.css('margin-left','0px');
		    	$("#selected_gwangjin").css('padding-left','0px').css('display','block').css('width','100%');
		    	$("#img_gwangjin").css('width','100%').css('height','300px');
		    	$("#place").val('광진');
		    	
		    	$("#selected_gangnam").css('display','none');
		    	$("#selected_seongbuk").css('display','none');
		    	$("#selected_dongdaemun").css('display','none');
		    	$("#selected_seocho").css('display','none');
		    	
		    });
		    $("#btn_seocho").click(function(){
		    	$(".formation").css('height','500px');
		    	$("#selected_place").css('display','block').css('width','783px')
		    	.css('height','400px').css('margin-top','30px')
		    	.css('margin-left','0px');
		    	$("#selected_seocho").css('padding-left','0px').css('display','block').css('width','100%');
		    	$("#img_seocho").css('width','100%').css('height','300px');
		    	$("#place").val('서초');
		    	
		    	$("#selected_gangnam").css('display','none');
		    	$("#selected_seongbuk").css('display','none');
		    	$("#selected_dongdaemun").css('display','none');
		    	$("#selected_gwangjin").css('display','none');
		    });
		    
		    $(".btn_open").click(function(){
		    	matching_form.submit();
		    });
		});
	</script>