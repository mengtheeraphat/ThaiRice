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
    

//String id = request.getParameter("q");
String id = request.getParameter("rice_fields_id");
String fertilizer2_status = request.getParameter("fertilizer2_status");
String fertilizer2_date_real = request.getParameter("fertilizer2_date_real");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update rice_fieldss set fertilizer2_status=?,fertilizer2_date_real=?  where rice_fields_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, fertilizer2_status);
ps.setString(2, fertilizer2_date_real);
int i = ps.executeUpdate();
if(i > 0)
{
 response.sendRedirect( "check01.jsp" ); 

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