<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    
    

 
    
try
{

    String rice_varieties_id = request.getParameter("rice_varieties_id");
    out.print(rice_varieties_id);
  

   // out.print("wwww,aaa,KAKS");
    
    Class.forName("com.mysql.jdbc.Driver");   
     Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//    Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
    Statement stmt = con.createStatement();
   // ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties where rice_varieties_id =? '"+rice_varieties_id +"'");   
      ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties where rice_varieties_id = '"+request.getParameter("rice_varieties_id") +"'");
    if( rs.next() )
    {
        String rice_varieties_properties = rs.getString("rice_varieties_properties");
        String registered_seed = rs.getString("registered_seed");
        
//        System.out.println(registered_seed);
//        System.out.println(certified_seed);
//        System.out.println(lowerbound_price);
//        System.out.println(upperbound_price);
        
        
        
        
        
       out.print(rice_varieties_properties+","+registered_seed);
       
    }     
    con.close();
}
catch(Exception ex){}

%>
