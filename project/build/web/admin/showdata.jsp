<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
        Class.forName("com.mysql.jdbc.Driver");        
    
        
        try
        {
             Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        
       // Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");

        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM admin");          
        while( rs.next() )
        {
            out.print ( rs.getString("adm_id") );
             out.print ( rs.getString("adm_name") );
              out.print ( rs.getString("adm_passwd") );
               out.print ( rs.getString("adm_phone") );
                out.print ( rs.getString("adm_login_name") );
                 out.print ( rs.getString("adm_use_start") );
              
        }     
        stmt.close();
        con.close();

        response.sendRedirect( "manage_user.jsp" ); 
        }
        catch(Exception ex){ out.print(ex); }

%>   