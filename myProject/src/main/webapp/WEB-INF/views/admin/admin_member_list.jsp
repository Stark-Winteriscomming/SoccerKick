<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.soccerkick.vo.*" %>
<%@ page import = "java.util.*" %>

<%
	
	ArrayList<userVO> list = (ArrayList<userVO>)request.getAttribute("list");
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="../../resources/js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#cdelete").click(function(){
	
			//alert($("input:checkbox[name='scheck']:checked").length);
			//$("input[name='scheck']").prop('checked', false)
			
			if($("input:checkbox[name='scheck']:checked").length == 0 ){
				alert("������ �׸��� üũ�� �ּ���~");
				$("#scheck").focus();
				return false;
			}	

				listForm.submit();						
			
		});
		
		$("#tcheck").click(function(){
			if($("#tcheck").is(":checked")){
				$("input[name='scheck']").prop("checked", true);				
			}else{
				$("input[name='scheck']").prop("checked", false);
			}
		});
		
		
	});

</script>
</head>
<body>
	<h3>������ ������ �Դϴ�.</h3>
	<hr>	
	<h4>ȸ�� ����Ʈ</h4>
	<span id="cdelete">����</span>
	<form name="listForm" action="admin_noticeController.jsp"
	 method="get">
	<table border=1>
		<tr>
			<td><input type="checkbox" name="tcheck" id="tcheck"></td>
			<td>��ȣ</td>
			<td>ȸ�����̵�</td>			
			<td></td>
			<td></td>
		</tr>
		<% for(userVO vo: list){ %>
		<tr>
			<td><input type="checkbox" name="scheck" id="scheck" value=<%=vo.getNo() %>></td>
			<td><%=vo.getRno()%></td>
			<td><a href="admin_notice_content.do?no=<%=vo.getNo()%>"><%=vo.getTitle() %></a></td>
			<td><%=vo.get() %></td>
			<td><%=vo.get() %></td>			
		</tr>
		<% } %>
	</table>
	<input type="hidden" name="nkey" value="cdelete">
	</form>
</body>
</html>









