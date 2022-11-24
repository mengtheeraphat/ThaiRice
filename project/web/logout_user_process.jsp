<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  session.invalidate();
  
  response.sendRedirect( "http://chiab5.ddns.net/index.jsp" ); 
  // response.sendRedirect( "http://localhost:8084/project/login_user.jsp" ); 
%>
