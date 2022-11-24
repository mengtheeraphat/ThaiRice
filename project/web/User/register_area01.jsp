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

   <title> ลงทะเบียนแปลงเพาะปลูก </title>
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

<!-- ---------------------------กล่องข้อความ--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">ลงทะเบียนแปลงเพาะปลูก</h2>
  </div>
</div>
</center>
<br>


<form id='register_area' name='register_area' action='register_area_insert.jsp' method="get">
<div class="col">
<div class="row" style="margin-left: 30% ;">
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อแปลงเพาะปลูก</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="rice_fields_name" name="rice_fields_name">
      </div>
</div>

<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="rice_field_size" name="rice_field_size">
    </div>

    <div class="col-auto">
      <label for="colFormLabel" class="col-sm-12 col-form-label">ไร่</label>
    </div>
</div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-3 col-form-label">ลักษณะดินในแปลงเพาะปลูก</label>
        <div class="col-sm-4">
          <select class="form-select mt-2" id="rice_field_soil_type" name="rice_field_soil_type">
            <option value="-">-</option>
            <option value="ดินร่วน">ดินร่วน</option>
            <option value="ดินเหนียว">ดินเหนียว</option>
            <option value="ดินร่วนกึ่งดินร่วนเหนียว">ดินเหนียวกึ่งดินร่วนเหนียว</option>
          </select>
          </div>
</div>

</div>
</div>



  <center>
    <div class="col-auto">
    <button type="submit" class="btn btn-primary">ลงทะเบียน</button>
    </div>
    </center>
    <br>
    
    </form>
<!-----------------------------------ปุ่ม------------------------------------------>

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
                  <th scope="col">ขนาดแปลงเพาะปลูก</th>
                  <th scope="col">ลักษณะดินในแปลงเพาะปลูก</th>
                  <th scope="col">ชื่อข้าว</th>
                  <th scope="col">วันที่เริ่มเพาะปลูก</th>
                  <th scope="col">ยกเลิกแปลงเพาะปลูก</th>
                </tr>
              </thead>
              <tbody>

                <tr>
                  <td><div align="center"><%=rs.getString("rice_fields_id") %></div></td>    
                  <td><div align="center"><%=rs.getString("rice_fields_name") %></div></td>  
                  <td><div align="center"><%=rs.getString("rice_field_size") %></div></td>
                  <td><div align="center"><%=rs.getString("rice_field_soil_type") %></div></td>
                  
                  
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
                
                
                
                
                
                  <td >
                    <div class="d-grid gap-2 d-md-block">
                        <a href="save_area01.jsp?q=<%=rs.getString("rice_fields_id") %>" ><button type="button" class="btn btn-outline-dark">บันทึกการเพาะปลูก</button></a>
<!--                    <button type="button" class="btn btn-outline-dark">ยกเลิกการเพาะปลูก</button>-->
                   <a href="register_area_edit.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-outline-dark">แก้ไข</button></a>
                    <a href="register_area_delete.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-outline-dark">ลบ</button></a>
                    </div>
                  </td>
                </tr>





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





















<!-----------------------------------modol
------------------------------------------>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel">แก้ไขข้อมูล</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <div class="row" style="margin-left: 10% ;">
          <div class="form-group row">
            <label for="colFormLabel" class="col-sm-9 col-lg-5">ชื่อแปลงเพาะปลูก</label>
            <div class="col-sm-6">
              <input type="search" class="form-control" id="rice_fields_name" name="rice_fields _name" >
            </div>
        </div>

        <div class="form-group row">
          <label for="colFormLabel" class="col-sm-9 col-lg-5">ชื่อข้าว</label>
          <div class="col-sm-6">
            
            <select class="form-select mt-2" id="rice_varieties_name" name="rice_varieties_name">
              <option value="-">-</option>
              <option value="ข้าวเหนียว">ข้าวเหนียว</option>
              <option value="ข้าวจ้าว">ข้าวจ้าว</option>
            </select>
            </div>
      </div>

        <div class="form-group row">
          <label for="colFormLabel" class="col-sm-4 col-lg-5">ขนาดแปลงเพาะปลูก</label>
          <div class="col-sm-6">
            <input type="search" class="form-control" id="rice_field_size" name="rice_field_size">
          </div>
      </div>

      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-9 col-lg-5">ลักษณะดินในแปลงเพาะปลูก</label>
        <div class="col-sm-6">
          
          <select class="form-select mt-2" id="rice_field_soil_type" name="rice_field_soil_type">
            <option value="-">-</option>
            <option value="ดินร่วน">ดินร่วน</option>
            <option value="ดินร่วนเหนียว">ดินเหนียว</option>
            <option value="ดินร่วนกึ่งดินร่วนเหนียว">ดินเหนียวกึ่งดินร่วนเหนียว</option>
          </select>
          </div>
    </div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-9 col-lg-5">วันที่เริ่มเพาะปลูก</label>
    <div class="col-sm-6">
      <input type="date" class="form-control" id="plant_field_regis_date" name="plant_field_regis_date">
    </div>
</div>

      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">ปิด</button>
        <button type="button" class="btn btn-primary">ยืนยันการแก้ไข</button>
      </div>
    </div>
  </div>
</div>

<!-----------------------------------Modol------------------------------------------>
<%
        }
c.close();
        con.close();
        }
        catch(Exception ex){ out.print(ex); }
%>

 <!-- --------ปุ่มแก้ไข---------- -->
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

  </body>
  </html>
