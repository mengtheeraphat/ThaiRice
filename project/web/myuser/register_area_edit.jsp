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
            <a class="nav-link" href="manage_search01.jsp">สืบค้นข้อมูลพันธุ์ข้าว</a>
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

             <li class="nav-item">
        <a class="nav-link" href="news.jsp">ข่าวประชาสัมพันธ์</a>
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
            
            Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//         Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
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

      
            <!-------------------------------------------------------------------------------->
    
   <div class="form-group row">
     
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อพันธุ์ข้าว</label>
    <div class="col-sm-4">
        
        
              
            <select class="form-select mt-2" id="rice_varieties_id" name="rice_varieties_id" >
                
   
<%
    Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//        Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
            
            
        ResultSet r = s.executeQuery("SELECT * FROM rice_varieties" ); 
        while( r.next() )
        {
            if( r.getString("rice_varieties_id").equals( rs.getString("rice_varieties_id") ) )
            {
%>
<option value="<%=r.getString("rice_varieties_id") %>" selected ><%=r.getString("rice_varieties_name") %></option>  
<%
           }    
            else
            {
%>
<option value="<%=r.getString("rice_varieties_id") %>"><%=r.getString("rice_varieties_name") %></option>
<%
            }
    }





%>  
    
      
      
         </select>    
  
      </div>
</div>
      <!-------------------------------------------------------------------------------->
  
      
      
      
    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก &nbsp;(ไร่)</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="rice_field_size" name="rice_field_size" value="<%=rs.getString("rice_field_size") %>">
    </div>
