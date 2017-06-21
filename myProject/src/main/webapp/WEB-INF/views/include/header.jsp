<%@page import="com.soccerkick.vo.TeamVO"%>
<%@page import="com.soccerkick.vo.userVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="utf-8">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SoccerKick</title>

<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="/resources/vendor/font-awesome/css/font-a	wesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link href="/resources/css/agency.css" rel="stylesheet">
<link href="/resources/css/sweetalert.css" rel="stylesheet">  

</head>

<style>
.badge-notify {
	background: red;
	position: relative;
	top: -20px;
	left: -35px;
}
</style>

<body id="page-top" class="index">
	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">

		<!-- mail count -->
		<c:choose>
			<c:when test="${not empty sessionScope.login }">
				<div class="container">
					<div class="mail">
						<button class="btn btn-default btn-lg btn-link" id="except"
							style="font-size: 36px;" onclick="location.href='/myPage/mails'";>
							<span class="glyphicon glyphicon-comment except"></span>
						</button>
						<span class="badge badge-notify" id="mailCount"></span>
					</div>
				</div>
			</c:when>
		</c:choose>
		<div class="container">
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="/">SoccerKick</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<div class="nav navbar-nav navbar-right">
					<div class="btn-group" style="margin-top: 2px">
						<div class="btn-group">
							<button type="button" class="btn btn-default btn-lg"
								data-toggle="dropdown">
								마이페이지<span class="caret"></span>
							</button>

							<ul class="dropdown-menu" role="menu">
								<li><a href="/myPage/chatRoomList">실시간 채팅</a></li>
								<li><a href="/myPage/mails">메일함</a></li>
							</ul>

						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default btn-lg"
								data-toggle="dropdown">
								감독 페이지<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/team/teamCreateForm">팀 생성</a></li>
								<li><a href="/myPage/memberSelectForm">선수 셀렉트</a></li>
								<li><a href="/myPage/gameMatch">게임 매칭 내역</a></li>
								<li><a href="/myPage/schedule">경기 일정</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<a href="/enter"><button type="button"
									class="btn btn-default btn-g  btn-lg" data-toggle="tooltip" data-placement="bottom" title="팀에 입단 신청을 할 수 있습니다.">입단하기</button></a>
						</div>
						<div class="btn-group">
							<a href="/gBoard/selectPlace"><button type="button"
									class="btn btn-default btn-g  btn-lg" data-toggle="tooltip" data-placement="bottom" title="경기 장소를 확인할 수 있습니다.">장소정보</button></a>
						</div>
						<div class="btn-group">
							<a href="/team/teamViewList"><button type="button"
									class="btn btn-default btn-g  btn-lg" data-toggle="tooltip" data-placement="bottom" title="팀 정보를 볼 수 있습니다.">팀 정보</button></a>
						</div>
						<div class="btn-group">
							<a href="/gBoard/gameList"><button type="button"
									class="btn btn-default btn-g  btn-lg" data-toggle="tooltip" data-placement="bottom" title="경기를 주최하고 대결 신청을 할 수 있습니다.">경기 매칭</button></a>
						</div>
					</div>

					<c:choose>
						<c:when test="${empty sessionScope.login }">
							<a href="/user/login"><button type="button"
									class="btn btn-default btn-md">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
									로그인
								</button></a>
						</c:when>

						<c:when test="${not empty sessionScope.login }">
							<c:if test="${sessionScope.login.client_id eq 'admin'}">
								<a href="/admin/admin_index"><button type="button"
										class="btn btn-default btn-md">관리자페이지</button></a>
								<a href="/user/logout"><button type="button"
										class="btn btn-default btn-md">로그아웃</button></a>
							</c:if>
							<c:if test="${sessionScope.login.client_id ne 'admin'}">
								<a href="/user/logout"><button type="button"
										class="btn btn-default btn-md">로그아웃</button></a>
							</c:if>
						</c:when>
					</c:choose>

				</div>
			</div>
		</div>
	</nav>

	<header>
		<div class="container">
			<div class="intro-text" style="padding-top: 100px">
				<div class="intro-lead-in">It's time to run.</div>
				<div class="intro-heading">Soccer Kick !</div>
			</div>
		</div>
	</header>