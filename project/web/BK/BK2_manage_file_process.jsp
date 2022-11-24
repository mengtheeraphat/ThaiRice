<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    try 
    {
        MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
        Hashtable files = mrequest.getFiles();    
        UploadFile lnk_profile = (UploadFile) files.get("lnk_profile");
        InputStream readImg = lnk_profile.getInpuStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(readImg, "UTF-8"));           
        File T = new File("D:\\Apache Tomcat 8.0.9\\MyWebSite\\be5\\ROOT\\upload\\lnk_profile.pdf");
        FileOutputStream fout = new FileOutputStream(T);
        byte[] buffer = new byte[1024];
        for (int length ; (length = readImg.read(buffer)) > 0 ; )  
        {
            fout.write(buffer, 0, length);
        }
        readImg.close();
        fout.close();       
        br.close();  
        
        response.sendRedirect( "manage_file.jsp" );   
    } 
    catch (Exception e) {}
%>

