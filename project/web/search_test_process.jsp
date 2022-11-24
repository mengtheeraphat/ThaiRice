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
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>

	<form name="frmSearch" method="get" action="search_test_process.jsp">
	  <table width="599" border="1">
	    <tr>
	      <th>Keyword
	      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>">
	      <input type="submit" value="Search"></th>
	    </tr>
	  </table>
	</form>

	<%
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connect =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		String sql = "SELECT * FROM admin WHERE adm_name like '%" +  keyword + "%'  ORDER BY adm_id";
		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
		<table width="600" border="1">
		  <tr>
		   <th width="91"><div align="center"> adm_id</th>    
                    <th width="91"><div align="center"> adm_name</th>
                    <th width="91"><div align="center"> adm_passwd</th>
                    <th width="91"><div align="center"> adm_phone</th>
                    <th width="91"><div align="center"> adm_login_name</th>
                    <th width="91"><div align="center"> adm_use_start</th>    
		  </tr>	
			<% while( rec.next() ) { %>
				  <tr>
				    <td><div align="center"><%=rec.getString("adm_id")%></div></td>
				    <td><%=rec.getString("adm_name")%></td>
				    <td><%=rec.getString("adm_passwd")%></td>
                                    <td><%=rec.getString("adm_phone")%></td>
				    <td align="right"><%=rec.getString("adm_login_name")%></td>
				    <td align="right"><%=rec.getString("adm_use_start")%></td>
				  </tr>
	       	<%}%>
	  	</table>      
	    <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
	connect.close();

	%>
</body>
</html>