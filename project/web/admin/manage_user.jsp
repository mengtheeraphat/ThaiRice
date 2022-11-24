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



<script>  
function verifyPassword() 
{  
  var pw = document.getElementById("a4").value;  
  //check empty password field  
  if(pw === "") {  
     document.getElementById("message").innerHTML = "กรุณาใส่รหัสผ่าน!";  
     return false;  
  }  
  
  var pw2 = document.getElementById("pswd2").value;  
  if (pw!==pw2)
  {
     document.getElementById("message").innerHTML = "รหัสผ่านไม่ตรงกัน";  
     return false;      
  }
   
   
// //minimum password length validation  
//  if(pw.length < 8) {  
//     document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";  
//     return false;  
//  }  
//  
////maximum length of password validation  
//  if(pw.length > 15) {  
//     document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";  
//     return false;  
//  } else {  
//     alert("Password is correct");  
//  }  
}  
</script>  









<body>






<!-- ---------------------------Head--------------------------------- -->

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
        <a class="nav-link" href="http://chiab5.ddns.net/admin/manage_price01.jsp">กำหนดราคาข้าว</a>
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

        <!-- <a class="nav-link" href="http://chiab5.ddns.net//logout_user_process.jsp">ลงชื่อออก</a> -->
      </li>
    </ul>
  </nav>
  <br>

  
<!-- ---------------------------Head--------------------------------- -->

<!-- ---------------------------Head Name--------------------------------- -->
<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">จัดการทะเบียนผู้ใช้</h2>
    <br>
  </div>
</div>
</center>
<!-- ---------------------------Head Name--------------------------------- -->    



<!-- ---------------------------กรอกข้อมูล--------------------------------- -->    






<div class="container" style="margin-left: 35% ;">
  <form class="row gx-3 gy-2 align-items-center"  id='manage_user' name='manage_user' action='insert_user.jsp' method="get"  >
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">ชื่อ-นามสกุล</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="a1" name="a1"  required>
      </div>
    </div>
  
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">ชื่อผู้ใช้</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="a2" name="a2"  required>
      </div>
    </div>
  
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">เบอร์โทรศัพท์</label>
      <div class="col-sm-3">
        <input type="tel" class="form-control" id="a3" name="a3" required>
      </div>
    </div>
  
      
          <script> 
    var check = function() {
  if (document.getElementById('a4').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'รหัสผ่านถูกต้อง';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'รหัสผ่านไม่ถูกต้อง';
  }
}

</script>  
      
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">รหัสผ่าน</label>
      <div class="col-sm-3">
        <input type="password" class="form-control" id="a4" name="a4" placeholder="" value = "" onkeyup='check();'   required>
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">ยืนยันรหัสผ่าน</label>
      <div class="col-sm-3">
        <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="" value = ""  onkeyup='check();' required >
            <span id='message'></span>
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">วัน/เดือน/ปี ที่เริ่มใช้งาน</label>
      <div class="col-sm-3">
        <input type="date" class="form-control" id="a5" name="a5" placeholder="" required >
      </div>
    </div>


  </div>



<!-- ---------------------------จัดการทะเบียนผู้ใช้--------------------------------- -->

    <!--ปุ่ม -->

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
<!-- ---------------------------insert--------------------------------- -->    

<!-- ---------------------------กรอกข้อมูล--------------------------------- -->    

<!-- ---------------------------ตาราง--------------------------------- -->    


<%
    
        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
        
          Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("SELECT adm_id,adm_name,adm_login_name,adm_passwd,adm_phone,DATE_FORMAT(adm_use_start, '%d-%m-%Y') as adm_use_start1 FROM admin"); 
 
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
    <h3 id="scrollspyHeading1">ทะเบียนผู้ใช้</h3>
  </div>
</div>
<div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
            <form id="main">
            <table id="example" class="table table-bordered">
              <thead>
                <tr>
                      <th scope="col" class="text-center" >รหัสผู้ดูแลระบบ</th>
                  <th scope="col" class="text-center" >ชื่อ-นามสกุลเจ้าของบัญชีผู้ใช้</th>
                  <th scope="col" class="text-center" >ชื่อผู้ใช้</th>
                  <th scope="col" class="text-center" >รหัสผ่าน</th>
                  <th scope="col" class="text-center" >เบอร์โทร</th>
                  <th scope="col" class="text-center" >วัน-เดือน-ปีที่เริ่มใช้งาน</th>
                  <th scope="col" class="text-center" >การดำเนินงาน</th>
                  
                </tr>
              </thead>
          
              <tbody>
<%
           
        while( rs.next() )
        {  
%>  

    <!-- </tr> -->


    <tr>
        <td><div align="center"><%=rs.getString("adm_id") %></div></td>
        <td><div align="center"><%=rs.getString("adm_name") %></div></td>
      <td><div align="center"><%=rs.getString("adm_login_name") %></div></td>    
        <td><div align="center"><%=rs.getString("adm_passwd") %></div></td>
        <td><div align="center"><%=rs.getString("adm_phone") %></div></td>
        <td><div align="center"><%=rs.getString("adm_use_start1") %></div></td>

        <td align="center" >

          <a href="update_page.jsp?q=<%=rs.getString("adm_id") %>"><button  type="button" class="btn btn-primary">แก้ไข</button></a>


          <a  ><button id="delete_admin" type="button" class="btn btn-primary" onclick='check_solution(<%=rs.getString("adm_id") %>); return false;'>ลบ</button></a>

          <!--  <a  href="manage_user_delete.jsp?q=<%=rs.getString("adm_id") %>"><button  type="button" class="btn btn-primary">ลบ</button></a> -->
         <!--  <a  href="manage_user_delete.jsp?q=<%=rs.getString("adm_id") %>"><button  type="button" class="btn btn-primary">ลบ</button></a> -->
        </td>
         
    </tr>


</tbody>



<!--    </table> -->
              </form>
        </div>
    </div>
  </div>
</div>




<script>
function check_solution(id)
{   //console.log(id);
    // alert(id);
  if ( confirm('คุณต้องการลบผู้ใช้ใช่หรือไม่ ?') )

  { 
    // console.log(id);
       document.getElementById("main").action  = "manage_user_delete.jsp?q="+id;
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
 
<!-- ---------------------------ตาราง--------------------------------- -->    
    
</body>
</html>