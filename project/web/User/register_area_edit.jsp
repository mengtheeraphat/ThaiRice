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

   <title> แก้ไขข้อมูลแปลงเพาะปลูก </title>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

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
            <a class="nav-link" href="register01.html">สมัครสมาชิก</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="manage_search01.html">สืบค้นข้อมูลข้าว</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="register_area01.html">ลงทะเบียนแปลงเพาะปลูก</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="check01.html">ตรวจสอบสถานะการเพาะปลูก</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="check_price_rice01.html">ตรวจสอบราคาข้าว</a>
          </li>
        </ul>
      </nav>
  <br>

<!-- ---------------------------กล่องข้อความ--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">แก้ไขข้อมูลแปลงเพาะปลูก</h2>
  </div>
</div>
</center>
<br>

<%
    
    Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
            
 Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM rice_fieldss where rice_fields_id  = "+request.getParameter("q")); 
 
        while( rs.next() )
        {  
%> 


<form id='register_area' name='register_area' action='register_area_edit_process.jsp' method="get">
    <input type="hidden" name="rice_fields_id" value="<%=rs.getString("rice_fields_id") %>">
<br>
<div class="col">
<div class="row" style="margin-left: 30% ;">
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อแปลงเพาะปลูก</label>
    <div class="col-sm-4">
        <input type="text" class="form-control" id="rice_fields_name" name="rice_fields_name" value="<%=rs.getString("rice_fields_name") %>">
      </div>
</div>

      
      
    
   <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อพันธุ์ข้าว</label>
    <div class="col-sm-4">
     
            <select class="form-select mt-2" id="rice_varieties_name" name="rice_varieties_name" >
                
   
<%
        Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
            
            
        ResultSet r = s.executeQuery("SELECT * FROM rice_varieties" ); 
        while( r.next() )
        {
%>




       <option value="<%=r.getString("rice_varieties_id") %>"><%=r.getString("rice_varieties_name") %></option>
             
              
              <%
    }


c.close();


      %>  
              
              
              
              
         </select>    
      
      
      
      
      </div>
</div>

  
      
      
      
    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="rice_field_size" name="rice_field_size" value="<%=rs.getString("rice_field_size") %>">
    </div>

    <div class="col-auto">
      <label for="colFormLabel" class="col-sm-12 col-form-label">ไร่</label>
    </div>
    
    
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-3 col-form-label">ลักษณะดินในแปลงเพาะปลูก</label>
    <div class="col-sm-4">
      <select class="form-select mt-2" id="rice_field_soil_type" name="rice_field_soil_type"  >
          
        <%
            if( rs.getString("rice_field_soil_type").equals("ดินร่วน")  )
            {
        %>
                    <option value="ดินร่วน" selected="selected">ดินร่วน</option>
        <%
            }
            else
            {
        %>
                    <option value="ดินร่วน">ดินร่วน</option>
        <%

            }
        %>
          
        <%
            if( rs.getString("rice_field_soil_type").equals("ดินร่วนกึ่งดินร่วนเหนียว")  )
            {
        %>
                    <option value="ดินร่วนกึ่งดินร่วนเหนียว" selected="selected">ดินร่วนกึ่งดินร่วนเหนียว</option>
        <%
            }
            else
            {
        %>
                    <option value="ดินร่วนกึ่งดินร่วนเหนียว">ดินร่วนกึ่งดินร่วนเหนียว</option>
        <%

            }
        %>
        
        
        <%
            if( rs.getString("rice_field_soil_type").equals("ดินร่วนเหนียว")  )
            {
        %>
                    <option value="ดินร่วนเหนียว" selected="selected">ดินร่วนเหนียว</option>
        <%
            }
            else
            {
        %>
                    <option value="ดินร่วนเหนียว">ดินร่วนเหนียว</option>
        <%

            }
        %>
      </select>
      </div>
</div>
    
    
    
</div>


    
    
    
<!--    <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">วันที่เริ่มเพาะปลูก</label>
    <div class="col-sm-4">
     <input type="date" class="form-control" id="plant_field_regis_date" name="plant_field_regis_date" >
      </div>
</div>-->

</div>
</div>


<!-----------------------------------กล่องข้อความ------------------------------------------------>




<!-----------------------------------ปุ่ม------------------------------------------>
  <center>
    <div class="col-auto">
        
        <button type="submit" class="btn btn-primary">ยืนยันการแก้ไข</button>
        <a href="register_area01.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-secondary">ยกเลิก</button></a>  
    </div>
    </center>
    <br>
    
    </form>
<!-----------------------------------ปุ่ม------------------------------------------>


    <!-- Essential Scripts
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

    
    

    <%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    
    
    
  </body>
  </html>
