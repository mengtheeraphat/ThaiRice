<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
        Class.forName("com.mysql.jdbc.Driver");        
    
        
        try
        {
        
        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");

//        Statement stmt = con.createStatement();
//        ResultSet rs = stmt.executeQuery("SELECT * FROM admin");          
//        while( rs.next() )
//        {
//          out.print( rs.getString("adm_name") +".................................................<br>" );
//        }  
        
     PreparedStatement psmtx = con.prepareStatement("insert into admin(adm_name,adm_passwd,adm_phone,adm_login_name,adm_use_start) values(?,?,?,?,?)");
       psmtx.setString(1,request.getParameter("a1"));
       psmtx.setString(2,request.getParameter("a2"));
        psmtx.setString(3,request.getParameter("a3"));
       psmtx.setString(4,request.getParameter("a4"));
        psmtx.setString(5,request.getParameter("a5"));
        psmtx.executeUpdate(); 
        con.close();


//        psmtx.executeUpdate(); 
//        con.close();

//        PreparedStatement psmt = con.prepareStatement("DELETE FROM admin WHERE adm_name=?");
//        psmt.setString(1,request.getParameter("q"));
//        psmt.executeUpdate();
//        
//        con.close();
        
        response.sendRedirect( "manage_user.jsp" ); 
        }
        catch(Exception ex){ out.print(ex); }

%>   