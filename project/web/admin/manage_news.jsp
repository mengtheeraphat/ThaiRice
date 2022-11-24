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

   <title> จัดข่าวประชาสัมพันธ์ </title>
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

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">จัดการข่าวประชาสัมพันธ์</h2>
    <br>
  </div>
</div>
</center>

<!------------------------------------------------กล่องข้อตวาม----------------------------------------------------------------->


  <form action="manage_news_process.jsp" method="post" enctype="multipart/form-data">
<center>

    <div class="container" style="margin-left: 25% ;">




  <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">วันที่ประกาศ</label>
        <div class="col-sm-4">
          <input type="date" class="form-control" id="news_date" name="news_date" required >
        </div>
      </div>


      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">หัวข้อข่าว</label>
        <div class="col-sm-4">
          <input type="text" name="news_topic" class="form-control" id="news_topic"   placeholder="หัวข้อข่าว" required>
        </div>
      </div>

      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">แหล่งที่มา</label>
        <div class="col-sm-4">
          <input type="text" name="news_source" class="form-control" id="news_source"   placeholder="แหล่งที่มา" required>
        </div>
      </div>

      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">URL</label>
        <div class="col-sm-4">
          <input type="text" name="news_url" class="form-control" id="news_url"   placeholder="URL" required>
        </div>
      </div>


      <div class="form-group row">
        <label for="colFormLabel" class="col-sm-3 col-form-label">Upload File</label>
        <div class="col-sm-2">
          <input type="file" id="news_id" name="news_id" />
        </div>
      </div>


  


  </div>
 
</center>
<!-----------------------------------------------กล้องข้อมความ---------------------------------------------------------------------->
  
<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

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



  <%
    
        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
         Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
    ResultSet rs = stmt.executeQuery("SELECT news_id,news_topic,news_source,DATE_FORMAT(news_date, '%d-%m-%Y') as news_date1,news_url,news_pdf FROM news order by news_date desc "); 
         
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
      <h3 id="scrollspyHeading1">รายการข่าวประชาสัมพันธ์</h3>
    </div>
  </div>


<div class="container" >
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
             <form id="main">
             <table class="table table-bordered" style="width: 110%;"  >
              <thead>
                <tr>
                  <th scope="col" class="text-center"  style="width: 5%;"  >ลำดับ</th>
                  <th scope="col" class="text-center" style="width: 8%;"  > วันที่ประกาศ</th>
                  <th scope="col" class="text-center" style="width: 20%;" >หัวข้อข่าว </th>
                  <th scope="col" class="text-center" style="width: 18%;"  >แหล่งที่มา</th>
                  
                  <th scope="col" class="text-center" style="width: 25%;" >URL</th>
                  <th scope="col" class="text-center" style="width: 16%;" >การดำเนินงาน</th>                          
                </tr>
              </thead>
       
    </tr>
<%
        // Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        // //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        // Statement stmt = con.createStatement();  
        // ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties"); 
        
        int counter = 1;
        while( rs.next() )
        {  
%>  



<%


 String news_date = rs.getString("news_date1");
    
        String t = "-";
        try 
        {
           t = news_date;
           if(t.equals("null") )
           {
               t = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t = "-";
        }


%> 
    <tr>
      <td><div align="center"><%=counter %></div></td>
      <td><div align="center"><%=t %></div></td>   
        <td><div align="center"><%=rs.getString("news_topic") %></div></td>
        <td><div align="center"><%=rs.getString("news_source") %></div></td>
        <td><div align="center"><%=rs.getString("news_url") %></div></td>
        

        <td align="center" >
          <a href="<%=rs.getString("news_pdf") %>"><button type="button" class="btn btn-primary">ดาวน์โหลด</button></a>
          <a href="manage_news_update.jsp?q=<%=rs.getString("news_id") %>"><button type="button" class="btn btn-primary">แก้ไข</button></a>
          <a  ><button id="delete_rice" type="button" class="btn btn-primary" onclick='check_solution(<%=rs.getString("news_id") %>); return false;'>ลบ</button></a>
        </td>
       
         
    </tr>

    <%       
counter++;


%>  

  </form>

  <script>
function check_solution(id)
{   //console.log(id);
    // alert(id);
  if ( confirm('คุณต้องการลบข่าวประชาสัมพันธ์นี้ใช่หรือไม่ ?') )

  { 
    // console.log(id);
       document.getElementById("main").action  = "manage_news_delete.jsp?q="+id;
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