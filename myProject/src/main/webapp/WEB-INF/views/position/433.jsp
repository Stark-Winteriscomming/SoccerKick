<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.soccerkick.vo.*"%>
<%@ page import="java.util.*"%>
<%
	ArrayList<MemberSelectVO> list = (ArrayList<MemberSelectVO>)request.getAttribute("list");
	TeamVO tvo = (TeamVO)request.getAttribute("tvo");
%>
	<style>
		#content_wrap{
			width:1200px;
			height:800px;
			margin:0 auto;
		}
		.wrap_formation{
			width:500px;
			height:800px;
			float:left;
			
		}
		.ftitle{
			width:500px;
			text-align: center;
		}
		.ftitle2{
			width:650px;
			text-align: center;
		}
		.formation_433{
			width: 500px;
			height: 655px;
			background: url("/resources/img/POSITION/formation.jpg");
			background-size:500px;
			padding-top: 70px;
			
		}
		.formation_wrap{
			width:100%;
			height:100%;
			margin-top: 30px;
		}
		#selected_member{
			width:650px;
			float:left;
			margin-left: 50px;
		}
		.fw,.mid,.df{
			width:72%;
			margin:0 auto;
		}
		.fw{
			margin-bottom: 145px;
		}
		.mid{
			margin-bottom:85px;
		}
		#lwf,#lm{
			margin-right: 70px;
		}
		#st,#cm{
			margin-right: 65px;
		}
		#lb,#cb1,#cb2{
			margin-right: 21px;
		}
		#lb,#rb{
			margin-bottom: 60px;
		}
		.gk{
			width:70px;
			margin:0 auto;
			margin-top: 5px;
		}
		img{
			cursor:pointer;
		}
		img:HOVER{
			opacity:0.9;
		}
		#btn_group{
			text-align: center;
		}
		#cselect{
			background-color: #337ab7;
			border:none;
			opacity:0;
		}
		#cselect:HOVER {
			background-color: #286090;
		}
		#select_comment{
			text-align: center;
			color: gray;
		}
	</style>

	<div id="content_wrap">
		<Div class="wrap_formation">
			<h1 class="ftitle">포메이션</h1>
			<div class="formation_433">
				
					<div class="fw">
						
						<img src="/resources/img/POSITION/LWF.png" width="70px" height="70px;" id="lwf"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=LWF','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						
						<img src="/resources/img/POSITION/ST.png" width="70px" height="70px;" id="st" 
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=ST','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						<img src="/resources/img/POSITION/RWF.png" width="70px" height="70px;" id="rwf"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=RWF','popup','scrollbars=no, resizable=no, width=800,height=600')"/>		
					</div>
					
					<div class="mid">
						<img src="/resources/img/POSITION/LM.png" width="70px" height="70px;" id="lm"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=LM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						<img src="/resources/img/POSITION/CM.png" width="70px" height="70px;" id="cm"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=CM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						<img src="/resources/img/POSITION/RM.png" width="70px" height="70px;" id="rm"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=RM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
					</div>
					
					<div class="df">
						<img src="/resources/img/POSITION/LB.png" width="70px" height="70px;" id="lb"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=LB','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						<img src="/resources/img/POSITION/CB.png" width="70px" height="70px;" id="cb1"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=LCB','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						<img src="/resources/img/POSITION/CB.png" width="70px" height="70px;" id="cb2"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=RCB','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
						<img src="/resources/img/POSITION/RB.png" width="70px" height="70px;" id="rb"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=RB','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
					</div>
					
					<div class="gk">
						<img src="/resources/img/POSITION/GK.png" width="70px" height="70px;" id="gk"
							onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=GK','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
					</div>
				
			</div>
		</Div>
		
		<div id="selected_member">
			<h1 class="ftitle2">선택 된 선수리스트</h1>
			<br>
			
		<!-- <form name="selectForm action="/myPage/complete_team" method="post"> -->
				
				<table class="table table-striped" id="tList">
					<thead>
						<tr>
							<th><input type="checkbox" name="tcheck" id="tcheck"></th>
							<th>이미지</th>
							<th class="sorting_tno">번호</th>
							<th class="sorting_name">이름</th>
							<th class="sorting">나이</th>
							<th class="sorting">지역</th>
							<th class="sorting">신청포지션</th>
							<th>비고</th>
						</tr>
					</thead>
					<%for(MemberSelectVO mvo : list) {%>
					<tr class="info">
						<td class="Id" style="display:none;"><%= mvo.getApply_id() %></td>
						<td class="tId" style="display:none;"><%= mvo.getTeam_id() %></td>
						<td class="formation" style="display:none;"><%= tvo.getTeam_formation() %></td>
						<td>
							<input type="checkbox" name="no" id="scheck"
							value=<%= mvo.getNo() %> />
						</td>
						<td><img
							src="http://sstatic.naver.net/people/91/201405301047405271.jpg" /></td>
						<td><%= mvo.getRno() %></td>
						<td><%= mvo.getApply_name() %></td>
						<td><%= mvo.getAge() %></td>
						<td><%= mvo.getRegion() %></td>
						<td class="position"><%= mvo.getA_apy_position() %></td>
						<td>
							<a href="/myPage/delete_member?no=<%=mvo.getNo()%>">
								<button type="button" class="btn btn-default">삭제</button>
							</a>
						</td>
					</tr>
					<%} %>
				</table>
				<div id="select_comment">
					현재 선택된 선수가 없습니다.
				</div>
				<div id="btn_group">
				<!-- <button class="cselect" style="width: 280px; height: 80px;">선택 취소</button> -->
				<button id="cselect" class="btn btn-primary btn-lg btn-block">선택 완료</button>
			</div>
 			<!-- </form>  -->
<!-- 			<form name="selectForm" action="/myPage/complete_team" method="post"> -->
				
<!-- 			</form> -->
		</div>
		
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
			var cArray = new Array();
			$("#cselect").on("click", function(){
				console.log('click');
				$('#tList tr.info').each(function() {
					var id = $(this).children('.Id').html();
					var position = $(this).children('.position').html();
					var tid = $(this).children('.tId').html();
					var formation = $(this).children('.formation').html();
					
					var obj = new Object();
					obj.id = id;
					obj.position = position;
					obj.tid = tid;
					obj.formation = formation;
					cArray.push(obj);
					
				});
				var sendObj = new Object();
				sendObj.client = cArray;
				
				$.ajax({
					url : 'complete_team',
					type : 'post',
					data : JSON.stringify(sendObj),
					dataType : "text",
					contentType : "application/json; charset=UTF-8",
					success : function(result){
						console.log(result);  
						
						if(result == 'successed'){
							alert("멤버 선택이 완료됐습니다.");
							location.href="/team/teamView?team_id=${tvo.team_id}";

						}
					}
					
				});
			});
		</script>
		<script>
			$(document).ready(function(){
				if($("#tList tr").length == 1){
					$("#cselect").hide();
		 		}
				else if($("#tList tr").length > 1){
					$("#cselect").show();
					$("#cselect").css('opacity',1);
					$("#select_comment").hide();
					$("#select_comment").css('opacity',0);
				}
			});
		</script>