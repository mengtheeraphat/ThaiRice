
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
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

   <title> ข่าวประชาสัมพันธ์ </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

         <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!--  <script src="js/moment.min.js"></script>-->
<!--  <script src="js/moment-with-locales.js"></script>-->
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>-->

    
    
    
    
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
<!--      <li class="nav-item">
        <a class="nav-link" href="register01.jsp">สมัครสมาชิก</a>
      </li>-->
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
      
        <li class="nav-item">
            
             <a class="nav-link" >
         <%
        out.print( session.getAttribute("ssUserID") );
    %>
    
    </a>
      </li>
          <li class="nav-item">
            <a class="nav-link" href="http://chiab5.ddns.net//logout_user_process.jsp">ลงชื่อออก</a>

        <!-- <a class="nav-link" href="http://localhost:8084/project//logout_user_process.jsp">ลงชื่อออก</a>
 -->      </li>
      
      
      
    </ul>
  </nav>
  <br>

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->




<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">ข่าวประชาสัมพันธ์</h2>
    <br>
  </div>
</div>
</center>
    
    
    
    
    
    
    
    
    
    
    
    
    
<!-- ---------------------------ตาราง--------------------------------- -->    










             

             <script>
          
 
 $(document).ready(function() 
    {
        $('#example').DataTable();
    } );
 
 
      </script>







<script type="text/javascript">

// เพิ่มส่วนนี้เข้าไปจะถือว่าเป็นการตั้งค่าให้ Datatable เป็น Default ใหม่เลย

$.extend(true, $.fn.dataTable.defaults, {
    "language": {
              "sProcessing": "กำลังดำเนินการ...",
              "sLengthMenu": "แสดง_MENU_ แถว",
              "sZeroRecords": "ไม่พบข้อมูล",
              "sInfo": "แสดง _START_ ถึง _END_ จาก _TOTAL_ แถว",
              "sInfoEmpty": "แสดง 0 ถึง 0 จาก 0 แถว",
              "sInfoFiltered": "(กรองข้อมูล _MAX_ ทุกแถว)",
              "sInfoPostFix": "",
              "sSearch": "ค้นหา:",
              "sUrl": "",
              "oPaginate": {
                            "sFirst": "เิริ่มต้น",
                            "sPrevious": "ก่อนหน้า",
                            "sNext": "ถัดไป",
                            "sLast": "สุดท้าย"
              }
     }
});

// เรียกใช้งาน Datatable function

$('.table').DataTable();

</script>








<%
    
        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
         Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
    ResultSet rs = stmt.executeQuery("SELECT news_id,news_topic,news_source,DATE_FORMAT(news_date, '%d-%m-%Y') as news_date1,news_url,news_pdf FROM news order by news_date desc  "); 
         
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
             <table id="example" class="table table-bordered"  >
              <thead>
                <tr>
                  <th scope="col" class="text-center"   >ลำดับ</th>
                  <th scope="col" class="text-center"  > วันที่ประกาศ</th>
                  <th scope="col" class="text-center" >หัวข้อข่าว</th>
                  <th scope="col" class="text-center"   >แหล่งที่มา</th>
                  
                  <th scope="col" class="text-center"  >ข้อมูลเพิ่มเติม</th>
                  <th scope="col" class="text-center"  >การดำเนินงาน</th>                          
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
      
        <td  align="center"> 
            <a href="<%=rs.getString("news_url") %>"><button type="button" class="btn btn-primary">ข้อมูลเพิ่มเติม</button></a>
        </td>
        

        <td align="center" >
          <a href="<%=rs.getString("news_pdf") %>"><button type="button" class="btn btn-primary">ดาวน์โหลด</button></a>

        </td>
<%       
counter++;


%>   
         
    </tr>

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