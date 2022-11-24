<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
        Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");    
        // Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties where rice_varieties_id = "+request.getParameter("q")); 
 
        while( rs.next() )
        {  
%>
<!DOCTYPE html>
<html>
    
        
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="seo & digital marketing">
    <meta name="keywords" content="marketing,digital marketing,creative, agency, startup,promodise,onepage, clean, modern,seo,business, company">
    <meta name="author" content="Themefisher.com">

   <title> แก้ไขข้อมูลพันธุ์ข้าว </title>
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
    
    
    
    
    
    
    
    
    
    
<body>
    
     
     <nav id="navbar-example2" class="navbar navbar-light" style="background-color: #f7ce1a;">
    <a class="navbar-brand" href="#">Thai Rice</a>
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link" href="manage_user.jsp">จัดการทะเบียนผู้ใช้</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manage_rice01.jsp">จัดการพันธุ์ข้าว</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manage_price01.jsp">กำหนดราคาข้าว</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manage_news.jsp">จัดการข่าวประชาสัมพันธ์</a>
      </li>
      <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">ลงชื่อเข้าสู่ระบบ</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="login admin.html">เข้าสู่ระบบ</a>
          <a class="dropdown-item" href="#">ออกจากระบบ</a>
        </div>
      </li> -->
    </ul>
  </nav>
  <br>
  
  
   <center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">แก้ไขข้อมูลราคาข้าว</h2>
    <br>
  </div>
</div>
</center>
    
    
    <form method="get" action="manage_price_update_process.jsp">
        
        <div class="container" style="margin-left: 35% ;">
    
<input type="hidden" name="rice_varieties_id" value="<%=rs.getString("rice_varieties_id") %>">

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-4 col-form-label">ชื่อพันธุ์ข้าว</label>
      <div class="col-sm-3">
        <input   type="text" class="form-control" id="rice_varieties_name" name="rice_varieties_name" value="<%=rs.getString("rice_varieties_name") %>"  required>
      </div>
    </div>
  
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-4 col-form-label">ราคาเมล็ดพันธุ์ข้าว&nbsp;-&nbsp;ชั้นพันธุ์ขยาย&nbsp;(บาท/กิโลกรัม)</label>
      <div class="col-sm-3">
        <input type="number" class="form-control" id="registered_seed" name="registered_seed" value="<%=rs.getString("registered_seed") %>" required>
      </div>
    </div>
  
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-4 col-form-label">ราคาเมล็ดพันธุ์ข้าว&nbsp;-&nbsp;ชั้นพันธุ์จำหน่าย&nbsp;(บาท/กิโลกรัม)</label>
      <div class="col-sm-3">
        <input type="number" class="form-control" id="certified_seed" name="certified_seed" value="<%=rs.getString("certified_seed") %>" required>
      </div>
    </div>
      
   <div class="form-group row">
      <label for="colFormLabel" class="col-sm-4 col-form-label">ราคาข้าวเปลือกต่ำสุด  (บาท/ตัน)</label>
      <div class="col-sm-3">
        <input type="number" class="form-control" id="lowerbound_price" name="lowerbound_price" value="<%=rs.getString("lowerbound_price") %>" required>
      </div>
    </div>

<div class="form-group row">
      <label for="colFormLabel" class="col-sm-4 col-form-label">ราคาข้าวเปลือกสูงสุด (บาท/ตัน)</label>
      <div class="col-sm-3">
        <input type="number" class="form-control" id="upperbound_price" name="upperbound_price" value="<%=rs.getString("upperbound_price") %>" required>
      </div>
    </div>



    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-4 col-form-label">วันที่ปรับปรุงล่าสุด</label>
      <div class="col-sm-3">
      <input type="date" class="form-control" id="last_update" name="last_update"  required>
      </div>
    </div>

    <!--      <div class="container">
      <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-3 col-form-label">วันที่ปรับปรุงล่าสุด</label>
        <div class="col-sm-4">
          <input type="date" class="form-control" id="last_update" name="last_update" >
        </div>
      </div>

    </div> -->
 
  </div>
      
      
      
      
      
      
      
      
           <center>
  <div class="col-auto">
      <button type="submit" value="Submit" class="btn btn-primary">ยืนยันการแก้ไข</button>
    &nbsp;
    &nbsp;
    &nbsp;
        <a href="manage_price01.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-outline-dark">ปิด</button></a>  
    </div>
  </center>
  <br>
        
  
        
        
        
    </form>
    


<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>








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