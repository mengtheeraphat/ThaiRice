<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8";%>
<%!String user = "root";%>
<%!String psw = "Meng254398";%>
<%
String id = request.getParameter("rice_varieties_id");
String name=request.getParameter("rice_varieties_name");
String pass=request.getParameter("rice_varieties_price");
String phone=request.getParameter("unmilled_rice_price");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update rice_varieties set rice_varieties_name=?,rice_varieties_price=?,unmilled_rice_price=? where rice_varieties_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, pass);
ps.setString(3, phone);
int i = ps.executeUpdate();
if(i > 0)
{
 response.sendRedirect( "manage_price01.jsp" ); 

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