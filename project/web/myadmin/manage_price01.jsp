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

   <title> กำหนดราคาข้าว </title>
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
        <a class="nav-link" href="http://localhost:8084/project//admin/manage_user.jsp">จัดการทะเบียนผู้ใช้งาน</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manage_rice01.jsp">จัดการพันธุ์ข้าว</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manage_price01.jsp">กำหนดราคาข้าว</a>
      </li>
      
       <li class="nav-item">
            
             <a class="nav-link" >
         <%
        out.print( session.getAttribute("sUserID") );
    %>
    
    </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8084/project//admin/logout_admin_process.jsp">ลงชื่อออก</a>
      </li>
      
      
      
      
    </ul>
  </nav>
  <br>
  
<!--<div class="container">
  <center>
    <div class="row" style="margin-left: 35% ;">
        <div class="  ftco-animate">
            <div class="staff">
                
                
<form id='manage_price' name='manage_price' action='manage_price_insert.jsp' method="get" class="row gx-3 gy-2 align-items-center">
  



  
<input type="text" name="rice_varieties_name"  /> <br>
<input type="text" name="rice_varieties_price"  /><br>
<input type="text" name="unmilled_rice_price"   /><br>

  
  
  
<br>


    <div class="row">
        <center>
        <form class="row gx-3 gy-2 align-items-center">
     <div class="col-sm-3" style="margin-left: 130px;">
         
         <input  type="submit" value="Submit" >
      <button type="submit" value="Submit"class="btn btn-primary">เพิ่ม</button>

   
      </div>
      <br>
  
        </center>
    </div>
    

</form>
            </div>
        </div>
    </div>
</center>
</div>-->
<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">กำหนดราคาข้าว</h2>
    <br>
  </div>
</div>
</center>
<form id='manage_price' name='manage_price' action='manage_price_insert.jsp' method="get" >
    <div class="container">
    <div class="mb-3 row">
      <label for="staticEmail" class="col-sm-2 col-form-label">ชื่อข้าว</label>
      <div class="col-sm-10">
        <input type="text" name="rice_varieties_name" class="form-control" id="rice_varieties_name" required>
      </div>
    </div>
    </div>

    <div class="container">
    <div class="mb-3 row">
      <label for="inputPassword" class="col-sm-2 col-form-label">ราคาข้าวสาร</label>
      <div class="col-sm-10">
        <input type="text" name="rice_varieties_price" class="form-control" id="rice_varieties_price" required>
      </div>
    </div>
    </div>

    <div class="container">
      <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">ราคาข้าวเปลือก</label>
        <div class="col-sm-10">
          <input type="text" name="unmilled_rice_price" class="form-control" id="unmilled_rice_price" required>
        </div>
      </div>
      
      </div>
      <br>
      
      <center>
  <div class="col-auto">
<!--      <input  type="submit" value="Submit" >-->
    <button type="submit" value="Submit" class="btn btn-primary">เพิ่ม</button>
  
     
<!--          <button type="submit" class="btn btn-primary">ลบ</button>
      
          <button type="submit" class="btn btn-primary">แก้ไข</button>-->
    </div>
  </center>
   </form>   

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

    <!--MAIN HEADER AREA END -->

<!--  <center>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">เพิ่ม</button>
  
     
          <button type="submit" class="btn btn-primary">ลบ</button>
      
          <button type="submit" class="btn btn-primary">แก้ไข</button>
    </div>
  </center>
  <br>-->

  
  
  <%
    
        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
        
         
//        while( rs.next() )
//        {
//            out.print ( rs.getString("adm_id") );
//             out.print ( rs.getString("adm_name") );
//              out.print ( rs.getString("adm_passwd") );
//               out.print ( rs.getString("adm_phone") );
//                out.print ( rs.getString("adm_login_name") );
//                 out.print ( rs.getString("adm_use_start") );
//              
//        }     



        //response.sendRedirect( "manage_user.jsp" ); 


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
                  <th scope="col">ราคาข้าวสาร (บาท/เกวียน)</th>
                  <th scope="col">ราคาข้าวเปลือก (บาท/เกวียน)</th>               
                  <th scope="col">ลบ</th>
                     <th scope="col">แก้ไข</th>
                </tr>
              </thead>





<!--
     <table width="700" border="1" id='showdata' name='showdata' action='showdata.jsp' method="get" >
    <tr>
       <th width="100"><div align="center"> รหัสพันธุ์ข้าว </th>    
       <th width="100"><div align="center"> ชื่อพันธุ์ข้าว</th>
       <th width="100"><div align="center"> ราคาข้าวสาร (บาท/เกวียน)</th>
       <th width="100"><div align="center"> ราคาข้าวเปลือก (บาท/เกวียน)</th>  
       -->
 <!-- --------------------------- 
 <a href="manage_user_delete.jsp?q=15">     --------------------------DELETE-----------------------  </a> 
            --------------------------------- -->   
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
       
  
<%
        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties"); 
 
        while( rs.next() )
        {  
%>  
    <tr>
        <td><div align="center"><%=rs.getString("rice_varieties_id") %></div></td>
        <td><div align="center"><%=rs.getString("rice_varieties_name") %></div></td>
        <td><div align="center"><%=rs.getString("rice_varieties_price") %></div></td>
        <td><div align="center"><%=rs.getString("unmilled_rice_price") %></div></td>
        <td><a href="manage_price_delete.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-primary">ลบ</button></a></td>
        <td><a href="manage_price_update.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-primary">แก้ไข</button></a></td>
         
    </tr>
    

<%
        }
        con.close();
        }
        catch(Exception ex){ out.print(ex); }
%>

         </table>     

    </div>
    </div>
  </div>
</div>

               

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