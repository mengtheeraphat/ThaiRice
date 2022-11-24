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

   <title> จัดการพันธุ์ข้าว </title>
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
        <a class="nav-link" href="manage_user.jsp">จัดการทะเบียนผู้ใช้งาน</a>
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
         <a class="nav-link" href="http://chiab5.ddns.net//logout_admin_process.jsp">ลงชื่อออก</a>
      </li>
      
      
      
      
      
    </ul>
  </nav>
  <br>

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">จัดการพันธุ์ข้าว</h2>
    <br>
  </div>
</div>
</center>

<!------------------------------------------------กล่องข้อตวาม----------------------------------------------------------------->


 



  <%
    
        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
         Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM news "); 
         
      //  while( rs.next() )
      // {
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
    <div>
      <h3 id="scrollspyHeading1">ข้อมูลพันธุ์ข้าว</h3>
    </div>
  </div>


<div class="container" >
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
            <!--  <form id="main"> -->
             <table class="table table-bordered" style="width: 120%;"  >
              <thead>
                <tr>
                    <th scope="col" class="text-center"  >news_id</th>
                  <th scope="col" class="text-center" >news_topic</th>
                  <th scope="col" class="text-center"  >news_source</th>
                  <th scope="col" class="text-center"  >news_url</th>
                  <th scope="col" class="text-center"  >news_date</th>
                  <th scope="col" class="text-center"  >news_pdf</th>           
                  
                  
                </tr>
              </thead>







<!--     <table width="700" border="1" id='showdata' name='showdata' action='showdata.jsp' method="get" >
    <tr>
       <th width="100"><div align="center"> รหัสพันธุ์ข้าว </th>    
       <th width="100"><div align="center"> ชื่อพันธุ์ข้าว</th>
       <th width="100"><div align="center"> ประเภทข้าว</th>
       <th width="100"><div align="center"> คุณสมบัติของพันธุ์ข้าว (บาท/เกวียน)</th>  
        <th width="100"><div align="center"> ปริมาณผลผลิตต่อไร่ (กิโลกรัม/ไร่)</th>  
         <th width="100"><div align="center"> ลักษณะพื้นที่เพาะปลูก</th>  -->
       
 <!-- --------------------------- 
 <a href="manage_user_delete.jsp?q=15">     --------------------------DELETE-----------------------  </a> 
            --------------------------------- -->    
       
   
<%
        // Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        // //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        // Statement stmt = con.createStatement();  
        // ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties"); 
 
        while( rs.next() )
        {  
%>  
    <tr>
      <td><div align="center"><%=rs.getString("news_id") %></div></td>
        <td><div align="center"><%=rs.getString("news_topic") %></div></td>
        <td><div align="center"><%=rs.getString("news_source") %></div></td>
        <td><div align="center"><%=rs.getString("news_url") %></div></td>
        <td><div align="center"><%=rs.getString("news_date") %></div></td>
       <!--  <td><div align="center"><%=rs.getString("news_pdf") %></div></td> -->
         <td align="center" >
          <a href="<%=rs.getString("news_pdf") %>"><button type="button" class="btn btn-primary">ดาวน์โหลด</button></a>
          
     </td>
    </tr>
    

     

  <!-- </form> -->














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