<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.InputMismatchException" %>
<%@ page import ="java.util.Scanner" %>
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
						<h2>항공권 예약조회</h2>
						<p class="subtitle"></p>
						<ul class="style1">
							<br/>
							사용자는 <br/><br/> 예약한 항공권을 조회할 수 있다.
							<br/><br/><br/>
						</ul>
						</ul>
					</section>
				</div>
			
				<div class="4u">
					<section class="box">
						<h2>항공권 예약조회</h2>
						<p class="subtitle"></p>
						<ul class="style1">
						<br/>
							<%
								request.setCharacterEncoding("UTF-8");
							
								PreparedStatement pstmt = null;
								Connection con = null;
								
								try{
									String dbURL="jdbc:mysql://127.0.0.1:3306/air?serverTimezone=UTC";                             
						            String dbID="root";
						            String dbPassword="a123456";
						            Class.forName("com.mysql.cj.jdbc.Driver");
						            con=DriverManager.getConnection(dbURL,dbID,dbPassword);
						            
						            Statement stmt=con.createStatement();
									ResultSet rs=stmt.executeQuery("SELECT * FROM airplanereservation");
									
							%>
								<table class="table table-dark">
									<tr>
										<th>항공권 예약 번호</th>
										<th>고객 id</th>
										<th>항공권 id</th>
										<th>출발날짜</th>
									</tr>
									
							<%
								while(rs.next()){
							%><tr>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getInt(2) %></td>
								<td><%=rs.getInt(3) %></td>
								<td><%=rs.getString(4) %></td>
							</tr>
								
							<%
								}
							%></table>
							
							<%
								rs.close();
								stmt.close();
								con.close();
								}
								catch (SQLException e) {
								      out.println("err:"+e.toString());
								}
							%>
							
							</br></br><br/><br/>
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