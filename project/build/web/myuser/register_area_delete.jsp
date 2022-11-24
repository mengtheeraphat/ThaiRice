<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
        Class.forName("com.mysql.jdbc.Driver");        
    
        
        try
        {
        Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");

        //Statement stmt = con.createStatement();
        //ResultSet rs = stmt.executeQuery("SELECT * FROM admin");          
        //while( rs.next() )
       // {
       //    out.print( rs.getString("adm_name") +".................................................<br>" );
        //}  
        
      

        PreparedStatement psmt = con.prepareStatement("DELETE FROM rice_fieldss WHERE  rice_fields_id=?");
        psmt.setString(1,request.getParameter("q"));
        psmt.executeUpdate();
        
        con.close();
        
        response.sendRedirect( "register_area01.jsp" ); 
        }
        catch(Exception ex){ out.print(ex); }

%>   