
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.InputMismatchException;
import java.util.Scanner;


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="re/js/skel.min.js"></script>
	<script src="re/js/skel-panels.min.js"></script>
	<script src="re/js/init.js"></script>
	
		<link rel="stylesheet" href="re/css/skel-noscript.css" />
		<link rel="stylesheet" href="re/css/style.css" />
		<link rel="stylesheet" href="re/css/style-desktop.css" />
	
	<title>Insert title here</title>
</head>
	<body class="homepage">
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(
				"jdbc:mysql://192.168.56.101:4567/hotel","hhs","a123456789");
	
		<!-- Header -->
		<div id="header-wrapper">
		
			<div class="container">
				<div id="header">
					<div id="logo">
						<h1><a href="http://localhost:8080/Hoteltest/Home.jsp">Airplane Reservation</a></h1>
					</div>
					<nav id="nav">
						<ul>
							<li class="current_page_item"><a href="http://localhost:8080/Hoteltest/Home.jsp">  Home  </a></li>
						</ul>
					</nav>
				</div>
			</div>
			
		</div>
		<!-- Page Wrapper -->
		<div id="wrapper" class="container">

			<!-- Banner Content -->
			<div id="banner" class="row">
				<div class="12u">
					<section><a href="#"><img src="re/images/pics01.jpg" alt=""></a></section>
				</div>
			</div>

			<!-- Marketing Content -->
			<div id="marketing" class="row">

				<div class="3u">
					<section class="box">
						<h2>항공권 등록</h2>
						<p class="subtitle"></p>
						<ul class="style1">
						<br/>
							관리자는 <br/><br/> 고객 명단을 조회할 수 있다.
							<br/><br/><br/>
						</ul>
						
					</section>
				</div>
				
				<div class="4u">
					<section class="box">
						<h2>고객 명단</h2>
						<p class="subtitle"></p>
						<ul class="style1">
						<br/>
							
							
							<a href = "http://localhost:8080/Hoteltest/Home.jsp">페이지 이동하기</a>
						</ul>
						
					</section>
				</div>
			
				
			</div>

		</div>
		<!-- Wrapper Ends Here -->

		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>
		
	</body>
</html>