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
</head>
<body>
	<h3>������ ������ �Դϴ�.</h3>
	<hr>	
	<h4>��� ���� ����</h4>
	<ul>
		<li>���� : ${vo.title}</li>
		<li>�Ұ��� : ${vo.intro }</li>
		<li>���� : ${vo.content }</li>
		<li>��ȭ��ȣ : ${vo.phone}</li>
		<li>����� ����: </li>
		<img src="http://localhost:9090/resources/ground/${vo.pfname}" width="299" height="168" /> 
	</ul>
	<a href="admin_place_update_form?no=${vo.no} ">����</a>&nbsp;&nbsp;&nbsp;
	<a href="admin_place_delete?no=${vo.no}">����</a>&nbsp;&nbsp;&nbsp;	
	<a href="admin_place_list"><span>�����̵�</span></a>
</body>
</html>













