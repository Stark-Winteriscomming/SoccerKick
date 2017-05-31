<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 선수는 모두 차 있다고 가정  -->
<!-- 433 -->
<div class="formation">
	<div class="checks">
		<div class="positon_fw">
			<div class="position_wrap"">
				 <img
					src="/resources/img/POSITION/LWF.png" style="width:100%;"/>
				<label class="name" style="width:100%;"> ${fvo.lwf} </label>
			</div>
			<div class="position_wrap" ">
				 <img
					src="/resources/img/POSITION/LWF.png" style="width:100%;"/>
				<label class="name"> ${fvo.st} </label>
			</div>
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/RWF.png" style="width:100%;" />
				<label class="name"> ${fvo.rwf} </label>
			</div>
		</div>

		<div class="position_mid">
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/LM.png" style="width:100%;" />
				<label class="name"> ${fvo.lm} </label>
			</div>
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/CM.png" style="width:100%;" />
				<label class="name"> ${fvo.cm} </label>
			</div>
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/RM.png" style="width:100%;" />
				<label class="name"> ${fvo.rm} </label>
			</div>
		</div>

		<div class="position_df">
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/LB.png" style="width:100%;" />
				<label class="name"> ${fvo.lb} </label>
			</div>
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/CB.png" style="width:100%;" />
				<label class="name"> ${fvo.rcb} </label>
			</div>
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/CB.png" style="width:100%;" />
				<label class="name"> ${fvo.lcb} </label>
			</div>
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/RB.png" style="width:100%;" />
				<label class="name"> ${fvo.rb} </label>
			</div>
		</div>

		<div class="position_gk">
			<div class="position_wrap">
				 <img
					src="/resources/img/POSITION/GK.png" style="width:100%;" />
				<label class="name"> ${fvo.gk} </label>
			</div>
		</div>
	</div>
</div>