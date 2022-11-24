<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    
    
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">
	<title>Login Admin ThaiRice </title>
</head>
<body>
	<%
	if(request.getParameter("Action") != null)	
	{

		Connection connect = null;
		Statement s = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
                        connect =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//			connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
			
			String adm_login_name = request.getParameter("adm_login_name");
			String adm_passwd = request.getParameter("adm_passwd");
			
			s = connect.createStatement();
			
			String sql = "SELECT * FROM  admin WHERE " +
			" adm_login_name = '" + adm_login_name + "' AND " + 
			" adm_passwd = '" + adm_passwd + "' ";
                        
                        //out.print(sql);
			
			ResultSet rec = s.executeQuery(sql);
			
			if(!rec.next())
			{
                            
                            
                            
				out.print("<font color=red>Username and Password Incorrect!</font>");
			} else {
				rec.first();
				session.setAttribute("sUserID",rec.getString("adm_login_name"));	
                                session.setAttribute("admin_pass_login","PASS");
                                response.sendRedirect("http://chiab5.ddns.net/admin/manage_user.jsp");
				//response.sendRedirect("http://localhost:8084/project/admin/manage_user.jsp");
			}
			
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
		
	}
		
	%>
	
<form name="frmLogin" method="post" action="login_admin.jsp?Action=Login">
  Login<br>
  	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Admin Thai Rice</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Sign In</h3>
						<form action="#" class="login-form">
		      		<div class="form-group">
		      			<input type="text" name="adm_login_name" id="adm_login_name" class="form-control rounded-left" placeholder="Username" required>
		      		</div>
	            <div class="form-group d-flex">
	              <input type="password" name="adm_passwd" id="adm_passwd" class="form-control rounded-left" placeholder="Password" required>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary rounded submit px-3">Login</button>
                        
                       
	            </div>
<!--	            <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#">Forgot Password</a>
								</div>
	            </div>-->
	          </form>
	        </div>
				</div>
			</div>
		</div>
	</section>
</form>
		<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</body>
</html>