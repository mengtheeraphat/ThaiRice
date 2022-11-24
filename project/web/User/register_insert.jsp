<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
	<title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>
	
	<%
	
	
	Connection connect = null;
	Statement s = null;
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		String mem_name = request.getParameter("mem_name");
		String mem_address = request.getParameter("mem_address");
		String mem_phone = request.getParameter("mem_phone");
                String mem_birthday = request.getParameter("mem_birthday");
		String region = request.getParameter("region");
                String mem_login_name = request.getParameter("mem_login_name");
		String mem_password = request.getParameter("mem_password");
		
		String sql = "INSERT INTO member(mem_name,mem_address,mem_phone,mem_birthday,region,mem_login_name,mem_password) VALUES "
                        + "('" + mem_name + "','" + mem_address + "','" + mem_phone + "','" + mem_birthday + "'"
                        + ",'" + region + "','" + mem_login_name + "','" + mem_password + "') ";
         s.execute(sql);
         
         response.sendRedirect( "register01.jsp" ); 
         out.println("Record Inserted Successfully");
        
	  		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
</body>
</html>