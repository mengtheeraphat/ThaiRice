<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
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
        
      
                
        String rice_varieties_id = request.getParameter("rice_varieties_id");
        
        String rice_fields_id = request.getParameter("rice_fields_id");
        
        
          String plant_field_regis_date = request.getParameter("plant_field_regis_date");
          
//         String mm = txtFromDate.substring(0,2);
//         String dd = txtFromDate.substring(3,5);
//          String yy = txtFromDate.substring(6,10);
// 
//        String date2 = yy+"-"+mm+"-"+dd;
//        System.out.println("date2 ::"+date2);
//      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//           
          // LocalDate localDate = LocalDate.parse(date2, formatter);
//        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
//        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
//        Date  dateinsert = sdf1.parse(txtFromDate);
//        System.out.println("dd1 ::"+date2);
//        String pdate = sdf1.format(date2);
//        Date outputdate = sdf2.parse(pdate);
//       System.out.println("pdate ::"+pdate);
        // System.out.println("localDate ::"+localDate);
       
        
      
       // System.out.println(sdf.format(dateinsert));
	String fertilizer1_date = request.getParameter("fertilizer1_date");
       String fertilizer2_date = request.getParameter("fertilizer2_date");
       String harvest_date = request.getParameter("harvest_date");
        
        String fertilizer1_status = request.getParameter("fertilizer1_status");
        String fertilizer2_status = request.getParameter("fertilizer2_status");
        String harvest_status = request.getParameter("harvest_status");
//        
//        String txtToDate = request.getParameter("fertilizer1_date");
//        String fertilizer2_date = request.getParameter("txtToDate2");
//        String harvest_date = request.getParameter("txtToDate3");
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
                connect =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		
	
		//String sql = "INSERT INTO rice_fieldss(plant_field_regis_date) VALUES "
                 //       + "('" + plant_field_regis_date + "') ";
                
	
		//String insert = "INSERT INTO rice_varieties(rice_varieties_name) VALUES "
                //        + "('" + rice_varieties_name + "') ";
                
 
                
         s.execute("update rice_fieldss set  rice_varieties_id = '"+rice_varieties_id+"', plant_field_regis_date='"+plant_field_regis_date+"'  ,fertilizer1_date='"+fertilizer1_date+"', fertilizer2_date = '"+fertilizer2_date+"', harvest_date = '"+harvest_date+"', fertilizer1_status = '"+fertilizer1_status+"', fertilizer2_status = '"+fertilizer2_status+"', harvest_status = '"+harvest_status+"'  where rice_fields_id="+rice_fields_id
         
         
         );
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