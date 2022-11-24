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
<center>
<div class="col">
    
    <form id='manage_price' name='manage_rice' action='manage_rice_insert.jsp' method="get" >
<!--  <div class="col-sm-3">
    <label class="visually-hidden" for="specificSizeInputName">ชื่อข้าว</label>
    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" >
      <option selected ><h4>ชื่อพันธุ์ข้าว</h4></option>
      <option value="ข้าวหอมมะลิ 105">ข้าวหอมมะลิ 105</option>
      <option value="ข้าวหอมมะลิทุ่งกุลา">ข้าวหอมมะลิทุ่งกุลา</option>
      <option value="ข้าวเหนียวเขี้ยวงู">ข้าวเหนียวเขี้ยวงู</option>
    </select>
  </div>
    -->
<div class="col-sm-3">
      <label class="visually-hidden" for="specificSizeInputName">ชื่อพันธุ์ข้าว</label>
      <input     type="text" name="rice_varieties_name" class="form-control" id="rice_varieties_name"   placeholder="ชื่อพันธุ์ข้าว" required>
    </div>
 <br>
    <div class="col-sm-3">
      <label class="visually-hidden" for="specificSizeInputName">ทั้งหมด</label>
      <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="rice_type" required>
        <option selected value="ทั้งหมด">ทั้งหมด</option>
        <option value="ข้าวจ้าว">ข้าวจ้าว</option>
        <option value="ข้าวเหนียว">ข้าวเหนียว</option>
      </select>
    </div>

    <div class="col-sm-3">
      <textarea   name="rice_varieties_properties" class="form-control" id="rice_varieties_properties"   rows="3" placeholder="ข้อมูลความไวต่อแสง, อายุเก็บเกี่ยว, ความต้านทานโรค" required></textarea>

    </div>
    <br>


    <div class="col-sm-3">
      <label class="visually-hidden" for="specificSizeInputName">ผลผลิต</label>
      <input type="number" name="rice_varieties_quantity" class="form-control" id="rice_varieties_quantity" placeholder="ปริมาณผลผลิตต่อไร่ (Kg./ไร่)" required>
    </div>
    <br>


    <div class="col-sm-3">
      <label class="visually-hidden" for="specificSizeInputName">ผลผลิต</label>
      <input type="text" name="rice_varieties_soil_type" class="form-control" id="rice_varieties_soil_type"  placeholder="ลักษณะดินที่เหมาะแก่การเพาะปลูก" required>
    </div>
    <br>
    
    <center>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">เพิ่ม</button>
    </div>
  </center>
  <br>
    </form>
    
  </div>
</center>



<!------------------          testttttttttttttttt                     ---------------------------->
<!--<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">กำหนดราคาข้าว</h2>
    <br>
  </div>
</div>
</center>
<form id='manage_price' name='manage_price' action='manage_rice_insert.jsp' method="get" >
    <div class="container">
    <div class="mb-3 row">
      <label for="staticEmail" class="col-sm-2 col-form-label">ชื่อข้าว</label>
      <div class="col-sm-10">
        <input type="text" name="rice_varieties_name" class="form-control" id="rice_varieties_name">
      </div>
    </div>
    </div>

    <div class="container">
    <div class="mb-3 row">
      <label for="inputPassword" class="col-sm-2 col-form-label">ราคาข้าวสาร</label>
      <div class="col-sm-10">
        <input type="text" name="rice_type" class="form-control" id="rice_type">
      </div>
    </div>
    </div>

    <div class="container">
      <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">ราคาข้าวเปลือก</label>
        <div class="col-sm-10">
          <input type="text" name="rice_varieties_properties" class="form-control" id="rice_varieties_properties">
        </div>
      </div>
      
      </div>
    <div class="container">
      <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">ราคาข้าวเปลือก</label>
        <div class="col-sm-10">
          <input type="text" name="rice_varieties_quantity" class="form-control" id="rice_varieties_quantity">
        </div>
      </div>
      
      </div>
    <div class="container">
      <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">ราคาข้าวเปลือก</label>
        <div class="col-sm-10">
          <input type="text" name="rice_varieties_soil_type" class="form-control" id="rice_varieties_soil_type">
        </div>
      </div>
      
      </div>
      <br>
      
      <center>
  <div class="col-auto">
      <input  type="submit" value="Submit" >
    <button type="submit" value="Submit" class="btn btn-primary">เพิ่ม</button>
  
     
          <button type="submit" class="btn btn-primary">ลบ</button>
      
          <button type="submit" class="btn btn-primary">แก้ไข</button>
    </div>
  </center>
   </form> -->

<!------------------          testttttttttttttttt                     ---------------------------->








  <!-----------------------------------------------กล้องข้อมความ---------------------------------------------------------------------->
  
<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

    <!--MAIN HEADER AREA END -->

<!--  <center>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">เพิ่ม</button>
    </div>
  </center>
  <br>-->

  <!-- ---------------------------ตาราง--------------------------------- -->    

<!--<div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
<table class="table">
  <thead>
    <tr>
      <th scope="col">ชื่อข้าว</th>
      <th scope="col">รหัสพันธุ์ข้าว</th>
      <th scope="col">รูปแบบการจัดการ</th>
      <th scope="col">รูปแบบการจัดการ</th>
      <th scope="col">รูปแบบการจัดการ</th>
      <th scope="col">รูปแบบการจัดการ</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>ข้าวหอมมะลิ 105</td>
      <td>552266</td>
      <td >
 
        <button type="button" class="btn btn-outline-dark">แก้ไข</button>
        <button type="button" class="btn btn-outline-dark">ลบ</button>
      </td>

    </tr>
    <tr>
      <td>ข้าวหอมมะลิทุ่งกุลา</td>
      <td>854126</td> 
      <td>
 
        <button type="button" class="btn btn-outline-dark">แก้ไข</button>
        <button type="button" class="btn btn-outline-dark">ลบ</button>
      </td>   

    </tr>
  
    <tr>
      <td>ข้าวเหนียวเขี้ยวงู</td>
      <td>658412</td>
      <td >
 
        <button type="button" class="btn btn-outline-dark">แก้ไข</button>
        <button type="button" class="btn btn-outline-dark">ลบ</button>
      </td>
    
    </tr>
 
  </tbody>
</table>
</div>
</div>
</div>
</div>-->

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
                  <th scope="col">ประเภทข้าว</th>
                  <th scope="col">คุณสมบัติของพันธุ์ข้าว (บาท/เกวียน)</th>
                  <th scope="col"> ปริมาณผลผลิตต่อไร่ (กิโลกรัม/ไร่)</th>
                  <th scope="col">ลักษณะพื้นที่เพาะปลูก</th>           
                  <th scope="col">ลบ</th>
                     <th scope="col">แก้ไข</th>
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
       
    </tr>
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
        <td><div align="center"><%=rs.getString("rice_type") %></div></td>
        <td><div align="center"><%=rs.getString("rice_varieties_properties") %></div></td>
        <td><div align="center"><%=rs.getString("rice_varieties_quantity") %></div></td>
        <td><div align="center"><%=rs.getString("rice_varieties_soil_type") %></div></td>
        <td><a href="manage_rice_delete.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-primary">ลบ</button></a></td>
        <td><a href="manage_rice_update.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-primary">แก้ไข</button></a></td>
         
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