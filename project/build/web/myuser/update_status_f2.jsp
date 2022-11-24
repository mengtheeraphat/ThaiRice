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
    <script type="text/javascript" src="jquery-3.6.0.min.js"></script>
   <title> บันทึกการเพาะปลูก </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">


<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>



<!--<script src="http://code.jquery.com/jquery-1.9.1.js"></script>-->



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
<%
    
    Class.forName("com.mysql.jdbc.Driver");        
        
        try
        {
          Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");  
        // Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM rice_fieldss where rice_fields_id = "+request.getParameter("q")); 
        
       // ResultSet rs1 = stmt.executeQuery("SELECT * FROM rice_varieties");       
        while( rs.next() )
        {  
     //   String  rice_fertilizer1 =    rs1.getString("rice_fertilizer1");
      //    String  rice_fertilizer2 =    rs1.getString("rice_fertilizer2");
        //   String  rice_havest =    rs1.getString("rice_havest");           
%>


      




            <%
            Connection c1 =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");      
//        Connection c1 =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s1 = c1.createStatement();  
            
            
        ResultSet rs1 = s1.executeQuery("SELECT * FROM rice_varieties" ); 
        while( rs1.next() )
        {
              String  rice_fertilizer1 =    rs1.getString("rice_fertilizer1");
              
          String  rice_fertilizer2 =    rs1.getString("rice_fertilizer2");
          String  rice_havest =    rs1.getString("rice_havest");
System.out.print("rice_fertilizer1 :"+rice_fertilizer1+ "rice_fertilizer2"+rice_fertilizer2+" rice_havest "+rice_havest);
System.out.println("rice_fertilizer1 :"+rice_fertilizer1+ "rice_fertilizer2");
System.out.println("rice_fertilizer2 :"+rice_fertilizer2);
System.out.println("rice_havest :"+rice_havest);
%>
 

          <%
    }


c1.close();


      %>  



    <nav id="navbar-example2" class="navbar navbar-light" style="background-color: #f7ce1a;">
        <a class="navbar-brand" href="#">Thai Rice</a>
        <ul class="nav nav-pills">
          
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
<form id='save_area' name='save_area' action='update_status_f2_process.jsp' method="get">
<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">บันทึกเวลาการใส่ปุ๋ยครั้งที่ 2</h2>
  </div>
</div>
</center>
<br>
<input type="hidden" name="rice_fields_id" value="<%=rs.getString("rice_fields_id") %>">
<div class="container">
    <div class="row" style="margin-left: 30% ;">

      <!-------------------------------------------------------------------------------->
      
      
      
      
<div class="col">
<div class="row" style="margin-left: 10% ;">
    
    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อแปลงเพาะปลูก</label>
    <div class="col-sm-4">        
        <a ><%=rs.getString("rice_fields_id") %> </a>
      </div>
</div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อแปลงเพาะปลูก</label>
    <div class="col-sm-4">        
        <a ><%=rs.getString("rice_fields_name") %> </a>
      </div>
</div>    
      
      
      
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก (ไร่)</label>
    <div class="col-sm-4">
      <a ><%=rs.getString("rice_field_size") %> </a>
    </div>  
</div>




    
  <!--------------------------------     <div class="row gx-3 gy-2 align-items-center">        ----------------------------------------->
         

   
       <div class="form-group row">
        <label for="colFormLabel" class="col-sm-4 col-lg-2 col-form-label">วัน/เดือน/ปี</label>
        <div class="col-sm-4">
              <input type="date" id="fertilizer2_date_real" name="fertilizer2_date_real">
        </div>
      </div>  
        <input type="hidden" name="fertilizer2_status" id="fertilizer2_status" value="Y">
      <!--------------------------------      </div>        ----------------------------------------->
</div>
</div>


      
      <!-------------------------------------------------------------------------------->
  </div>
  </div>
  
  <br>

    <center>
        <div class="col-auto">
           <button type="submit" class="btn btn-primary">บันทึกการดำเนินงาน</button>
       &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
           <a href="check01.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-secondary">ยกเลิก</button></a>
        </div> 
    </center>
</form>
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
<%
 

}

con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </body>
  </html>