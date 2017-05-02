<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
  
<%@include file="../include/header.jsp" %>
<link href="/resources/css/4-3-3.css" rel="stylesheet">
<section id="portfolio" class="bg-light-gray">
 <form action="/gBoard/apply" method="post">
	<div class="container">
	<div class="btn-group-vertical navbar-fixed-top"  role="group" aria-label="..." style="top: 550px; left: 30px;"> 
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 1</button>
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 2</button>
		<button class="btn btn-primary btn-lg" style="width: 300px; border-color: white;">메뉴 3</button>
	</div>
	<div align="center">
	<h1>팀명 - 서울성북</h1>
	</div>
	<br>
	<div class="row">
	<div class="col-md-offset-4 col-md-4">   
			<img src="../resources/img/portfolio/1.png" class="img-circle" style="width: 350px; height: 350px;">  
		</div> 
		<div class="team-member col-md-2" style="margin-top: 70px;">
			감독-안상호
            <img src="../resources/img/team/1.jpg" class="img-responsive img-circle" alt="">
            <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a>
            </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a>
            </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a>
            </li>
            </ul>
         </div>    
		
	</div>
	<br><br>
	
		
         <div align="center">
          
			<div class="formation">     
						<div class="checks">
							<div class="positon_fw">
								<div class="position_wrap">
						  			<input type="radio" id="fw1" class="fw" name="a_apy_position" value="lf" style="width:40px; height:40px;">    
						  			<label for="fw1"></label>
						  			<label class="position_fw_txt">공격수</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="radio" id="fw2" name="a_apy_position" value="cf" style="width:40px; height:40px;"> 
								  	<label for="fw2"></label> 
								  	<label class="position_fw_txt">공격수</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="radio" id="fw3" name="a_apy_position" value="rf" style="width:40px; height:40px;"> 
								  	<label for="fw3"></label>
								  	<label class="position_fw_txt">공격수</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_mid">
							  	<div class="position_wrap">
						  			<input type="radio" id="mid1" class="mid" name="a_apy_position" value="lm" style="width:40px; height:40px;"> 
						  			<label for="mid1"></label>
						  			<label class="position_mid_txt">미드필더</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="radio" id="mid2" class="mid" name="a_apy_position" value="cm" style="width:40px; height:40px;"> 
								  	<label for="mid2"></label> 
								  	<label class="position_mid_txt">미드필더</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="radio" id="mid3" class="mid" name="a_apy_position" value="rm" style="width:40px; height:40px;"> 
								  	<label for="mid3"></label>
								  	<label class="position_mid_txt">미드필더</label> 
							  	</div>
						  	</div>
						  	
						  	<div class="position_df">
							  	<div class="position_wrap">
						  			<input type="radio" id="df1" class="mid" name="a_apy_position" value="lb" style="width:40px; height:40px;"> 
						  			<label for="df1"></label>
						  			<label class="position_df_txt">수비수</label>
					  			</div>
					  			<div class="position_wrap">
						  			<input type="radio" id="df2" class="mid" name="a_apy_position" value="dc1" style="width:40px; height:40px;"> 
								  	<label for="df2"></label> 
								  	<label class="position_df_txt">수비수</label>
							  	</div>
							  	<div class="position_wrap">
								  	<input type="radio" id="df3" class="mid" name="a_apy_position" value="dc2" style="width:40px; height:40px;"> 
								  	<label for="df3"></label>
								  	<label class="position_df_txt">수비수</label> 
							  	</div>
							  	<div class="position_wrap">
								  	<input type="radio" id="df4" class="mid" name="a_apy_position" value="rb" style="width:40px; height:40px;"> 
								  	<label for="df4"></label>
								  	<label class="position_df_txt">수비수</label> 
							  	</div>
						  	</div>
						  	  
						  	<div class="position_gk">
						  		<div class="position_wrap">
						  			<input type="radio" id="gk1" class="mid" name="a_apy_position" value="gk" style="width:40px; height:40px;"> 
						  			<label for="gk1"></label>
						  			<label class="position_df_txt">골키퍼</label>
					  			</div>
						  	</div>     
						</div>
						</div>
				
		 </div>
		 <div align="center">
		 <div class="panel panel-success" style="width: 691px"> 
		      <div class="panel-heading">
		        <h3 class="panel-title" id="panel-title">팀 소개<a class="anchorjs-link" href="#panel-title"><span class="anchorjs-icon"></span></a></h3>
		      </div>
		      <div class="panel-body">
		        생략
		      </div>
	     </div>
	     </div>     
		 <br>  
		 <div align="center"> 
		 	<button class="btn btn-success btn-lg" style="width: 300px; height:70px">신청 하기</button>
		 </div>
	
	</div>
		</form>
</section>
<%@include file="../include/footer.jsp" %>
