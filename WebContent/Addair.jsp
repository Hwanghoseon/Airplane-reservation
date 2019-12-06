<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.InputMismatchException" %>
<%@ page import ="java.util.Scanner" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
		<%
			request.setCharacterEncoding("UTF-8");
			
			int Custid = Integer.parseInt(request.getParameter("Custid"));
			String Airid = request.getParameter("Airid");
			String departuredate = request.getParameter("departuredate");
		
			String query = "insert into airplanereservation(Custid, Airid, departuredate) values(?, ?, ?);";
			PreparedStatement pstmt = null;
			Connection con = null;
		
			try{
				String dbURL="jdbc:mysql://127.0.0.1:3306/air?serverTimezone=UTC";                             
	            String dbID="root";
	            String dbPassword="a123456";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection(dbURL,dbID,dbPassword);
				
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, Custid);
				pstmt.setString(2, Airid);
				pstmt.setString(3, departuredate);
				
				int r = pstmt.executeUpdate();
				
				if(r > 0)
					System.out.println("항공권 예약 완료!");
				else
					System.out.println("항공권 예약 실패!");
				
				con.close();
				
				response.sendRedirect(request.getContextPath()+"/Home.jsp");
			}catch(Exception e){ System.out.println(e);}
		%>
		
	</body>
</html>