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
		
		String rice_fields_name = request.getParameter("rice_fields_name");
		String rice_field_size = request.getParameter("rice_field_size");
		String rice_field_soil_type = request.getParameter("rice_field_soil_type");
                String fertilizer1_status = request.getParameter("fertilizer1_status");
		String fertilizer2_status = request.getParameter("fertilizer2_status");
		String harvest_status = request.getParameter("harvest_status");
                
//                String rice_varieties_id = request.getParameter("rice_varieties_id");
	
		String sql = "INSERT INTO rice_fieldss (rice_fields_name,rice_field_size,rice_field_soil_type,fertilizer1_status,fertilizer2_status,harvest_status,mem_id) VALUES "
                        + "('" + rice_fields_name + "','" + rice_field_size + "','" + rice_field_soil_type + "','" + fertilizer1_status + "','" + fertilizer2_status + "','" + harvest_status + "',"+session.getAttribute("mem_id")+") ";
                s.execute(sql);
                

                int num = 0;
		Connection c1 =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		Statement s1 = c1.createStatement();
                ResultSet rs = s1.executeQuery("SELECT * FROM rice_fieldss order by rice_fields_id DESC");          
                if( rs.next() )
                {
                   num = rs.getInt("rice_fields_id");
                }     
                c1.close();
                
                
                
                
                
                
                String sq = "INSERT INTO planting_times (rice_fields_id) VALUES " + "('" + num + "') ";
                s.execute(sq);
         
         
         
         
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