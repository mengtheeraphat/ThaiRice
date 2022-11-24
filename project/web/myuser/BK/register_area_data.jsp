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
String id = request.getParameter("rice_fields_id");
String name=request.getParameter("rice_fields_name");
String pass=request.getParameter("rice_field_size");
String phone=request.getParameter("rice_field_soil_type");
String rice_varieties_quantity=request.getParameter("rice_varieties_name");
String rice_varieties_soil_type=request.getParameter("plant_field_regis_date");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update rice_fieldss,rice_varieties set rice_fields_id=?,rice_fields_name=?,rice_field_size=?,rice_field_soil_type=?,rice_varieties_name=?,plant_field_regis_date=? where rice_fields_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, pass);
ps.setString(3, phone);
ps.setString(4, rice_varieties_quantity);
ps.setString(5, rice_varieties_soil_type);
int i = ps.executeUpdate();
if(i > 0)
{
 response.sendRedirect( "register_area01.jsp" ); 

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