<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
	<%@include file="../include/header.jsp" %>
	<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<link href="/resources/css/team_open.css" rel="stylesheet">
	<style>
		.carousel-inner>.item>img, .carousel-inner>.item>a>img {
			width: 70%;
			margin: auto;
		}
	</style>
	<section id="portfolio" class="bg-light-gray">
		<div class="content">
			<div class="pageTitle">
				<h1>팀 개설하기</h1>
			</div>
			<form> 
				<div class="container">
				<div class="btn-group-vertical navbar-fixed-top"  role="group" aria-label="..." style="top: 550px; left: 30px;"> 
					<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 1</button>
					<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 2</button>
					<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 3</button>
				</div>
					<!-- start of team_logo -->
					<div class="team_logo">
						<div class="img_area"></div>
						<button class="btn_img" type="button">추천 이미지 보기</button>
					</div>
					<!-- end of team_logo -->

					<!-- start of team_title -->
					<div class="team_title">
						<h4 class="webFont">팀 이름</h4>
						<div class="edit">
							<input type="text" placeholder="팀 이름을 입력해 주세요." />
						</div>
					</div>
					<!-- end of team_title -->

					<!-- start of reception -->
					<div class="reception">
						<h4 class="webFont">접수기간</h4>
						<div class="start">
							<input type="text" id="datepicker1" size="12"> <span>
								<select name="clock" class="time_select">
									<option value="">오전 0시 00분(자정)</option>
									<option value="">오전 0시 30분</option>
									<option value="">오전 1시 00분</option>
									<option value="">오전 1시 30분</option>
									<option value="">오전 2시 00분</option>
									<option value="">오전 2시 30분</option>
									<option value="">오전 3시 00분</option>
									<option value="">오전 3시 30분</option>
									<option value="">오전 4시 00분</option>
									<option value="">오전 4시 30분</option>
									<option value="">오전 5시 00분</option>
									<option value="">오전 5시 30분</option>
									<option value="">오전 6시 00분</option>
									<option value="">오전 6시 30분</option>
									<option value="">오전 7시 00분</option>
									<option value="">오전 7시 30분</option>
									<option value="">오전 8시 00분</option>
									<option value="">오전 8시 30분</option>
									<option value="">오전 9시 00분</option>
									<option value="">오전 9시 30분</option>
									<option value="">오전 10시 00분</option>
									<option value="">오전 10시 30분</option>
									<option value="">오전 11시 00분</option>
									<option value="">오전 11시 30분</option>
									<option value="">오후 0시 00분(정오)</option>
									<option value="">오후 0시 30분</option>
									<option value="">오후 1시 00분</option>
									<option value="">오후 1시 30분</option>
									<option value="">오후 2시 00분</option>
									<option value="">오후 2시 30분</option>
									<option value="">오후 3시 00분</option>
									<option value="">오후 3시 30분</option>
									<option value="">오후 4시 00분</option>
									<option value="">오후 4시 30분</option>
									<option value="">오후 5시 00분</option>
									<option value="">오후 5시 30분</option>
									<option value="">오후 6시 00분</option>
									<option value="">오후 6시 30분</option>
									<option value="">오후 7시 00분</option>
									<option value="">오후 7시 30분</option>
									<option value="">오후 8시 00분</option>
									<option value="">오후 8시 30분</option>
									<option value="">오후 9시 00분</option>
									<option value="">오후 9시 30분</option>
									<option value="">오후 10시 00분</option>
									<option value="">오후 10시 30분</option>
									<option value="">오후 11시 00분</option>
									<option value="">오후 11시 30분</option>
							</select>
							</span>
						</div>
						<span class="start_txt">~</span>
						<div class="end">
							<input type="text" id="datepicker2" size="12"> <select
								name="clock" class="time_select">
								<option value="">오전 0시 00분(자정)</option>
								<option value="">오전 0시 30분</option>
								<option value="">오전 1시 00분</option>
								<option value="">오전 1시 30분</option>
								<option value="">오전 2시 00분</option>
								<option value="">오전 2시 30분</option>
								<option value="">오전 3시 00분</option>
								<option value="">오전 3시 30분</option>
								<option value="">오전 4시 00분</option>
								<option value="">오전 4시 30분</option>
								<option value="">오전 5시 00분</option>
								<option value="">오전 5시 30분</option>
								<option value="">오전 6시 00분</option>
								<option value="">오전 6시 30분</option>
								<option value="">오전 7시 00분</option>
								<option value="">오전 7시 30분</option>
								<option value="">오전 8시 00분</option>
								<option value="">오전 8시 30분</option>
								<option value="">오전 9시 00분</option>
								<option value="">오전 9시 30분</option>
								<option value="">오전 10시 00분</option>
								<option value="">오전 10시 30분</option>
								<option value="">오전 11시 00분</option>
								<option value="">오전 11시 30분</option>
								<option value="">오후 0시 00분(정오)</option>
								<option value="">오후 0시 30분</option>
								<option value="">오후 1시 00분</option>
								<option value="">오후 1시 30분</option>
								<option value="">오후 2시 00분</option>
								<option value="">오후 2시 30분</option>
								<option value="">오후 3시 00분</option>
								<option value="">오후 3시 30분</option>
								<option value="">오후 4시 00분</option>
								<option value="">오후 4시 30분</option>
								<option value="">오후 5시 00분</option>
								<option value="">오후 5시 30분</option>
								<option value="">오후 6시 00분</option>
								<option value="">오후 6시 30분</option>
								<option value="">오후 7시 00분</option>
								<option value="">오후 7시 30분</option>
								<option value="">오후 8시 00분</option>
								<option value="">오후 8시 30분</option>
								<option value="">오후 9시 00분</option>
								<option value="">오후 9시 30분</option>
								<option value="">오후 10시 00분</option>
								<option value="">오후 10시 30분</option>
								<option value="">오후 11시 00분</option>
								<option value="">오후 11시 30분</option>
							</select>
						</div>
					</div>
					<!-- end of reception -->

					<!-- start of formation -->
					<div class="formation">
						<h4 class="webFont">포메이션</h4>
						<div id="myCarousel" class="carousel slide" data-ride="carousel"
							data-interval="false">

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">

								<div class="item active">
									<img src="/resources/img/1.jpg" alt="Chania">

								</div>

								<div class="item">
									<img src="/resources/img/1.jpg" alt="Chania">

								</div>

								<div class="item">
									<img src="/resources/img/1.jpg" alt="Flower">

								</div>

								<div class="item">
									<img src="/resources/img/1.jpg" alt="Flower">

								</div>

							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<!-- end of formation -->
					
					<div class="team_establish">
						<h4 class="webFont">모임 설정</h4>
						<div class="establish">
							<div class="parsleyGroupValidate">
								<table>
									<thead>
										<tr>
											<td>참가인원</td>
											<td>참가비용</td>
											<td>선정방법</td>
											<td>동반인원</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<input type="text" class="people"/>명
											</td>
											<td>
												<input type="text" class="money"/>원
											</td>
											<td>
												<select>
													<option>선착순</option>
													<option>개설자 선정</option>
												</select>
											</td>
											<td>
												자신포함
												<input type="text" class="people"/>명
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					<!-- start of team_comment -->
					<div class="team_comment">
						<h4 class="webFont">모임소개</h4>
						<div class="comment">
							<textarea cols="95" rows="5"></textarea>
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
									<select class="ownerphone_head">
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
									<input type="text" size="4" />
									<input type="text" size="4" />
								</div>
								<div class="email">
									<span>이메일 입력</span>
									<input type="text" />@
									<input type="text" />
								</div>
							</div>
						</div>
					</div>
					<div class="btn_group">
						<input type="submit" class="btn_open" value="개설하기"/>
						<input type="submit" class="btn_cancel"value="취소"/>
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
