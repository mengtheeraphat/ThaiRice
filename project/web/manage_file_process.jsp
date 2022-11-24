<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.*"%>

<%



    Connection connect = null;
    Statement s = null;

    try 



    // PreparedStatement ps = null;
    {



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
         
        Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        Statement stmt = con.createStatement();       
        ResultSet rs = stmt.executeQuery("SELECT news_id,news_pdf  FROM news order by news_id desc ");

        
        if ( rs.next() )
         {
            
            String news_id = rs.getString("news_id");
            String news_pdf = rs.getString("news_pdf");
            // out.print(news_id);

        MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
        Hashtable files = mrequest.getFiles();    
        UploadFile lnk_profile = (UploadFile) files.get("news_id");
        InputStream readImg = lnk_profile.getInpuStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(readImg, "UTF-8"));           
        // File T = new File("D:\\Apache Tomcat 8.0.9\\MyWebSite\\be5\\ROOT\\upload\\news_id1.pdf");
         File T = new File("D:\\Apache Tomcat 8.0.9\\MyWebSite\\be5\\ROOT\\upload\\"+news_id+".pdf");
        FileOutputStream fout = new FileOutputStream(T);
        byte[] buffer = new byte[1024];
        for (int length ; (length = readImg.read(buffer)) > 0 ; )  
        {
            fout.write(buffer, 0, length);
        }
        readImg.close();
        fout.close();       
        br.close();  

        String sql="Update news set news_pdf='http://chiab5.ddns.net/upload/"+news_id+".pdf' where news_id="+news_id;
        stmt.execute(sql);
        


        out.print(news_pdf);

        response.sendRedirect( "manage_news.jsp" );   


        }
         con.close();



    } 
    catch (Exception e) {}
%>

