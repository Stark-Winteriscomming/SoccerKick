<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<%@ page import = "com.soccerkick.vo.PlaceVO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script src="../../resources/js/jquery-3.1.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#btnDelete").click(function(){
				deleteForm.submit();
			});
		});
		
	</script>

</head>
<body>
	<h1>������ ���� �Ͻðڽ��ϱ�?</h1>
	
	<button type="button" id="btnDelete">
	<a href="admin_place_delete_complete?no=${no}">����</a></button>
	<button type="reset">���</button>
</body>
</html>








