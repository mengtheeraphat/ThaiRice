<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8";%>
<%!String user = "my_meng";%>
<%!String psw = "meng12345678";%>
<%--<%!String url = "jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8";%>
<%!String user = "root";%>
<%!String psw = "Meng254398";%>--%>
<html>
<head>
	<title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>
	
	<%
	
            
  
            
            
            
            
            
            
String id = request.getParameter("rice_varieties_id");
String name = request.getParameter("rice_varieties_name");
String registered_seed = request.getParameter("registered_seed");
String certified_seed = request.getParameter("certified_seed");
String lowerbound_price = request.getParameter("lowerbound_price");
String upperbound_price = request.getParameter("upperbound_price");
String last_update = request.getParameter("last_update");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update rice_varieties set rice_varieties_name=?,registered_seed=?,certified_seed=?,lowerbound_price=?, upperbound_price=?,last_update=? where rice_varieties_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, registered_seed);
ps.setString(3, certified_seed);
ps.setString(4, lowerbound_price);
ps.setString(5, upperbound_price);
ps.setString(6, last_update);

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
            
//String id = request.getParameter("rice_varieties_id");
//String name=request.getParameter("rice_varieties_name");
//String pass=request.getParameter("rice_varieties_price");
//String phone=request.getParameter("unmilled_rice_price");
//String milled_rice_price=request.getParameter("milled_rice_price");
//String milled_rice_price=request.getParameter("milled_rice_price");
//String milled_rice_price=request.getParameter("milled_rice_price");
//
//if(id != null)
//{
//Connection con = null;
//PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
//try
//{
//Class.forName(driverName);
//con = DriverManager.getConnection(url,user,psw);
//String sql="Update rice_varieties set rice_varieties_name=?,rice_varieties_price=?,unmilled_rice_price=?,milled_rice_price=? where rice_varieties_id="+id;
//ps = con.prepareStatement(sql);
//ps.setString(1, name);
//ps.setString(2, pass);
//ps.setString(3, phone);
//ps.setString(4, milled_rice_price);
//
//
//int i = ps.executeUpdate();
//if(i > 0)
//{
// response.sendRedirect( "manage_price01.jsp" ); 
//
//// response.sendRedirect( "http://localhost:8084/project//new_admin/page2.jsp" ); 
//}
//else
//out.print("Record Updated Successfully");
//
//}
//catch(SQLException sql)
//{
//request.setAttribute("error", sql);
//out.println(sql);
//}
//}
      






	
//	Connection connect = null;
//	Statement s = null;
//	
//	try {
//		
//		Class.forName("com.mysql.jdbc.Driver");
//		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
//		
//		s = connect.createStatement();
//		
//		String rice_varieties_name = request.getParameter("rice_varieties_name");
//		String registered_seed = request.getParameter("registered_seed");
//		String certified_seed = request.getParameter("certified_seed");
//                String lowerbound_price = request.getParameter("lowerbound_price");
//                String upperbound_price = request.getParameter("upperbound_price");
//                String last_update = request.getParameter("last_update");
//		
//		String sql = "INSERT INTO rice_varieties(rice_varieties_name,registered_seed,certified_seed,lowerbound_price,upperbound_price,last_update) VALUES ('" + rice_varieties_name + "','" + registered_seed + "','" + certified_seed + "','" + lowerbound_price + "','" + upperbound_price + "','" + last_update + "' ) ";
//         s.execute(sql);
//         
//         response.sendRedirect( "manage_price01.jsp" ); 
//         out.println("Record Inserted Successfully");
//        
//	  		
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			out.println(e.getMessage());
//			e.printStackTrace();
//		}
//	
//		try {
//			if(s!=null){
//				s.close();
//				connect.close();
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			out.println(e.getMessage());
//			e.printStackTrace();
//		}
	%>
</body>
</html>