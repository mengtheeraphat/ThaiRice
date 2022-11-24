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

   <title> สมัครสมาชิก </title>
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
<!--      <li class="nav-item">
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
      </li>-->
    </ul>
  </nav>
  <br>

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">สมัครสมาชิก</h2>
  </div>
</div>
<br>
</center>

<form id='register' name='register' action='http://chiab5.ddns.net/register_insert.jsp' method="get">
<!-- <form id='register' name='register' action='register_insert.jsp' method="get"> -->
<div class="container">
    <div class="row" style="margin-left: 30% ;">
        
        
        
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">ชื่อ-นามสกุล</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="mem_name" id="mem_name" placeholder="" required>
    </div>
  </div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">ที่อยู่</label>
    <div class="col-sm-4">
      <textarea class="form-control" name="mem_address" id="mem_address" rows="3" placeholder="" required></textarea>
    </div>
  </div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">เบอร์โทรศัพท์</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="mem_phone" id="mem_phone" placeholder="" required>
    </div>
  </div>

    <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">วันเดือนปีเกิด</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="mem_birthday" id="mem_birthday" placeholder="" required>
    </div>
  </div>
<!--    <div class="col-sm-1">
    <input type="text" id="disabledTextInput" class="form-control" placeholder="วัน">
    </div>

    <div class="col-sm-2">
      <input type="text" id="disabledTextInput" class="form-control" placeholder="เดือน">
    </div>

    <div class="col-sm-1">
      <input type="text" id="disabledTextInput" class="form-control" placeholder="ปี">
    </div>-->
  

<!--<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">ภูมิภาค</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="region" id="region" placeholder="">
    </div>
</div>
  -->
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label" >ภูมิภาค</label>
    <div class="col-sm-4">
      <select class="form-select mt-2" name="region" required >
        <option value="ภูมิภาค" selected required>ภูมิภาค</option>
        <option value="ภาคเหนือ" >ภาคเหนือ</option>
        <option value="ภาคใต้">ภาคใต้</option>
        <option value="ภาคกลาง">ภาคกลาง</option>
        <option value="ภาคตะวันออก">ภาคตะวันออก</option>
        <option value="ภาคตะวันออกเฉียงเหนือ">ภาคตะวันออกเฉียงเหนือ</option>
        <option value="ภาคตะวันตก">ภาคตะวันตก</option>
      </select>
    </div>
  </div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">ชื่อผู้ใช้</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="mem_login_name" id="mem_login_name" placeholder="" required >
    </div>
</div>
  
  
     <script> 
    var check = function() {
  if (document.getElementById('mem_password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'รหัสผ่านตรง';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'รหัสผ่านไม่ตรง';
  }
}

</script>  

<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">รหัสผ่าน</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" name="mem_password" id="mem_password" placeholder="" value = "" onkeyup='check();' required>
    </div>
</div>

   <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">ยืนยันรหัสผ่าน</label>
      <div class="col-sm-4">
         <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="" value = ""  onkeyup='check();' required >
          <span id='message'></span>
      </div>
    </div>




</div>
</div>

<center>
   
				
<div class="col-auto">
    <button type="submit" class="btn btn-primary">สมัครสมาชิก</button>
    
&nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
     <button type="Reset" class="btn btn-secondary">ยกเลิก</button>
    
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <a href="index.jsp"> <button type="button" class="btn btn-secondary">กลับ</button></a>
    </div>
       
          <br>                   
   
</center>
    
    
    
   
</form>




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