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
        <a class="nav-link" href="manage_user.jsp">จัดการทะเบียนผู้ใช้งาน</a>
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



<!--<form id='manage_price' name='manage_price' action='manage_price_insert.jsp' method="get" >
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
      <input  type="submit" value="Submit" >
    <button type="submit" value="Submit" class="btn btn-primary">เพิ่ม</button>
    
<button TYPE="RESET" value="Reset" class="btn btn-secondary">ยกเลิก</button>
          <button type="submit" class="btn btn-primary">ลบ</button>
      
          <button type="submit" class="btn btn-primary">แก้ไข</button>
    </div>
          



  </center>
      
      
      
   </form>   -->



<form  id='manage_price' name='manage_price' action='manage_price_insert.jsp' method="get" >

<div class="container" style="margin-left: 30% ;">
  
    
    
    <div class="container">
    <div class="mb-4 row">
        
      <label for="staticEmail" class="col-sm-4 col-form-label">ชื่อพันธุ์ข้าว</label>
      <div class="col-sm-4">
   <select class="form-select mt-2" id="rice_varieties_id" name="rice_varieties_id" onchange="func_change()"  >
        <option value="" selected>ชื่อพันธุ์ข้าว</option>
        
        
        <%
            Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
            
            
        ResultSet r = s.executeQuery("SELECT * FROM rice_varieties" ); 
        while( r.next() )
        {
%>
<option value="<%=r.getString("rice_varieties_id") %>" ><%=r.getString("rice_varieties_name") %></option>
<%
    }


c.close();


      %>  
      </select>
      
      
      
      </div>
    </div>
    </div>

    <div class="container">
    <div class="mb-4 row">
      <label for="staticEmail" class="col-sm-4 col-form-label">ราคาเมล็ดพันธุ์ข้าว&nbsp;-&nbsp;ชั้นพันธุ์ขยาย&nbsp;(บาท/กิโลกรัม)</label>
      <div class="col-sm-4">
        <input type="number" class="form-control" id="registered_seed" name="registered_seed" required >
      </div>
    </div>
    </div>
    
      <div class="container">
    <div class="mb-4 row">
      <label for="staticEmail" class="col-sm-4 col-form-label">ราคาเมล็ดพันธุ์ข้าว&nbsp;-&nbsp;ชั้นพันธุ์จำหน่าย&nbsp;(บาท/กิโลกรัม)</label>
      <div class="col-sm-4">
        <input type="number" class="form-control" id="certified_seed" name="certified_seed" required  >
      </div>
    </div>
    </div>

    <div class="container">
      <div class="mb-4 row">
        <label for="staticEmail" class="col-sm-4 col-form-label">ราคาข้าวเปลือกต่ำสุด&nbsp;(บาท/ตัน)</label>
        <div class="col-sm-4">
          <input type="number" class="form-control" id="lowerbound_price" name="lowerbound_price" required >
        </div>
      </div>

    </div>
    
     <div class="container">
      <div class="mb-4 row">
        <label for="staticEmail" class="col-sm-4 col-form-label">ราคาข้าวเปลือกสูงสุด&nbsp;(บาท/ตัน)</label>
        <div class="col-sm-4">
          <input type="number" class="form-control" id="upperbound_price" name="upperbound_price" required >
        </div>
      </div>

    </div>
      
      
        <input type="hidden" class="rice_varieties_name" id="rice_varieties_name" name="rice_varieties_name" >
      
      <div class="container">
      <div class="mb-4 row">
        <label for="staticEmail" class="col-sm-4 col-form-label">วันที่ปรับปรุงล่าสุด</label>
        <div class="col-sm-4">
          <input type="date" class="form-control" id="last_update" name="last_update" required >
        </div>
      </div>

    </div>
    
</div>
      

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->


<!-- --------ปุ่ม---------- -->
  <center>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">เพิ่ม</button>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <button TYPE="RESET" value="Reset" class="btn btn-secondary">ยกเลิก</button>
    </div>
  </center>

</form>
  <br>
    <br>
      <br>
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

          Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT rice_varieties_id,rice_varieties_name,registered_seed,certified_seed,lowerbound_price,upperbound_price"
        + ",DATE_FORMAT(last_update, '%d-%m-%Y') as last_update1 FROM rice_varieties"); 
 
        
         
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
  <div>
    <h3 id="scrollspyHeading1">ข้อมูลราคาข้าว</h3>
    <h5 id="scrollspyHeading1">(ราคาอ้างอิงจาก กรมการข้าวและสมาคมโรงสีข้าว)</h5>
  </div>
