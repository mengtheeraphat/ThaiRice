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

   <title> ตรวจสอบสถานะการเพาะปลูก </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

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
    <h2 id="scrollspyHeading1">ตรวจสอบสถานะการเพาะปลูก</h2>
    <br>
  </div>
</div>
</center>

<!-- ---------------------------ตาราง--------------------------------- -->    


<%
    
        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
        

%>   

<%
        Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM rice_fieldss"); 
 
        while( rs.next() )
        {  
%>  









<div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th scope="col">รหัสแปลงเพาะปลูก</th>
                  <th scope="col">ชื่อแปลงเพาะปลูก</th>
                  <th scope="col">ชื่อพันธุ์ข้าว</th>
                  <th scope="col">วันที่เริ่มเพาะปลูก</th>
                  <th scope="col">คำแนะนำ</th>    
                </tr>
              </thead>
              <tbody>

                <tr>
                  <td><div align="center"><%=rs.getString("rice_fields_id") %></div></td>    
                  <td><div align="center"><%=rs.getString("rice_fields_name") %></div></td>  

                  
                  
<%
        
        ResultSet r = s.executeQuery("SELECT * FROM rice_varieties  where  rice_varieties_id = '"+ rs.getString("rice_varieties_id")+"'" ); 
        if( r.next() )
        {
%>
                  <td><div align="center"><%=r.getString("rice_varieties_name") %></div></td>
<%
    }
else
{
%>
<td></td>
<%
}
%>
        
<td><div align="center"><%=rs.getString("plant_field_regis_date") %></div></td>
                


                <tr>
                  <th scope="row"></th>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>


              </tbody>
            </table>
        </div>
    </div>
  </div>
</div>



<%
        }
c.close();
        con.close();
        }
        catch(Exception ex){ out.print(ex); }
%>

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