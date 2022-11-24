<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  session.invalidate();
  response.sendRedirect( "http://localhost:8084/project/login_user.jsp" ); 
%>
