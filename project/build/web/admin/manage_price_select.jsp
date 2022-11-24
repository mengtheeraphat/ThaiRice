<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    
    
//    try
//{
//    
//    System.out.println(request.getParameter("rice_varieties_id"));
//    //out.print("SELECT * FROM rice_varieties where rice_varieties_id = '"+request.getParameter("rice_varieties_id") +"'");
//    System.out.println("SELECT * FROM rice_varieties where rice_varieties_id = '"+request.getParameter("rice_varieties_id") +"'");
//    //System.out.println(rs.getString("registered_seed") );
//    
//    Class.forName("com.mysql.jdbc.Driver");        
//    Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
//    Statement stmt = con.createStatement();
//    ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties where rice_varieties_id = '"+request.getParameter("rice_varieties_id") +"'");          
//    if( rs.next() )
//    {
//      
//        
//      
//        String registered_seed = request.getParameter("registered_seed");
//            System.out.println(request.getParameter("registered_seed") );
//        String certified_seed = request.getParameter("certified_seed");
//        String lowerbound_price = request.getParameter("lowerbound_price");
//        String upperbound_price = request.getParameter("upperbound_price");
//      
//
//        
//    
//        
//    }     
//    con.close();
//}
//catch(Exception ex){}

  
 
    
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
        
        String registered_seed = rs.getString("registered_seed");
        String certified_seed = rs.getString("certified_seed");
        String lowerbound_price = rs.getString("lowerbound_price");
        String upperbound_price = rs.getString("upperbound_price");
        String rice_varieties_name = rs.getString("rice_varieties_name");
//        System.out.println(registered_seed);
//        System.out.println(certified_seed);
//        System.out.println(lowerbound_price);
//        System.out.println(upperbound_price);
        
        
        
        
        
       out.print(registered_seed+","+certified_seed+","+lowerbound_price+","+upperbound_price+","+rice_varieties_name);
       
        System.out.println(registered_seed);
        System.out.println(certified_seed);
        System.out.println(lowerbound_price);
        System.out.println(upperbound_price);
        System.out.println(rice_varieties_name);
    }     
    con.close();
}
catch(Exception ex){}

%>
