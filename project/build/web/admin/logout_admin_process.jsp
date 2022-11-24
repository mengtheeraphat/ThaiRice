
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  session.invalidate();
   response.sendRedirect( "http://192.168.4.2:8084/project/login_admin.jsp" ); 
//  response.sendRedirect( "http://localhost:8084/project/login_admin.jsp" ); 
%>