</div>
<!--     <div class="col-auto">
      <label for="colFormLabel" class="col-sm-12 col-form-label">ไร่</label>
    </div> -->
    
    
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ลักษณะดินในแปลงเพาะปลูก</label>
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
    
    
    



    
    
    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">จังหวัดที่เพาะปลูก</label>
    <div class="col-sm-4">
      <select class="form-select mt-2" id="province" name="province"  >
          
        <%
            if( rs.getString("province").equals("กรุงเทพมหานคร")  )
            {
        %>
                    <option value="กรุงเทพมหานคร" selected="selected">กรุงเทพมหานคร</option>
        <%
            }
            else
            {
        %>
                    <option value="กรุงเทพมหานคร">กรุงเทพมหานคร</option>
        <%

            }
        %>
          
        <%
            if( rs.getString("province").equals("กระบี่")  )
            {
        %>
                    <option value="กระบี่" selected="selected">กระบี่</option>
        <%
            }
            else
            {
        %>
                    <option value="กระบี่">กระบี่</option>
        <%

            }
        %>
        
        
        <%
            if( rs.getString("province").equals("กาญจนบุรี")  )
            {
        %>
                    <option value="กาญจนบุรี" selected="selected">กาญจนบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="กาญจนบุรี">กาญจนบุรี</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->


        <%
            if( rs.getString("province").equals("กาฬสินธุ์")  )
            {
        %>
                    <option value="กาฬสินธุ์" selected="selected">กาฬสินธุ์</option>
        <%
            }
            else
            {
        %>
                    <option value="กาฬสินธุ์">กาฬสินธุ์</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("กำแพงเพชร")  )
            {
        %>
                    <option value="กำแพงเพชร" selected="selected">กำแพงเพชร</option>
        <%
            }
            else
            {
        %>
                    <option value="กำแพงเพชร">กำแพงเพชร</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ขอนแก่น")  )
            {
        %>
                    <option value="ขอนแก่น" selected="selected">ขอนแก่น</option>
        <%
            }
            else
            {
        %>
                    <option value="ขอนแก่น">ขอนแก่น</option>
        <%

            }
        %>


<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("จันทบุรี")  )
            {
        %>
                    <option value="จันทบุรี" selected="selected">จันทบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="จันทบุรี">จันทบุรี</option>
        <%

            }
        %>


<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ฉะเชิงเทรา")  )
            {
        %>
                    <option value="ฉะเชิงเทรา" selected="selected">ฉะเชิงเทรา</option>
        <%
            }
            else
            {
        %>
                    <option value="ฉะเชิงเทรา">ฉะเชิงเทรา</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ชลบุรี")  )
            {
        %>
                    <option value="ชลบุรี" selected="selected">ชลบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="ชลบุรี">ชลบุรี</option>
        <%

            }
        %>

        <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ชัยนาท")  )
            {
        %>
                    <option value="ชัยนาท" selected="selected">ชัยนาท</option>
        <%
            }
            else
            {
        %>
                    <option value="ชัยนาท">ชัยนาท</option>
        <%

            }
        %>

        <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ชัยภูมิ")  )
            {
        %>
                    <option value="ชัยภูมิ" selected="selected">ชัยภูมิ</option>
        <%
            }
            else
            {
        %>
                    <option value="ชัยภูมิ">ชัยภูมิ</option>
        <%

            }
        %>

        <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ชุมพร")  )
            {
        %>
                    <option value="ชุมพร" selected="selected">ชุมพร</option>
        <%
            }
            else
            {
        %>
                    <option value="ชุมพร">ชุมพร</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("เชียงราย")  )
            {
        %>
                    <option value="เชียงราย" selected="selected">เชียงราย</option>
        <%
            }
            else
            {
        %>
                    <option value="เชียงราย">เชียงราย</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("เชียงใหม่")  )
            {
        %>
                    <option value="เชียงใหม่" selected="selected">เชียงใหม่</option>
        <%
            }
            else
            {
        %>
                    <option value="เชียงใหม่">เชียงใหม่</option>
        <%

            }
        %>

        <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ตรัง")  )
            {
        %>
                    <option value="ตรัง" selected="selected">ตรัง</option>
        <%
            }
            else
            {
        %>
                    <option value="ตรัง">ตรัง</option>
        <%

            }
        %>
    <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ตราด")  )
            {
        %>
                    <option value="ตราด" selected="selected">ตราด</option>
        <%
            }
            else
            {
        %>
                    <option value="ตราด">ตราด</option>
        <%

            }
        %>

  <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ตาก")  )
            {
        %>
                    <option value="ตาก" selected="selected">ตาก</option>
        <%
            }
            else
            {
        %>
                    <option value="ตาก">ตาก</option>
        <%

            }
        %>
 <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นครนายก")  )
            {
        %>
                    <option value="นครนายก" selected="selected">นครนายก</option>
        <%
            }
            else
            {
        %>
                    <option value="นครนายก">นครนายก</option>
        <%

            }
        %>

 <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นครปฐม")  )
            {
        %>
                    <option value="นครปฐม" selected="selected">นครปฐม</option>
        <%
            }
            else
            {
        %>
                    <option value="นครปฐม">นครปฐม</option>
        <%

            }
        %>

 <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นครพนม")  )
            {
        %>
                    <option value="นครพนม" selected="selected">นครพนม</option>
        <%
            }
            else
            {
        %>
                    <option value="นครพนม">นครพนม</option>
        <%

            }
        %>

 <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นครราชสีมา")  )
            {
        %>
                    <option value="นครราชสีมา" selected="selected">นครราชสีมา</option>
        <%
            }
            else
            {
        %>
                    <option value="นครราชสีมา">นครราชสีมา</option>
        <%

            }
        %>

 <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นครศรีธรรมราช")  )
            {
        %>
                    <option value="นครศรีธรรมราช" selected="selected">นครศรีธรรมราช</option>
        <%
            }
            else
            {
        %>
                    <option value="นครศรีธรรมราช">นครศรีธรรมราช</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นครสวรรค์")  )
            {
        %>
                    <option value="นครสวรรค์" selected="selected">นครสวรรค์</option>
        <%
            }
            else
            {
        %>
                    <option value="นครสวรรค์">นครสวรรค์</option>
        <%

            }
        %>


        <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นนทบุรี")  )
            {
        %>
                    <option value="นนทบุรี" selected="selected">นนทบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="นนทบุรี">นนทบุรี</option>
        <%

            }
        %>


<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("นราธิวาส")  )
            {
        %>
                    <option value="นราธิวาส" selected="selected">นราธิวาส</option>
        <%
            }
            else
            {
        %>
                    <option value="นราธิวาส">นราธิวาส</option>
        <%

            }
        %>


<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("น่าน")  )
            {
        %>
                    <option value="น่าน" selected="selected">น่าน</option>
        <%
            }
            else
            {
        %>
                    <option value="น่าน">น่าน</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("บึงกาฬ")  )
            {
        %>
                    <option value="บึงกาฬ" selected="selected">บึงกาฬ</option>
        <%
            }
            else
            {
        %>
                    <option value="บึงกาฬ">บึงกาฬ</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("บุรีรัมย์")  )
            {
        %>
                    <option value="บุรีรัมย์" selected="selected">บุรีรัมย์</option>
        <%
            }
            else
            {
        %>
                    <option value="บุรีรัมย์">บุรีรัมย์</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ปทุมธานี")  )
            {
        %>
                    <option value="ปทุมธานี" selected="selected">ปทุมธานี</option>
        <%
            }
            else
            {
        %>
                    <option value="ปทุมธานี">ปทุมธานี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ประจวบคีรีขันธ์")  )
            {
        %>
                    <option value="ประจวบคีรีขันธ์" selected="selected">ประจวบคีรีขันธ์</option>
        <%
            }
            else
            {
        %>
                    <option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ปราจีนบุรี")  )
            {
        %>
                    <option value="ปราจีนบุรี" selected="selected">ปราจีนบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="ปราจีนบุรี">ปราจีนบุรี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ปัตตานี")  )
            {
        %>
                    <option value="ปัตตานี" selected="selected">ปัตตานี</option>
        <%
            }
            else
            {
        %>
                    <option value="ปัตตานี">ปัตตานี</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("พะเยา")  )
            {
        %>
                    <option value="พะเยา" selected="selected">พะเยา</option>
        <%
            }
            else
            {
        %>
                    <option value="พะเยา">พะเยา</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("พระนครศรีอยุธยา")  )
            {
        %>
                    <option value="พระนครศรีอยุธยา" selected="selected">พระนครศรีอยุธยา</option>
        <%
            }
            else
            {
        %>
                    <option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("พังงา")  )
            {
        %>
                    <option value="พังงา" selected="selected">พังงา</option>
        <%
            }
            else
            {
        %>
                    <option value="พังงา">พังงา</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("พัทลุง")  )
            {
        %>
                    <option value="พัทลุง" selected="selected">พัทลุง</option>
        <%
            }
            else
            {
        %>
                    <option value="พัทลุง">พัทลุง</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("พิจิตร")  )
            {
        %>
                    <option value="พิจิตร" selected="selected">พิจิตร</option>
        <%
            }
            else
            {
        %>
                    <option value="พิจิตร">พิจิตร</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("พิษณุโลก")  )
            {
        %>
                    <option value="พิษณุโลก" selected="selected">พิษณุโลก</option>
        <%
            }
            else
            {
        %>
                    <option value="พิษณุโลก">พิษณุโลก</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("เพชรบุรี")  )
            {
        %>
                    <option value="เพชรบุรี" selected="selected">เพชรบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="เพชรบุรี">เพชรบุรี</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("เพชรบูรณ์")  )
            {
        %>
                    <option value="เพชรบูรณ์" selected="selected">เพชรบูรณ์</option>
        <%
            }
            else
            {
        %>
                    <option value="เพชรบูรณ์">เพชรบูรณ์</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("แพร่")  )
            {
        %>
                    <option value="แพร่" selected="selected">แพร่</option>
        <%
            }
            else
            {
        %>
                    <option value="แพร่">แพร่</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ภูเก็ต")  )
            {
        %>
                    <option value="ภูเก็ต" selected="selected">ภูเก็ต</option>
        <%
            }
            else
            {
        %>
                    <option value="ภูเก็ต">ภูเก็ต</option>
        <%

            }
        %>


<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("มหาสารคาม")  )
            {
        %>
                    <option value="มหาสารคาม" selected="selected">มหาสารคาม</option>
        <%
            }
            else
            {
        %>
                    <option value="มหาสารคาม">มหาสารคาม</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("มุกดาหาร")  )
            {
        %>
                    <option value="มุกดาหาร" selected="selected">มุกดาหาร</option>
        <%
            }
            else
            {
        %>
                    <option value="มุกดาหาร">มุกดาหาร</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("แม่ฮ่องสอน")  )
            {
        %>
                    <option value="แม่ฮ่องสอน" selected="selected">แม่ฮ่องสอน</option>
        <%
            }
            else
            {
        %>
                    <option value="แม่ฮ่องสอน">แม่ฮ่องสอน</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ยโสธร")  )
            {
        %>
                    <option value="ยโสธร" selected="selected">ยโสธร</option>
        <%
            }
            else
            {
        %>
                    <option value="ยโสธร">ยโสธร</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ยะลา")  )
            {
        %>
                    <option value="ยะลา" selected="selected">ยะลา</option>
        <%
            }
            else
            {
        %>
                    <option value="ยะลา">ยะลา</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ร้อยเอ็ด")  )
            {
        %>
                    <option value="ร้อยเอ็ด" selected="selected">ร้อยเอ็ด</option>
        <%
            }
            else
            {
        %>
                    <option value="ร้อยเอ็ด">ร้อยเอ็ด</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ระนอง")  )
            {
        %>
                    <option value="ระนอง" selected="selected">ระนอง</option>
        <%
            }
            else
            {
        %>
                    <option value="ระนอง">ระนอง</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ระยอง")  )
            {
        %>
                    <option value="ระยอง" selected="selected">ระยอง</option>
        <%
            }
            else
            {
        %>
                    <option value="ระยอง">ระยอง</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ราชบุรี")  )
            {
        %>
                    <option value="ราชบุรี" selected="selected">ราชบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="ราชบุรี">ราชบุรี</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ลพบุรี")  )
            {
        %>
                    <option value="ลพบุรี" selected="selected">ลพบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="ลพบุรี">ลพบุรี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ลำปาง")  )
            {
        %>
                    <option value="ลำปาง" selected="selected">ลำปาง</option>
        <%
            }
            else
            {
        %>
                    <option value="ลำปาง">ลำปาง</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ลำพูน")  )
            {
        %>
                    <option value="ลำพูน" selected="selected">ลำพูน</option>
        <%
            }
            else
            {
        %>
                    <option value="ลำพูน">ลำพูน</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("เลย")  )
            {
        %>
                    <option value="เลย" selected="selected">เลย</option>
        <%
            }
            else
            {
        %>
                    <option value="เลย">เลย</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("ศรีสะเกษ")  )
            {
        %>
                    <option value="ศรีสะเกษ" selected="selected">ศรีสะเกษ</option>
        <%
            }
            else
            {
        %>
                    <option value="ศรีสะเกษ">ศรีสะเกษ</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สกลนคร")  )
            {
        %>
                    <option value="สกลนคร" selected="selected">สกลนคร</option>
        <%
            }
            else
            {
        %>
                    <option value="สกลนคร">สกลนคร</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สงขลา")  )
            {
        %>
                    <option value="สงขลา" selected="selected">สงขลา</option>
        <%
            }
            else
            {
        %>
                    <option value="สงขลา">สงขลา</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สตูล")  )
            {
        %>
                    <option value="สตูล" selected="selected">สตูล</option>
        <%
            }
            else
            {
        %>
                    <option value="สตูล">สตูล</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สมุทรปราการ")  )
            {
        %>
                    <option value="สมุทรปราการ" selected="selected">สมุทรปราการ</option>
        <%
            }
            else
            {
        %>
                    <option value="สมุทรปราการ">สมุทรปราการ</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สมุทรสงคราม")  )
            {
        %>
                    <option value="สมุทรสงคราม" selected="selected">สมุทรสงคราม</option>
        <%
            }
            else
            {
        %>
                    <option value="สมุทรสงคราม">สมุทรสงคราม</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สมุทรสาคร")  )
            {
        %>
                    <option value="สมุทรสาคร" selected="selected">สมุทรสาคร</option>
        <%
            }
            else
            {
        %>
                    <option value="สมุทรสาคร">สมุทรสาคร</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สระแก้ว")  )
            {
        %>
                    <option value="สระแก้ว" selected="selected">สระแก้ว</option>
        <%
            }
            else
            {
        %>
                    <option value="สระแก้ว">สระแก้ว</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สระบุรี")  )
            {
        %>
                    <option value="สระบุรี" selected="selected">สระบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="สระบุรี">สระบุรี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สิงห์บุรี")  )
            {
        %>
                    <option value="สิงห์บุรี" selected="selected">สิงห์บุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="สิงห์บุรี">สิงห์บุรี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สุโขทัย")  )
            {
        %>
                    <option value="สุโขทัย" selected="selected">สุโขทัย</option>
        <%
            }
            else
            {
        %>
                    <option value="สุโขทัย">สุโขทัย</option>
        <%

            }
        %>

<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สุพรรณบุรี")  )
            {
        %>
                    <option value="สุพรรณบุรี" selected="selected">สุพรรณบุรี</option>
        <%
            }
            else
            {
        %>
                    <option value="สุพรรณบุรี">สุพรรณบุรี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สุราษฎร์ธานี")  )
            {
        %>
                    <option value="สุราษฎร์ธานี" selected="selected">สุราษฎร์ธานี</option>
        <%
            }
            else
            {
        %>
                    <option value="สุราษฎร์ธานี">สุราษฎร์ธานี</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("สุรินทร์")  )
            {
        %>
                    <option value="สุรินทร์" selected="selected">สุรินทร์</option>
        <%
            }
            else
            {
        %>
                    <option value="สุรินทร์">สุรินทร์</option>
        <%

            }
        %>
  <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("หนองคาย")  )
            {
        %>
                    <option value="หนองคาย" selected="selected">หนองคาย</option>
        <%
            }
            else
            {
        %>
                    <option value="หนองคาย">หนองคาย</option>
        <%

            }
        %>
              
  <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("หนองบัวลำภู")  )
            {
        %>
                    <option value="หนองบัวลำภู" selected="selected">หนองบัวลำภู</option>
        <%
            }
            else
            {
        %>
                    <option value="หนองบัวลำภู">หนองบัวลำภู</option>
        <%

            }
        %>
  <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("อ่างทอง")  )
            {
        %>
                    <option value="อ่างทอง" selected="selected">อ่างทอง</option>
        <%
            }
            else
            {
        %>
                    <option value="อ่างทอง">อ่างทอง</option>
        <%

            }
        %>
<!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("อำนาจเจริญ")  )
            {
        %>
                    <option value="อำนาจเจริญ" selected="selected">อำนาจเจริญ</option>
        <%
            }
            else
            {
        %>
                    <option value="อำนาจเจริญ">อำนาจเจริญ</option>
        <%

            }
        %>

        <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("อุดรธานี")  )
            {
        %>
                    <option value="อุดรธานี" selected="selected">อุดรธานี</option>
        <%
            }
            else
            {
        %>
                    <option value="อุดรธานี">อุดรธานี</option>
        <%

            }
        %>

           <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("อุตรดิตถ์")  )
            {
        %>
                    <option value="อุตรดิตถ์" selected="selected">อุตรดิตถ์</option>
        <%
            }
            else
            {
        %>
                    <option value="อุตรดิตถ์">อุตรดิตถ์</option>
        <%

            }
        %>
   <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("อุทัยธานี")  )
            {
        %>
                    <option value="อุทัยธานี" selected="selected">อุทัยธานี</option>
        <%
            }
            else
            {
        %>
                    <option value="อุทัยธานี">อุทัยธานี</option>
        <%

            }
        %>

           <!-- ----------------------------------------------------------------------------------- -->

        <%
            if( rs.getString("province").equals("อุบลราชธานี")  )
            {
        %>
                    <option value="อุบลราชธานี" selected="selected">อุบลราชธานี</option>
        <%
            }
            else
            {
        %>
                    <option value="อุบลราชธานี">อุบลราชธานี</option>
        <%

            }
        %>


      </select>
      </div>
</div>

</div>
</div>


<!-----------------------------------กล่องข้อความ------------------------------------------------>


           <center>
  <div class="col-auto">
      <button type="submit" class="btn btn-primary">ยืนยันการแก้ไข</button>
    &nbsp;
    &nbsp;
    &nbsp;
          <a href="register_area01.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-secondary">ยกเลิก</button></a>  
    </div>
  </center>


<!-----------------------------------ปุ่ม------------------------------------------>
  
    
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
