<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8";%>
<%!String user = "my_meng";%>
<%!String psw = "meng12345678";%>


<%--<%!String url = "jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8";%>
<%!String user = "root";%>
<%!String psw = "Meng254398";%>--%>
<%
String id = request.getParameter("news_id");
String news_topic=request.getParameter("news_topic");
String news_source=request.getParameter("news_source");
String news_date=request.getParameter("news_date");
String news_url=request.getParameter("news_url");




if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update news set news_topic=?,news_source=?,news_date=?,news_url=?  where news_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, news_topic);
ps.setString(2, news_source);
ps.setString(3, news_date);
ps.setString(4, news_url);





int i = ps.executeUpdate();
if(i > 0)
{
 response.sendRedirect( "manage_news.jsp" ); 

// response.sendRedirect( "http://localhost:8084/project//new_admin/page2.jsp" ); 
}
else
out.print("Record Updated Successfully");

}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>