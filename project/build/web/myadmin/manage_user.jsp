<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>จัดการทะเบียนผู้ใช้</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">


    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
     rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

     <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
</head>
<body>
    
<!-- ---------------------------Head--------------------------------- -->

<nav id="navbar-example2" class="navbar navbar-light" style="background-color: #f7ce1a;">
    <a class="navbar-brand" href="#">Thai Rice</a>
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8084/project//admin/manage_user.jsp">จัดการทะเบียนผู้ใช้งาน</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8084/project//admin/manage_rice01.jsp">จัดการพันธุ์ข้าว</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8084/project//admin/manage_price01.jsp">กำหนดราคาข้าว</a>
      </li>
        <li class="nav-item">
            
             <a class="nav-link" >
         <%
        out.print( session.getAttribute("sUserID") );
    %>
    
    </a>
      </li>
      
  
      
     <!-- <li class="nav-item dropdown">
          
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="">ลงชื่อเข้าสู่ระบบ</a>
        
        <div class="dropdown-menu">
          <a class="dropdown-item" href="http://localhost:8084/project//admin/login_admin.jsp">เข้าสู่ระบบ</a>
          <a class="dropdown-item" href="http://localhost:8084/project//admin/logout_admin_process.jsp">ออกจากระบบ</a>
        </div>
      </li> -->
       <li class="nav-item">
        <a class="nav-link" href="http://localhost:8084/project//admin/logout_admin_process.jsp">ลงชื่อออก</a>
      </li>
    </ul>
  </nav>
  <br>
<!--<nav class="navbar navbar-light" style="background-color: #fcd62c;">
  <div class="w3-top">
    <div class="w3-bar w3-yellow w3-card w3-left-align w3-large">
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Thai Rice</a>
  <a href="manage_user.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">จัดการทะเบียนผู้ใช้</a>
  <a href="http://localhost:8084/project//admin/manage_rice01.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">จัดการพันธุ์ข้าว</a>
  <a href="http://localhost:8084/project//admin/manage_price01.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">กำหนดราคาข้าว</a>
  
</div>
</div>
  </nav>-->
  <br>
  <br>
<!-- ---------------------------Head--------------------------------- -->

<!-- ---------------------------Head Name--------------------------------- -->
    <div class="top">
     <center><h3>จัดการทะเบียนผู้ใช้</h3></center>
    </div>
    <br>
<!-- ---------------------------Head Name--------------------------------- -->    


<!-- ---------------------------กรอกข้อมูล--------------------------------- -->    


<div class="container">
  <center>
    <div class="row" style="margin-left: 35% ;">
        <div class="  ftco-animate">
            <div class="staff">
<form id='manage_user' name='manage_user' action='insert_user.jsp' method="get" class="row gx-3 gy-2 align-items-center">
  
<!--  ------------------------------insert-----------------------------------------
-->  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">ชื่อ-นามสกุลผู้ใช้</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="a1" name="a1" placeholder=""/>
    </div>
  </div>




<!--
  

-->  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">ชื่อผู้ใช้</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="a2" name="a4" placeholder="" required />
    </div>
  </div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">เบอร์โทรศัพท์</label>
    <div class="col-sm-3">
      <input type="number" class="form-control" id="a3" name="a3" placeholder="" required />
    </div>
  </div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">รหัสผ่าน</label>
    <div class="col-sm-3">
      <input type="password" class="form-control" id="a4" name="a2" placeholder="" required/>
    </div>
  </div>
  
<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">วัน-เดือน-ปีที่เริ่มใช้งาน</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="a5" name="a5" placeholder=""/>
    </div>
  </div>



   <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
    <div class="col-sm-3">
         <button type="submit" value="Submit" class="btn btn-primary">เพิ่ม</button>
    </div>
  </div>
<!--  <input type="text" name="a1"  /> <br>
<input type="text" name="a2"  /><br>
<input type="text" name="a3"   /><br>
<input type="text" name="a4"  /><br>
<input type="text" name="a5"  /><br>-->
  
  
  
<br>


<!--    <div class="row">
        <center>
     <div class="col-sm-3" style="margin-left: 130px;">

      <button type="submit" value="Submit" class="btn btn-primary">เพิ่ม</button>

      </div>
      <br>
  
        </center>
    </div>-->
    

