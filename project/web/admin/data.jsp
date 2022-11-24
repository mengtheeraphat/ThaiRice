<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <body>
<%
    
         int num = 0; 
        Vector adm_name = new Vector();
        Vector adm_passwd = new Vector();
        Vector adm_phone = new Vector();
        Vector adm_login_name = new Vector();
        Vector adm_use_start = new Vector();

        try
        {
            
           Class.forName("com.mysql.jdbc.Driver");        
            Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//            Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
            PreparedStatement psmtx = con.prepareStatement("insert into admin(adm_name,adm_passwd,adm_phone,adm_login_name,adm_use_start) values(?,?,?,?,?)");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM admin");         
        

    while(rs.next())
      {
        num++;
     
        /////////////////////////
        adm_name.add( rs.getString("name") );
        adm_passwd.add( rs.getString("pass") );
        adm_phone.add( rs.getString("phone") );
        adm_login_name.add( rs.getString("login_name") );
        adm_use_start.add( rs.getString("Email") );
        /////////////////////////
%>
                           
     <table width="600" border="1">
    <tr>
       <th width="91"><div align="center"> adm_name</th>
       <th width="91"><div align="center"> adm_passwd</th>
       <th width="91"><div align="center"> adm_phone</th>
       <th width="91"><div align="center"> adm_login_name</th>
       <th width="91"><div align="center"> adm_use_start</th>    
    </tr>
    
  
                            <tr>
                                </td>
                                <td>${num}</td>
                                <td><%= rs.getString("id") %></td>
                                <td><%= rs.getString("name") %> <%= rs.getString("Surname") %></td>
                                <td><%= rs.getString("Organization") %></td>
                                <td><%= rs.getString("Email") %></td>
                                <td><%= rs.getString("Phone") %></td>
                            </tr>

    
</table>                       
               
<%
      }
      con.close();   
  }
  catch(Exception ex){}
%>            

  </body>               
                            
