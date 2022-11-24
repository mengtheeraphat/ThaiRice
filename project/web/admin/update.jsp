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
String id = request.getParameter("adm_id");
String name=request.getParameter("adm_name");
String pass=request.getParameter("adm_passwd");
String phone=request.getParameter("adm_phone");
String login=request.getParameter("adm_login_name");
String start=request.getParameter("adm_use_start");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update admin set adm_name=?,adm_passwd=?,adm_phone=?,adm_login_name=?,adm_use_start=? where adm_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, pass);
ps.setString(3, phone);
ps.setString(4, login);
ps.setString(5, start);
int i = ps.executeUpdate();
if(i > 0)
{
 response.sendRedirect( "manage_user.jsp" ); 

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