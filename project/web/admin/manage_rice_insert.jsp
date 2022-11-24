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
                connect =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		String rice_varieties_name = request.getParameter("rice_varieties_name");
		String rice_type = request.getParameter("rice_type");
		String rice_varieties_properties = request.getParameter("rice_varieties_properties");
        String rice_varieties_quantity = request.getParameter("rice_varieties_quantity");
		String rice_varieties_soil_type = request.getParameter("rice_varieties_soil_type");
		String rice_fertilizer1 = request.getParameter("rice_fertilizer1");
		String rice_fertilizer2 = request.getParameter("rice_fertilizer2");
		String rice_havest = request.getParameter("rice_havest");
		String warning = request.getParameter("warning");


		
		String sql = "INSERT INTO rice_varieties(rice_varieties_name,rice_type,rice_varieties_properties,rice_varieties_quantity,rice_varieties_soil_type,rice_fertilizer1,rice_fertilizer2,rice_havest,warning) VALUES "
                        + "('" + rice_varieties_name + "','" + rice_type + "','" + rice_varieties_properties + "','" + rice_varieties_quantity + "','" + rice_varieties_soil_type + "','" + rice_fertilizer1 + "','" + rice_fertilizer2 + "'  ,'" + rice_havest + "','"+ warning +"'    ) ";
         s.execute(sql);
         
         response.sendRedirect( "manage_rice01.jsp" ); 
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