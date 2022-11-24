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
		
		String rice_fields_name = request.getParameter("rice_fields_name");
		String rice_field_size = request.getParameter("rice_field_size");
		String rice_field_soil_type = request.getParameter("rice_field_soil_type");
	
		String sql = "INSERT INTO rice_fieldss(rice_fields_name,rice_field_size,rice_field_soil_type) VALUES "
                        + "('" + rice_fields_name + "','" + rice_field_size + "','" + rice_field_soil_type + "') ";
         s.execute(sql);
         
        /////////////......................
	//String sql = "INSERT INTO rice_varieties(rice_fields_name,rice_field_size,rice_field_soil_type) VALUES  ('" + rice_fields_name + "','" + rice_field_size + "','" + rice_field_soil_type + "') ";
        // s.execute(sql); 
         //////////////////..............
         
         
         response.sendRedirect( "register_area01.jsp" ); 
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