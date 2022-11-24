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
	String id = request.getParameter("rice_fields_id");
	
	Connection connect = null;
	Statement s = null;
        
	String plant_field_regis_date = request.getParameter("plant_field_regis_date");
                
        String rice_varieties_id = request.getParameter("rice_varieties_id");
        
        String rice_fields_id = request.getParameter("rice_fields_id");
        
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		
	
		//String sql = "INSERT INTO rice_fieldss(plant_field_regis_date) VALUES "
                 //       + "('" + plant_field_regis_date + "') ";
                
	
		//String insert = "INSERT INTO rice_varieties(rice_varieties_name) VALUES "
                //        + "('" + rice_varieties_name + "') ";
                
 
                
         s.execute("update rice_fieldss set plant_field_regis_date='"+plant_field_regis_date+"', rice_varieties_id = '"+rice_varieties_id+"' where rice_fields_id="+rice_fields_id);
        // s.execute(insert);
         
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