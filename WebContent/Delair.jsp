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
		<%!public static boolean isNaN(String str) {

		    boolean check = true;
		
		    for (int i = 0; i < str.length(); i++) {
		
		        if (!Character.isDigit(str.charAt(i))) {
		
		            check = false;
		
		            break;
		
		        } // end if
		
		    } //end for
		
		    return check;

} //isNaN%>

		<%
			String idx="";
			idx = request.getParameter("Airplanereservationid");
			
			if(idx == null || idx.equals("") || idx.equals("null") || !isNaN(idx)){
				out.println("<script>alert('예약 취소 실패!'); location.href='http://localhost:8080/Hoteltest/PrintReAirplane.jsp';</script>");
				 
				out.flush();
			}
			
			request.setCharacterEncoding("UTF-8");
			
			int Airplanereservationid = Integer.parseInt(request.getParameter("Airplanereservationid"));
		
			String query = "delete from Airplanereservation where Airplanereservationid = ?";
			PreparedStatement pstmt = null;
			Connection con = null;
			try{
				String dbURL="jdbc:mysql://127.0.0.1:3306/air?serverTimezone=UTC";                             
	            String dbID="root";
	            String dbPassword="a123456";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection(dbURL,dbID,dbPassword);
				
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, Airplanereservationid);
				
				int r = pstmt.executeUpdate();
				
				if(r > 0)
					System.out.println("항공권 예약취소 완료!");
				else{
					System.out.println("항공권 예약취소 실패!");
					out.println("<script>alert('예약 취소 실패!'); location.href='http://localhost:8080/Hoteltest/PrintReAirplane.jsp';</script>");
					 
					out.flush();
				}
				
				con.close();
				
				response.sendRedirect(request.getContextPath()+"/Home.jsp");
			}catch(Exception e){
				System.out.println(e);
				}
		%>
		
	</body>
</html>