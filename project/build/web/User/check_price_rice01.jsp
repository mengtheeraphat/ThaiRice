<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="seo & digital marketing">
    <meta name="keywords" content="marketing,digital marketing,creative, agency, startup,promodise,onepage, clean, modern,seo,business, company">
    <meta name="author" content="Themefisher.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <title> ตรวจสอบราคาข้าว </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
     rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

     <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
      body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
      .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
      .fa-anchor,.fa-coffee {font-size:200px}
      </style>

</head>


<body>

  <nav id="navbar-example2" class="navbar navbar-light" style="background-color: #f7ce1a;">
    <a class="navbar-brand" href="#">Thai Rice</a>
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link" href="register01.jsp">สมัครสมาชิก</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manage_search01.jsp">สืบค้นข้อมูลข้าว</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register_area01.jsp">ลงทะเบียนแปลงเพาะปลูก</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="check01.jsp">ตรวจสอบสถานะการเพาะปลูก</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="check_price_rice01.jsp">ตรวจสอบราคาข้าว</a>
      </li>
    </ul>
  </nav>
  <br>

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">ตรวจสอบราคาข้าว</h2>
  </div>
</div>
</center>
<br>



<%
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>
  <!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->
  <form name="frmSearch" method="get" action="manage_search01.jsp">
      
<div class="container">
    <div class="row" style="margin-left: 25% ;">
        <div class="  ftco-animate">
            <div class="staff">
              <div class="row g-3 align-items-center">
                <div class="col-auto">
                  <label for="inputPassword6" class="col-form-label">ชื่อพันธุ์ข้าว</label>
                </div>
                <div class="col-auto">
                  <input type="text" id="rice_varieties_name" value="<%=keyword%>" name="rice_varieties_name" class="form-control" aria-describedby="passwordHelpInline">
                </div>
              
            
                <div class="col-auto">
                  <label for="inputPassword6" class="col-form-label">ชนิดข้าว</label>
                </div>
                <div class="col-sm-4">
                  <select class="form-select mt-2" id="rice_type" name="rice_type">
                    <option value="ทั้งหมด" selected>ทั้งหมด</option>
                    <option value="ข้าวเหนียว">ข้าวเหนียว</option>
                    <option value="ข้าวจ้าว">ข้าวจ้าว</option>
                  </select>
                </div>
              </div>
        
              </div>
          </div>
      </div>
</div>
  <br>
  <!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

  <center>
<div class="col-auto">
    <button type="submit" class="btn btn-primary">เพิ่ม</button>
    </div>
  </center>
  <br>
</form>
                
                
                
                <%
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		String sql = "SELECT * FROM rice_varieties WHERE rice_varieties_name like '%" +  keyword + "%'  ORDER BY rice_varieties_id";
		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
                
                
                
                
                   
                <div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
		<table class="table table-bordered">
		

                <thead>
                <tr>
                  <th scope="col">รหัสพันธุ์ข้าว</th>    
                  <th scope="col">ชื่อพันธุ์ข้าว</th>  
                  <th scope="col">ราคาข้าวเปลือก(บาท/เกวียน)</th>
                  <th scope="col">ราคาข้าวสาร(บาท/เกวียน)</th>
            
                </tr>
              </thead>
         
         
         
         
         
     
		
			<% while( rec.next() ) { %>
				  <tr>
				    <td><div align="center"><%=rec.getString("rice_varieties_id")%></div></td>
                                    <td><%=rec.getString("rice_varieties_name")%></td>
				    <td align="right"><%=rec.getString("unmilled_rice_price")%></td>
				    <td align="right"><%=rec.getString("milled_rice_price")%></td>
				  </tr>
	       	<%}%>
                
                
                     </tbody>
	  	</table> 
                
                
                 <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
	connect.close();

	%>
  
  
  
  
  

<!-- ---------------------------ตาราง--------------------------------- -->     









<!-- ---------------------------ตาราง--------------------------------- -->   

    <!-- 
    Essential Scripts
    =====================================-->

    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="plugins/bootstrap/js/popper.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- Woow animtaion -->
    <script src="plugins/counterup/wow.min.js"></script>
    <script src="plugins/counterup/jquery.easing.1.3.js"></script>
     <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>

    <!-- Google Map -->
    <script src="plugins/google-map/gmap3.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>   
    <!-- Contact Form -->
    <script src="plugins/jquery/contact.js"></script>
    <script src="js/custom.js"></script>

  </body>
  </html>