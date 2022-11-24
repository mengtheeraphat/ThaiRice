<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
<head>
	<title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>
	
	<%
	String strUserID = session.getAttribute("ssUserID").toString();
        
        
        out.print( strUserID );
        
        
	if(strUserID == null) // Check Login
	{
		response.sendRedirect("register_area01.jsp");
	}
	
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		
		String sql = "SELECT * FROM  member WHERE mem_login_name = '" + strUserID + "' ";
		
		ResultSet rec = s.executeQuery(sql);
		if(rec.next())
		{
                    


                    


		%>
		
			 Profile<br>
			  <table border="1" style="width: 300px">
			    <tbody>
			      <tr>
			        <td> &nbsp;UserID</td>
			        <td>
			          <%=rec.getString("mem_id") %>
			        </td>
			      </tr>
			      <tr>
			        <td> &nbsp;Username</td>
			        <td>
			          <%=rec.getString("mem_login_name") %>
			        </td>
			      </tr>
			      <tr>
			        <td> &nbsp;Password</td>
			        <td>
			          <%=rec.getString("mem_password") %>
			        </td>
			      </tr>
			      <tr>
			        <td> &nbsp;Email</td>
			        <td>
			          <%=rec.getString("mem_phone") %>
			        </td>
			      </tr>		
			      <tr>
			        <td> &nbsp;Name</td>
			        <td>
			          <%=rec.getString("mem_name") %>
			        </td>
			      </tr>	   
			    </tbody>
			  </table>
			  <br>	
	     <%} %>
	    <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
</body>
</html>