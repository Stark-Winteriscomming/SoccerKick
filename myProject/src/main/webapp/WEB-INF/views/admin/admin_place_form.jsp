<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<style>
		li { margin:20px; 
			 width:400px;
			 list-style-type:none;}
		label {
			display:block;
			width:120px;
			float:left;		
		}
		li.button { text-align:center;}
		input {
			width:250px;
			padding:5px;
		}
	</style>
	<script src="../../resources/js/jquery-3.1.1.min.js" ></script>
	<%--<script src="http://code.jquery.com/jquery-min.js" ></script> --%>
	<script>
		$(document).ready(function(){
			$("#btnSave").click(function(){
				if($("#title").val() == ""){
					alert("������ �Է��ϼ���");
					$("#title").focus();
					return false;
				}
				
				noticeForm.submit();				
			});				
		});	
	</script>
</head>
<body>
	<h3>������ ������ > ��� �Է� ��</h3>
	<hr>
	<form name="noticeForm" action="admin_place_save.do" method="post" enctype="multipart/form-data">
		<ul>
			<li>
				<label>����</label>
				<input type="text" name="title" id="title">
			</li>
			<li>
				<label>����� �Ұ���</label>
				<textarea rows=2 cols=50 name="intro" id="intro"></textarea>
			</li>
			<li>
				<label>����� ��ȭ��ȣ</label>
				<textarea rows=1 cols=50 name="phone" id="phone"></textarea>
			</li>
			
			<li>
				<label>����� ����</label>
				<textarea rows=10 cols=50 name="content" id="content"></textarea>
			</li>
			<li>
				<label>����� ����</label>
				<input type="file" name="file" id="file" >
			</li>
			<li class="button">
				<button type="button" id="btnSave">����</button>
				<button type="reset">���</button>
			</li>
		</ul>
		
	</form>
</body>
</html>















