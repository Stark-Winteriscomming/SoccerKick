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
		.formation_41212{
			width: 500px;
			height: 655px;
			background: url("/resources/img/POSITION/formation.jpg");
			background-size:500px;
			padding-top: 70px;
		}
		.fw,.cm,.df{
			width:72%;
			margin:0 auto;
			height:70px;
		}
		.fw{
			margin-bottom: 50px;
		}
		.cm{
			margin-bottom: 10px;
		}
		.df{
			height:130px;
		}
		.cam,.cdm{
			clear: both;
			width:70px;
			height:70px;
			margin:0 auto;
		}
		.cam{
			margin-bottom:30px;
		}
		.cdm{
			height:px;
			margin-bottom: 0px;
		}
		#ls,#lm{
			float:left;
		}
		#rs,#rm{
			float:right;
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
		#selected_member{
			width:650px;
			float:left;
			margin-left: 50px;
		}
		img{
			cursor:pointer;
		}
	</style>
</head>
<body>
	<div id="content_wrap">
		<Div class="wrap_formation">
			<h1 class="ftitle">포메이션</h1>
			<div class="formation_41212">
		<div class="fw">
			<img src="/resources/img/POSITION/LS.png" width="70px" height="70px;" id="ls"
				onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=LS','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
			<img src="/resources/img/POSITION/RS.png" width="70px" height="70px;" id="rs"
				onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=RS','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
		</div>
		
		<div class="cam">
			<img src="/resources/img/POSITION/CAM.png" width="70px" height="70px;" id="cam"
				onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=CAM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
		</div>
		
		<div class="cm">
			<img src="/resources/img/POSITION/LM.png" width="70px" height="70px;" id="lm"
				onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=LM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
			<img src="/resources/img/POSITION/RM.png" width="70px" height="70px;" id="rm"
				onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=RM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
		</div>
		
		<div class="cdm">
			<img src="/resources/img/POSITION/CDM.png" width="70px" height="70px;" id="cdm"
				onClick="javascript:window.open('/myPage/memberSelectPopup?team_id=<%=tvo.getTeam_id()%>&position=CDM','popup','scrollbars=no, resizable=no, width=800,height=600')"/>
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

				<table class="table table-striped">
					<thead>
						<tr>
							<th><input type="checkbox" name="tcheck" id="tcheck"></th>
							<th>이미지</th>
							<th class="sorting_tno">번호</th>
							<th class="sorting_name">이름</th>
							<th class="sorting">나이</th>
							<th class="sorting">지역</th>
							<th class="sorting">신청포지션</th>
							<th>프로필보기</th>
						</tr>
					</thead>
					<%for(MemberSelectVO mvo : list) {%>
					<tr>
						<td><input type="checkbox" name="scheck" id="scheck"
							value=<%= mvo.getNo() %> /></td>
						<td><img
							src="http://sstatic.naver.net/people/91/201405301047405271.jpg" /></td>
						<td><%= mvo.getRno() %></td>
						<td><%= mvo.getApply_name() %></td>
						<td><%= mvo.getAge() %></td>
						<td><%= mvo.getRegion() %></td>
						<td><%= mvo.getA_apy_position() %></td>
						<td><button class="btn btn-default">프로필보기</button></td>
					</tr>
					<%} %>
				</table>

			<div id="btn_group">
				
				<button id="cselect" style="width: 280px; height: 80px;">선택 완료</button>
			</div>
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
					}
					
				});
			});
		</script> 