<%@page import="com.soccerkick.vo.MemberSelectVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberSelectVO mvo = (MemberSelectVO)request.getAttribute("mvo");
	out.println("1111:"+mvo.getApply_id());
	out.println("2222:"+mvo.getA_apy_position());
%>
<input type="hidden" name="position" value="<%=mvo.getA_apy_position() %>"/>
<input type="hidden" name="id" value="<%=mvo.getApply_id()%>"/>
<div align="center">
	<h1>4-3-3</h1>
	<div class="formation">
		<div class="checks">
			<div class="positon_fw">
				<div class="position_wrap">
					<input type="radio" id="fw1" class="fw" name="a_apy_position"
						value="LWF" style="width: 40px; height: 40px;"> <label
						for="fw1"></label> <label class="position_fw_txt">공격수</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="fw2" name="a_apy_position" value="ST"
						style="width: 40px; height: 40px;"> <label for="fw2"></label>
					<label class="position_fw_txt">공격수</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="fw3" name="a_apy_position" value="RWF"
						style="width: 40px; height: 40px;"> <label for="fw3"></label>
					<label class="position_fw_txt">공격수</label>
				</div>
			</div>

			<div class="position_mid">
				<div class="position_wrap">
					<input type="radio" id="mid1" class="mid" name="a_apy_position"
						value="LM" style="width: 40px; height: 40px;"> <label
						for="mid1"></label> <label class="position_mid_txt">미드필더</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="mid2" class="mid" name="a_apy_position"
						value="CM" style="width: 40px; height: 40px;"> <label
						for="mid2"></label> <label class="position_mid_txt">미드필더</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="mid3" class="mid" name="a_apy_position"
						value="RM" style="width: 40px; height: 40px;"> <label
						for="mid3"></label> <label class="position_mid_txt">미드필더</label>
				</div>
			</div>

			<div class="position_df">
				<div class="position_wrap">
					<input type="radio" id="df1" class="mid" name="a_apy_position"
						value="LB" style="width: 40px; height: 40px;"> <label
						for="df1"></label> <label class="position_df_txt">수비수</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="df2" class="mid" name="a_apy_position"
						value="LCB" style="width: 40px; height: 40px;"> <label
						for="df2"></label> <label class="position_df_txt">수비수</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="df3" class="mid" name="a_apy_position"
						value="RCB" style="width: 40px; height: 40px;"> <label
						for="df3"></label> <label class="position_df_txt">수비수</label>
				</div>
				<div class="position_wrap">
					<input type="radio" id="df4" class="mid" name="a_apy_position"
						value="RB" style="width: 40px; height: 40px;"> <label
						for="df4"></label> <label class="position_df_txt">수비수</label>
				</div>
			</div>

			<div class="position_gk">
				<div class="position_wrap">
					<input type="radio" id="gk1" class="mid" name="a_apy_position"
						value="GK" style="width: 40px; height: 40px;"> <label
						for="gk1"></label> <label class="position_df_txt">골키퍼</label>
				</div>
			</div>
		</div>
	</div>
</div>