</div>




<div class="container">
  <div class="row">
      <div class="  ftco-animate">
       <div class="staff">  
        <form id="main">
             <table class="table table-bordered" style="width: 110%;">
              <thead>
                <tr>
                    <th scope="col" class="text-center" >รหัสพันธุ์ข้าว</th>
                  <th scope="col" class="text-center" >ชื่อพันธุ์ข้าว</th>
                  <th scope="col" class="text-center" >ราคาเมล็ดพันธุ์ข้าว&nbsp;-&nbsp;ชั้นพันธุ์ขยาย<br>(บาท/กิโลกรัม)</th>
                  <th scope="col" class="text-center" >ราคาเมล็ดพันธุ์ข้าว&nbsp;-&nbsp;ชั้นพันธุ์จำหน่าย<br>(บาท/กิโลกรัม)</th>
                  <th scope="col" class="text-center" >ราคาข้าวเปลือกต่ำสุด<br>(บาท/ตัน)</th>  
                  <th scope="col" class="text-center" >ราคาข้าวเปลือกสูงสุด<br>(บาท/ตัน)</th> 
                  <th scope="col" class="text-center" >วันที่ปรับปรุงล่าสุด</th>
                  <th scope="col" class="text-center" >การดำเนินงาน</th>
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
    // Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
    //     //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
    //     Statement stmt = con.createStatement();  
    //     ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties"); 
 
        while( rs.next() )
        {  
%>  
    <tr>
              <td><div align="center"><%=rs.getString("rice_varieties_id") %></div></td>
        <td><div align="center"><%=rs.getString("rice_varieties_name") %></div></td>
        <td><div align="center"><%=rs.getString("registered_seed") %></div></td>
        <td><div align="center"><%=rs.getString("certified_seed") %></div></td>
        <td><div align="center"><%=rs.getString("lowerbound_price") %></div></td>
        <td><div align="center"><%=rs.getString("upperbound_price") %></div></td>
          <td><div align="center"><%=rs.getString("last_update1") %></div></td>


          <td align="center" >
            <a href="manage_price_update.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-primary">แก้ไข</button></a>

             <a  ><button id="delete_price" type="button" class="btn btn-primary" onclick='check_solution(<%=rs.getString("rice_varieties_id") %>); return false;'>ลบ</button></a>
        <!-- <a href="manage_price_delete.jsp?q=<%=rs.getString("rice_varieties_id") %>"><button type="button" class="btn btn-primary">ลบ</button></a> -->
      </td>
        
         
    </tr>
    
    </form>
    
    
    <script>
function check_solution(id)
{   //console.log(id);
    // alert(id);
  if ( confirm('คุณต้องการลบพันธุ์ข้าวนี้ใช่หรือไม่ ?') )

  { 
    // console.log(id);
       document.getElementById("main").action  = "manage_price_delete.jsp?q="+id;
      // document.getElementById("main").action  = "register_area_delete.jsp?rice_fields_id"
        document.getElementById("main").method  = "post";
        document.getElementById("main").submit();
       
  }
}
</script>

    
    
    
    
    
    
    
    
    

    

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

      <script>
          
          function  func_change()
          {  
             // alert('test');
                var rice_varieties_id = document.getElementById('rice_varieties_id').value ;               
//                var registered_seed = document.getElementById('registered_seed').value ;
//                var certified_seed = document.getElementById('certified_seed').value ;
//                var lowerbound_price = document.getElementById('lowerbound_price').value ;
//                var upperbound_price = document.getElementById('upperbound_price').value ;
                
                var xmlHttp = new XMLHttpRequest();
                xmlHttp.open("GET","manage_price_select.jsp?rice_varieties_id="+rice_varieties_id,false);   
                xmlHttp.send(null);    
                var str = xmlHttp.responseText+'';      
                // alert(str);
                
                  var n_str = str.split(",");

                     document.getElementById('registered_seed').value = n_str[0];
                     document.getElementById('certified_seed').value = n_str[1];
                     document.getElementById('lowerbound_price').value = n_str[2];
                     document.getElementById('upperbound_price').value = n_str[3];
                    document.getElementById('rice_varieties_name').value = n_str[4];
//               alert(registered_seed);
//               alert(certified_seed);
//               alert(lowerbound_price);
//               alert(upperbound_price);
//                

              

                
          }
      </script>      






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