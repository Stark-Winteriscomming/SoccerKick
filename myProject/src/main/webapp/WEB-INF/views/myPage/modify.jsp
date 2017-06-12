<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
	userVO vo = (userVO)request.getAttribute("vo");
%>
<%@include file="../include/header.jsp" %>
<link href="/resources/css/mypage.css" rel="stylesheet">
    <section id="portfolio" class="bg-light-gray">
    	<div class="content">
    		<div class="innerborder">
    			<h2 class="title">마이페이지</h2>
    			<form name="modifyform" action="/myPage/modify_update">
    				<div class="core">
    					<div class="profile">
    						<div class="profileimg">
    							<img id="blah" src="#" alt="your image" />
    						</div>
    						<div class="btn_img">
    							<button class="btn_img" type="button">이미지 선택</button>
    							<input type="file" name="uploadfile" class="upload-hidden">
    						</div>
    					</div>
    					<div class="list">
    						<div class="account">
    							<%=vo.getClient_id() %> 님의 정보
    						</div>
    						<div class="innercore">
    							<ul class="member_list">
    								<li>
    									<label class="labelid">
    										<span class="member_span">아이디</span>
    									</label>
    									<span class="inlineBlock"><%=vo.getClient_id() %></span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">닉네임</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="회원닉네임" value="<%=vo.getClient_name()%>">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">전화번호</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="회원전화번호" value="<%=vo.getClient_phone()%>">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">지역</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="지역" value="<%=vo.getClient_region()%>">
    									</span>
    								</li>
    								<li>
    									<label class="labelid">
    										<span class="member_span">포지션</span>
    									</label>
    									<span class="inlineBlock">
    										<input type="text" placeholder="포지션" value="<%=vo.getPosition_id()%>">
    									</span>
    								</li>
    							</ul>
    							<div class="introduce">
    								<h4>내소개</h4>
    								<textarea rows="" cols="" class="introduce_content" value="<%=vo.getClient_history()%>"></textarea>
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
    							<img src="/resources/img/guestbook.PNG" width="48" height="48"/>
    						</div>
    						<textarea class="guestbook_content"></textarea>
    						<input type="submit" class="guestbook_submit" value="내용입력">
    					</form>
    					<Hr>
    				</div>
    			</div>
    			<div align="center">
    			    <button type="button" class="btn_modify">수정완료</button>
    				<button type="button" class="btn_cancel">취소</button>
    			</div>
    		</div>
    	</div>
    	
    </section>

<%@include file="../include/footer.jsp" %>
<script type="text/javascript">
        $(function() {
        	/* $('#blah').css('display','none').css({ opacity: 0 }); */
            $(".upload-hidden").on('change', function(){
                readURL(this);
            });
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
            	$('#blah').css('opacity','1');
              	$('#blah').attr('src', e.target.result);
            }
            	
              	reader.readAsDataURL(input.files[0]);
            }
        }
    </script>