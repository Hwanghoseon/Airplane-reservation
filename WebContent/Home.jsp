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
						<h2>항공권 예약하기</h2>
						<p class="subtitle"></p>
						<ul class="style1">
						<br/>
							고객은 <br/><br/> 항공권을 예약할 수 있다.
							<br/><br/><br/>
						</ul>
						<p><a href="http://localhost:8080/Hoteltest/AddReAirplane.jsp" class="button"><span>Read More</span></a></p>
					</section>
				</div>
				<div class="3u">
					<section class="box">
						<h2>항공권 예약 취소</h2>
						<p class="subtitle"></p>
						<ul class="style1">
							<br/>
							고객은 <br/><br/> 예약된 항공권을<br/><br/>   취소할 수 있다.
						</ul>
						</ul>
						<p><a href="http://localhost:8080/Hoteltest/DelReAirplane.jsp" class="button"><span>Read More</span></a></p>
					</section>
				</div>
				<div class="3u">
					<section class="box">
						<h2>항공권 예약 수정</h2>
						<p class="subtitle"></p>
						<ul class="style1">
							<br/>
							고객은 <br/><br/> 예약된 항공권을<br/><br/>   수정할 수 있다.
						</ul>
						</ul>
						<p><a href="http://localhost:8080/Hoteltest/ModReAirplane.jsp" class="button"><span>Read More</span></a></p>
					</section>
				</div>
				<div class="3u">
					<section class="box">
						<h2>항공권 예약 조회</h2>
						<p class="subtitle"></p>
						<ul class="style1">
							<br/>
							고객은 <br/><br/> 예약한 항공권을<br/><br/>  조회할 수 있다.
						</ul>
						</ul>
						<p><a href="http://localhost:8080/Hoteltest/PrintReAirplane.jsp" class="button"><span>Read More</span></a></p>
					</section>
				</div>
			
			</div>

		<!-- Wrapper Ends Here -->
		
		<div id="marketing" class="row">
				
				<!-- Content Area -->
				<div id="content" class="12u skel-cell-important">
					
					<!-- Main Content Area -->
					<section>
						<p><a href="#"><img src="re/images/pics02.jpg" alt=""></a></p>
						
					</section>
					
					</div>
					<!-- Two Column Area -->
						<div class="4u">
					<section class="box">
						<h2>항공권 조회</h2>
						<p class="subtitle"></p>
						<ul class="style1">
							<br/>
							관리자는 <br/><br/> 등록된 항공권을 조회할 수 있다.
							<br/><br/><br/>
						</ul>
						</ul>
						<p><a href="http://localhost:8080/Hoteltest/PrintAirplane.jsp" class="button"><span>Read More</span></a></p>
					</section>
				</div>

				</div>
			</div>
		</div>
		
		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>
		
	</body>
</html>