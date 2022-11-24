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
//      connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        
        s = connect.createStatement();
        
              String news_topic = request.getParameter("news_topic");
        String news_source = request.getParameter("news_source");
        String news_url = request.getParameter("news_url");
        String news_date = request.getParameter("news_date");


        
        String sql = "INSERT INTO news(news_topic,news_source,news_url,news_date) VALUES "
                        + "('" + news_topic + "','" + news_source + "','" + news_url + "','" + news_date + "') ";
         s.execute(sql);
         
         response.sendRedirect( "manage_file.jsp" ); 
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