</form>
            </div>
        </div>
    </div>
</center>
</div>
<br>
<!-- ---------------------------insert--------------------------------- -->    

<!-- ---------------------------กรอกข้อมูล--------------------------------- -->    

<!-- ---------------------------ตาราง--------------------------------- -->    
<!--<div class="container">
    <div class="row">
        <div class="  ftco-animate">
            <div class="staff">
<table class="table">
    <thead>
      <tr>
        <th scope="col">ชื่อ-นามสกุล</th>
        <th scope="col">นามสกุล</th>
        <th scope="col">เบอร์โทร</th>
        <th scope="col">รหัสแปลงเพาะปลูก</th>
        <th scope="col">รูปแบบการจัดการ</th>
       
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>อนันทริพย์ บัวบาง</td>
        <td>น้ำ</td>
        <td>0856251555</td>
        <td>22336</td>
        <td >
      
            <button type="button" class="btn btn-outline-dark">แก้ไข</button>
            <button type="button" class="btn btn-outline-dark">ลบ</button>
        </td>
      </tr>
      <tr>
        <td>มนตรี สุ่มทรัพย์</td>
        <td>ต้น</td>
        <td>0965214856</td>
        <td>11228</td>
        <td >
   
          <button type="button" class="btn btn-outline-dark">แก้ไข</button>
          <button type="button" class="btn btn-outline-dark">ลบ</button>
        </td>
      </tr>
    
      <tr>
        <div>
        <td>ดวงประทุม คุ้มเพชร</td>
        <td>พลอย</td>
        <td>0658554123</td>
        <td>55596</td>
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
                  <th scope="col">รหัสผู้ดูแลระบบ</th>
                  <th scope="col">ชื่อ-นามสกุลเจ้าของบัญชีผู้ใช้</th>
                  <th scope="col">ชื่อผู้ใช้</th>
                  <th scope="col">รหัสผ่าน</th>
                  <th scope="col">เบอร์โทร</th>
                  <th scope="col">วัน-เดือน-ปีที่เริ่มใช้งาน</th>
                  <th scope="col">แก้ไข</th>
                  <th scope="col">ลบ</th>
                </tr>
              </thead>
          





<!--     <table width="910" border="1" id='showdata' name='showdata' action='showdata.jsp' method="get" >
    <tr>
       <th width="100"><div align="center"> รหัสผู้ดูแลระบบ</th>    
       <th width="210"><div align="center"> ชื่อ-นามสกุลเจ้าของบัญชีผู้ใช้</th>
              <th width="100"><div align="center"> ชื่อผู้ใช้</th>
       <th width="100"><div align="center"> รหัสผ่าน</th>
       <th width="100"><div align="center"> เบอร์โทร</th>
       <th width="100"><div align="center"> วัน-เดือน-ปีที่เริ่มใช้งาน</th> 
            <th width="100"><div align="center"> แก้ไข</th> 
            <th width="100"><div align="center"> ลบ</th> -->
            
            
            
            
            
            
            
 <!-- --------------------------- 
 <a href="manage_user_delete.jsp?q=15">     --------------------------DELETE-----------------------  </a> 
            --------------------------------- -->    
       
    </tr>
<%
        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT * FROM admin"); 
 
        while( rs.next() )
        {  
%>  
    <tr>
        <td><div align="center"><%=rs.getString("adm_id") %></div></td>
        <td><div align="center"><%=rs.getString("adm_name") %></div></td>
      <td><div align="center"><%=rs.getString("adm_login_name") %></div></td>    
        <td><div align="center"><%=rs.getString("adm_passwd") %></div></td>
        <td><div align="center"><%=rs.getString("adm_phone") %></div></td>
        <td><div align="center"><%=rs.getString("adm_use_start") %></div></td>
        <td><a href="manage_user_delete.jsp?q=<%=rs.getString("adm_id") %>"><button type="button" class="btn btn-outline-dark">ลบ</button></a></td>
        <td><a href="update_page.jsp?q=<%=rs.getString("adm_id") %>"><button type="button" class="btn btn-outline-dark">แก้ไข</button></a></td>
         
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
    
</body>
</html>