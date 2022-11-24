<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  try 
  {
    Class.forName("com.mysql.cj.jdbc.Driver");        
     Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//    Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
    
    String temp = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd",request.getParameter("d"),7); //2021-11-20 บวก 7 วัน คือ 27-11-2021, PlusDateBC
    java.util.Date date1 = new SimpleDateFormat("dd-MM-yyyy").parse( temp );
    date1.setYear(date1.getYear()+543);
    java.sql.Date sDate = new java.sql.Date(date1.getTime());
    
    PreparedStatement psmtx = con.prepareStatement("UPDATE rice_fieldss SET plant_field_regis_date=? where num=?");
    psmtx.setDate(1,sDate);
    psmtx.setString(2,request.getParameter("p"));
    psmtx.executeUpdate();
              
    con.close(); 
  } 
  catch (Exception e) {}
%>