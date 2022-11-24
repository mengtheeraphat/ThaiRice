<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8";
String database = "thairice";
String userid = "root";
String password = "Meng254398";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<h1>Retrieve data from database in jsp</h1>
<table>
    <tr>
       <th width="91"><div align="center"> adm_id</th>    
       <th width="91"><div align="center"> adm_name</th>
       <th width="91"><div align="center"> adm_passwd</th>
       <th width="91"><div align="center"> adm_phone</th>
       <th width="91"><div align="center"> adm_login_name</th>
       <th width="91"><div align="center"> adm_use_start</th>    
       
    </tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from admin";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("adm_id") %></td>
<td><%=resultSet.getString("adm_name") %></td>
<td><%=resultSet.getString("adm_passwd") %></td>
<td><%=resultSet.getString("adm_phone") %></td>
<td><%=resultSet.getString("adm_login_name") %></td>
<td><%=resultSet.getString("adm_use_start") %></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("adm_id") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>

