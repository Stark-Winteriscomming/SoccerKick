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
	
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/agency.css" rel="stylesheet">
    <link rel="stylesheet" href="css/joinform.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title">
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" >
</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#"><b>중고 장터</b></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#"><b>마이페이지</b></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#"><b>팀 생성</b></a>
                    </li>
                    <li>  
                        <button type="button" class="btn btn-success navbar-btn btn-sm">Login</button>  
                    </li>
                </ul>
            </div>
        </div>
    </nav>
 
    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text" align="center">
            	<input type="text" class="form-control" placeholder="Search..." style="width: 400px; margin-top: -130px">
            </div>
        </div>
    </header>

         

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray" style="height:100%;">
    	<div class="content">
	      <div class="pageTitle">
			   <h1>회원가입</h1>
		  </div>
	      <article class="container">
	        <div class="col-md-6 col-md-offset-3">
	          <form role="form">
	            <div class="form-group">
	              <label for="InputEmail">아이디</label>
	              <input type="text" class="form-control" id="InputEmail" placeholder="아이디를 입력해 주세요">
	            </div>
	            <div class="form-group">
	              <label for="InputEmail">닉네임</label>
	              <input type="text" class="nickname" id="usernickname" placeholder="닉네임을 입력해 주세요">
	            </div>
	            <div class="form-group">
	              <label for="InputPassword1">비밀번호</label>
	              <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호를 입력해 주세요">
	            </div>
	            <div class="form-group">
	              <label for="InputPassword2">비밀번호 확인</label>
	              <input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인을 입력해 주세요">
	              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
	            </div>
	            <div class="form-group">
	              <label for="username">이름</label>
	              <input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요">
	            </div>
	             <div class="form-group">
	              <label for="username">생년월일</label>
	              <div class="input-group">
	                <input type="tel" class="birth" id="userbirth" placeholder="- 없이 입력해 주세요">
	               
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">휴대폰</label>
	              <div class="input-group">
	                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
	                <span class="input-group-btn">
	                  <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
	                </span>
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">지역</label>
	              <div class="input-group">
	              	<input type="text" class="region" id="username" placeholder="지역을 입력해 주세요">
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">포지션</label>
	              <div class="input-group">
	              	<input type="text" class="position" id="username" placeholder="선호 포지션을 입력해주세요">
	              </div>
	            </div>
	            <div class="form-group">
	              <label for="username">소개</label>
	              <div class="input-group">
	              	<textarea rows="" cols="" class="history" placeholder="소개를 입력해 주세요"></textarea>
	              </div>
	            </div>
	            <div class="form-group">
	                <label>약관 동의</label>
	              <div data-toggle="buttons">
	              <label class="btn btn-primary active">
	                  <span class="fa fa-check"></span>
	                  <input id="agree" type="checkbox" autocomplete="off" checked>
	              </label>
	              <a href="#">이용약관</a>에 동의합니다.
	              </div>
	            </div>
	            <div class="form-group text-center">
	              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
	              <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
	            </div>
	          </form>
	        </div>
	      </article>
        </div>
    </section>


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright"  style="color: white">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks" style="color: white"> 
                        <li><a href="#"  style="color: white">Privacy Policy</a>
                        </li>
                        <li><a href="#"  style="color: white">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jQuery-2.1.4.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/agency.min.js"></script>
	 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
