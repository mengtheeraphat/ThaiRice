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
 
   





<script>  
//$(document).ready(function () {
//    var daysToAdd = 120;
//    $("#plant_field_regis_date").datepicker({
//        onSelect: function (selected) {
//            var dtMax = new Date(selected);
//            console.log("daysToAdd"+daysToAdd);
//            console.log("dtMax.getDate() ::"+dtMax.getDate());
//            dtMax.setDate(dtMax.getDate()); 
//             console.log("dtMax.getDate()-1 ::"+dtMax.getDate());
//            var dd = dtMax.getDate();
//            var mm = dtMax.getMonth() + 1;
//            var y = dtMax.getFullYear();
//            var dtFormatted = dd + '/'+ mm + '/'+ y;
//             console.log("dtFormatted:1: "+dtFormatted);
//            $("#fertilizer1_date").datepicker("option", "minDate", dtFormatted);
//        }
//    });
//    
//    $("#fertilizer1_date").datepicker({
//        onSelect: function (selected) {
//            var dtMax = new Date(selected);
//            console.log("daysToAdd"+daysToAdd);
//            console.log("dtMax.getDate()-2 ::"+dtMax.getDate());
//            dtMax.setDate(dtMax.getDate()-daysToAdd); 
//             console.log("dtMax.getDate()-3 ::"+dtMax.getDate())
//            var dd = dtMax.getDate();
//            var mm = dtMax.getMonth() + 1;
//            var y = dtMax.getFullYear();
//            var dtFormatted = dd + '/'+ mm + '/'+ y;
//                console.log("dtFormatted:2: "+dtFormatted);
//            $("#plant_field_regis_date").datepicker("option", "maxDate", dtFormatted)
//        }
//    });
//});










$(document).ready(function () {
    var daysToAdd = <%=rice_fertilizer1%> ;
     console.log("LINE 178 daysToAdd :: "+daysToAdd );
    $("#txtFromDate").datepicker({
        onSelect: function (selected) {
            var dtMax = new Date(selected);
            dtMax.setDate(dtMax.getDate() + daysToAdd); 
            var dd = dtMax.getDate();
            var mm = dtMax.getMonth() + 1;
            var y = dtMax.getFullYear();
            
             var dtFormatted = y + '/'+ mm + '/'+ dd;
   //var dtFormatted = mm + '/'+ dd + '/'+ y;
            console.log("dtFormatted :: "+dtFormatted );
          //  $("#txtToDate").datepicker("option", "minDate", dtFormatted);
             $("#txtToDate").val(dtFormatted);
        }
    });
    
//    $("#txtToDate").datepicker({
//        onSelect: function (selected) {
//            var dtMax = new Date(selected);
//            dtMax.setDate(dtMax.getDate() - daysToAdd); 
//            var dd = dtMax.getDate();
//            var mm = dtMax.getMonth() + 1;
//            var y = dtMax.getFullYear();
//            var dtFormatted = mm + '/'+ dd + '/'+ y;
//            $("#txtFromDate").datepicker("option", "maxDate", dtFormatted)
//        }
//    });
});

$(document).ready(function () {
    var daysToAdd2 = <%=rice_fertilizer2%>;
    console.log("LINE 210 daysToAdd2 :: "+daysToAdd2 );
    $("#txtFromDate2").datepicker({
        onSelect: function (selected) {
            var dtMax = new Date(selected);
            dtMax.setDate(dtMax.getDate() + daysToAdd2); 
            var dd = dtMax.getDate();
            var mm = dtMax.getMonth() + 1;
            var y = dtMax.getFullYear();
            
             var dtFormatted2 = y + '/'+ mm + '/'+ dd;
   //var dtFormatted = mm + '/'+ dd + '/'+ y;
            console.log("dtFormatted2 :: "+dtFormatted2 );
          //  $("#txtToDate").datepicker("option", "minDate", dtFormatted);
             $("#txtToDate2").val(dtFormatted2);

        }
    });
    

});



$(document).ready(function () {
    var daysToAdd3 = <%=rice_havest%>;
    console.log("LINE 235 daysToAdd3 :: "+daysToAdd3 );
    $("#txtFromDate3").datepicker({
        onSelect: function (selected) {
            var dtMax = new Date(selected);
            dtMax.setDate(dtMax.getDate() + daysToAdd3); 
            var dd = dtMax.getDate();
            var mm = dtMax.getMonth() + 1;
            var y = dtMax.getFullYear();
            
             var dtFormatted3 = y + '/'+ mm + '/'+ dd;
   //var dtFormatted = mm + '/'+ dd + '/'+ y;
            console.log("dtFormatted3 :: "+dtFormatted3 );
          //  $("#txtToDate").datepicker("option", "minDate", dtFormatted);
             $("#txtToDate3").val(dtFormatted3);

        }
    });
    

});






</script>  

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

  <input type="hidden" name="rice_fields_id" value="<%=rs.getString("rice_fields_id") %>">
<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->
<form id='save_area' name='save_area' action='save_area_insert.jsp' method="get">
<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">บันทึกการเพาะปลูก</h2>
  </div>
</div>
</center>
<br>











