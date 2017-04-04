<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SoccerKick</title>
    <link href="../css/mypage.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			$(".btn1").click(function(){
				modifyform.submit();
			});
		});
	</script>
</head>

<body id="page-top" class="index">
	<%@include file="../include/header.jsp" %>
    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray" style="height:1000px;">
    	<div class="content">
    		<div class="innerborder">
    			<h2 class="title">마이페이지</h2>
    			<form name="modifyform" action="2.html">
    				<div class="core">
    					<div class="profile">
    						<div class="profileimg">
    						</div>
    						<div class="btn_img">
    							<button class="btn_img" type="button">이미지 선택</button>
    						</div>
    					</div>
    					<div class="list">
    						<div class="account">
    							접속한아이디
    						</div>
    						<div class="innercore">
    							<ul class="member_list">
    								<li>
    									<label class="labelid">
    										<span class="member_span">아이디</span>
    									</label>
    									<span class="inlineBlock">회원아이디</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">닉네임</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="회원닉네임">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">전화번호</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="회원전화번호">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">지역</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="지역">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">포지션</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="포지션">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">소속팀</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="소속팀">
    									</span>
    								</li>
    							</ul>
    							<div class="introduce">
    								<h4>내소개</h4>
    								<textarea rows="" cols="" class="introduce_content"></textarea>
    							</div>
    						</div>
    					</div>
    				</div>
    			</form>
    			<div class="core2">
    				<div class="team_info">
    					<h4>소속 팀</h4>
    				</div>
    				<div class="guestbook">
    					<h4>방명록</h4>
    					<form class="gusetbookadd" action="1.html">
    						<div class="guestbookimg">
    							<img src="../img/guestbook.PNG" width="48" height="48"/>
    						</div>
    						<textarea class="guestbook_content"></textarea>
    						<input type="submit" class="guestbook_submit" value="내용입력">
    					</form>
    				</div>
    			</div>
    			<center>
    				<button type="button" class="btn_modify">수정완료</button>
    				<button type="button" class="btn_cancel">취소</button>
    			</center>
    		</div>
    	</div>
    	
    </section>


    <%@include file="../include/footer.jsp" %>
</body>

</html>
