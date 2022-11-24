<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>จัดการแจ้งเตือน</title>
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
        <a class="nav-link" href="manage_file.jsp">จัดการแจ้งเตือน</a>
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
    <h2 id="scrollspyHeading1">จัดการแจ้งเตือน</h2>
    <br>
  </div>
</div>
</center>
<!-- ---------------------------Head Name--------------------------------- -->    



<!-- ---------------------------กรอกข้อมูล--------------------------------- -->    



 <form action="manage_file_process.jsp" method="post" enctype="multipart/form-data">
<input type="file" id="lnk_profile" name="lnk_profile" />
<input type="submit">
</form>







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