<div class="col">
<div class="row" style="margin-left: 30% ;">
    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">รหัสแปลงเพาะปลูก</label>
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
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก &nbsp;(ไร่)</label>
    <div class="col-sm-4">
     <a ><%=rs.getString("rice_field_size") %> </a>
      </div>
</div>

<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ลักษณะดินในแปลงเพาะปลูก</label>
    <div class="col-sm-4">
     <a ><%=rs.getString("rice_field_soil_type") %> </a>
    </div>  
</div>   
    
    
    
    
    
  
 <input type="hidden" name="rice_fields_id" value='<%=request.getParameter("q") %>'   />     
    
    
    
    
    
    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-3 col-form-label">ชื่อพันธุ์ข้าว</label>
        <div class="col-sm-4">
          <select class="form-select mt-2" id="rice_varieties_id" name="rice_varieties_id"  onchange="func_change_2()">

                  <option value="ทั้งหมด" selected>ทั้งหมด</option>
<%
        
     Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
    //Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();   
        ResultSet rs2 = s.executeQuery("SELECT * FROM rice_varieties" ); 
        while( rs2.next() )
        {
%>
<option value="<%=rs2.getString("rice_varieties_id") %>"><%=rs2.getString("rice_varieties_name") %></option>
<%
    }
c.close();


      %>  
            
          </select>
          </div>
</div>
    
<!--       <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ลักษณะดินที่เหมาะสม</label>
    <div class="col-sm-4">
        
      <input type="text" id="rice_varieties_properties" name="rice_varieties_properties">
    </div>  
</div>  -->
    

    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ลักษณะดินที่เหมาะสม</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="rice_varieties_soil_type" name="rice_varieties_soil_type" >
      </div>
</div>






    
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">วันที่เริ่มเพาะปลูก</label>
    <div class="col-sm-4">
       <input type="date" id="plant_field_regis_date" name="plant_field_regis_date"   onchange="func_change()"   >
      </div>
</div>
    

       <input type="hidden" id="fertilizer1_date" name="fertilizer1_date">
       <input type="hidden" id="fertilizer2_date" name="fertilizer2_date">
       <input type="hidden" id="harvest_date" name="harvest_date" >
        <input type="hidden" name="fertilizer1_status" id="fertilizer1_status" value="N">
        <input type="hidden" name="fertilizer2_status" id="fertilizer2_status" value="N">
        <input type="hidden" name="harvest_status" id="harvest_status" value="N">


</div>
</div>

    <br>

  <center>
    <div class="col-auto">
    <button type="submit" class="btn btn-primary">เริ่มเพาะปลูก</button>
    
    
     &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
              <a href="register_area01.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-secondary">ยกเลิก</button></a>
    </div>
    </center>
    <br>
    
    </form>



<!-- ---------------------------ตาราง--------------------------------- -->    


<!-- ---------------------------ตาราง--------------------------------- -->    

    <!-- 
    Essential Scripts
    =====================================-->
<script>
          
          function  func_change()
          {
                var rice_varieties_id = document.getElementById('rice_varieties_id').value ;
                var plant_field_regis_date = document.getElementById('plant_field_regis_date').value ;
                var xmlHttp = new XMLHttpRequest();
                xmlHttp.open("GET","cal_date.jsp?plant_field_regis_date="+plant_field_regis_date+"&&rice_varieties_id="+rice_varieties_id,false);    //yyyy-mm-dd 
                xmlHttp.send(null);    
                var str = xmlHttp.responseText+'';
//                alert(str+'');
                var n_str = str.split(",");
//                alert(n_str[0]+'');
//                alert(n_str[1]+'');
//                alert(n_str[2]+'');
                
                document.getElementById('fertilizer1_date').value = n_str[0];
                document.getElementById('fertilizer2_date').value = n_str[1];
                document.getElementById('harvest_date').value = n_str[2];
                
//                document.getElementById('rice_varieties_properties').value = n_str[3];
                
          }
      </script>
      
      
      
      <script>
          
          function  func_change_2()
          {
          // alert('test');
                var rice_varieties_id = document.getElementById('rice_varieties_id').value ;               
//                var registered_seed = document.getElementById('registered_seed').value ;
//                var certified_seed = document.getElementById('certified_seed').value ;
//                var lowerbound_price = document.getElementById('lowerbound_price').value ;
//                var upperbound_price = document.getElementById('upperbound_price').value ;
                
                var xmlHttp = new XMLHttpRequest();
                xmlHttp.open("GET","select_rice.jsp?rice_varieties_id="+rice_varieties_id,false);   
                xmlHttp.send(null);    
                var str = xmlHttp.responseText+'';      
                // alert(str);
                
                  var n_str = str.split(",");


                // document.getElementById('rice_varieties_soil_type').value;
                document.getElementById('rice_varieties_soil_type').value = n_str[0];
                 //document.getElementById('rice_varieties_properties').value = n_str[1];
                 //document.getElementById('registered_seed').value = n_str[1];
//               alert(registered_seed);
//               alert(certified_seed);
//               alert(lowerbound_price);
//               alert(upperbound_price);
//                

          }
      </script>
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