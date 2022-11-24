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


      <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

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
<!--          <li class="nav-item">
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
    <!-- <a class="nav-link" href="http://localhost:8084/project//logout_user_process.jsp">ลงชื่อออก</a> -->
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
      <input type="text" class="form-control" id="rice_fields_name" name="rice_fields_name" required>
      </div>
</div>

<div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก &nbsp; (ไร่)</label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="rice_field_size" name="rice_field_size" placeholder="กรุณาใส่จำนวนไร่" required>
    </div>

   
</div>

  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-3 col-form-label">ลักษณะดินในแปลงเพาะปลูก</label>
        <div class="col-sm-4">
          <select class="form-select mt-2" id="rice_field_soil_type" name="rice_field_soil_type" required>
            <option value="ดินร่วนกึ่งดินร่วนเหนียว">ลักษณะดิน</option>
            <option value="ดินร่วน">ดินร่วน</option>
            <option value="ดินเหนียว">ดินเหนียว</option>
            <option value="ดินร่วนกึ่งดินร่วนเหนียว">ดินร่วนกึ่งดินร่วนเหนียว</option>
          </select>
          </div>
</div>


  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-3 col-form-label">จังหวัดที่เพาะปลูก</label>
        <div class="col-sm-4">
          <select class="form-select mt-2" id="province" name="province" required>
            <option value="ปทุมธานี">ปทุมธานี</option>
            <option value="กรุงเทพมหานคร">กรุงเทพมหานคร</option>
            <option value="กระบี่">กระบี่</option>
            <option value="กาญจนบุรี">กาญจนบุรี</option>
            <option value="กาฬสินธุ์">กาฬสินธุ์</option>
            <option value="กำแพงเพชร">กำแพงเพชร</option>
            <option value="ขอนแก่น">ขอนแก่น</option>
            <option value="จันทบุรี">จันทบุรี</option>
            <option value="ฉะเชิงเทรา">ฉะเชิงเทรา</option>
            <option value="ชลบุรี">ชลบุรี</option>
            <option value="ชัยนาท">ชัยนาท</option>
            <option value="ชัยภูมิ">ชัยภูมิ</option>
            <option value="ชุมพร">ชุมพร</option>
            <option value="เชียงราย">เชียงราย</option>
            <option value="เชียงใหม่">เชียงใหม่</option>
            <option value="ตรัง">ตรัง</option>
            <option value="ตราด">ตราด</option>
            <option value="ตาก">ตาก</option>
            <option value="นครนายก">นครนายก</option>
            <option value="นครปฐม">นครปฐม</option>
            <option value="นครพนม">นครพนม</option>
            <option value="นครราชสีมา">นครราชสีมา</option>
            <option value="นครศรีธรรมราช">นครศรีธรรมราช</option>
            <option value="นครสวรรค์">นครสวรรค์</option>
            <option value="นนทบุรี">นนทบุรี</option>
            <option value="นราธิวาส">นราธิวาส</option>
            <option value="น่าน">น่าน</option>
            <option value="บึงกาฬ">บึงกาฬ</option>
            <option value="บุรีรัมย์">บุรีรัมย์</option>
            
            <option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์</option>
            <option value="ปราจีนบุรี">ปราจีนบุรี</option>
            <option value="ปัตตานี">ปัตตานี</option>
            <option value="พะเยา">พะเยา</option>
            <option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา</option>
            <option value="พังงา">พังงา</option>
            <option value="พัทลุง">พัทลุง</option>
            <option value="พิจิตร">พิจิตร</option>
            <option value="พิษณุโลก">พิษณุโลก</option>
            <option value="เพชรบุรี">เพชรบุรี</option>
            <option value="เพชรบูรณ์">เพชรบูรณ์</option>
            <option value="แพร่">แพร่</option>
            <option value="ภูเก็ต">ภูเก็ต</option>
            <option value="มหาสารคาม">มหาสารคาม</option>
            <option value="มุกดาหาร">มุกดาหาร</option>
            <option value="แม่ฮ่องสอน">แม่ฮ่องสอน</option>
            <option value="ยโสธร">ยโสธร</option>
            <option value="ยะลา">ยะลา</option>
            <option value="ร้อยเอ็ด">ร้อยเอ็ด</option>
            <option value="ระนอง">ระนอง</option>
            <option value="ระยอง">ระยอง</option>
            <option value="ราชบุรี">ราชบุรี</option>
            <option value="ลพบุรี">ลพบุรี</option>
            <option value="ลำปาง">ลำปาง</option>
            <option value="ลำพูน">ลำพูน</option>
            <option value="เลย">เลย</option>
            <option value="ศรีสะเกษ">ศรีสะเกษ</option>
            <option value="สกลนคร">สกลนคร</option>
            <option value="สงขลา">สงขลา</option>
            <option value="สตูล">สตูล</option>
            <option value="สมุทรปราการ">สมุทรปราการ</option>
            <option value="สมุทรสงคราม">สมุทรสงคราม</option>
            <option value="สมุทรสาคร">สมุทรสาคร</option>
            <option value="สระแก้ว">สระแก้ว</option>
            <option value="สระบุรี">สระบุรี</option>
            <option value="สิงห์บุรี">สิงห์บุรี</option>
            <option value="สุโขทัย">สุโขทัย</option>
            <option value="สุพรรณบุรี">สุพรรณบุรี</option>
            <option value="สุราษฎร์ธานี">สุราษฎร์ธานี</option>
            <option value="สุรินทร์">สุรินทร์</option>
            <option value="หนองคาย">หนองคาย</option>
            <option value="หนองบัวลำภู">หนองบัวลำภู</option>
            <option value="อ่างทอง">อ่างทอง</option>
            <option value="อำนาจเจริญ">อำนาจเจริญ</option>
            <option value="อุดรธานี">อุดรธานี</option>
            <option value="อุตรดิตถ์">อุตรดิตถ์</option>
            <option value="อุทัยธานี">อุทัยธานี</option>
            <option value="อุบลราชธานี">อุบลราชธานี</option>
          </select>
          </div>
</div>





        <input type="hidden" name="fertilizer1_status" id="fertilizer1_status" value="R">
        <input type="hidden" name="fertilizer2_status" id="fertilizer2_status" value="R">
        <input type="hidden" name="harvest_status" id="harvest_status" value="R">
    
    
<!--    <input type="hidden" name="rice_varieties_id" id="rice_varieties_id" value="-">-->
    
</div>
</div>

    <br>

  <center>
    <div class="col-auto">
    <button type="submit" class="btn btn-primary">ลงทะเบียน</button>
    
    
     &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
                    <button TYPE="RESET" value="Reset" class="btn btn-secondary">ยกเลิก</button>
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
    
             Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
        
         Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        
        //ResultSet rs = stmt.executeQuery("SELECT * FROM rice_fieldss where mem_id="+session.getAttribute("mem_id") ); 
           // ResultSet rs = stmt.executeQuery("SELECT rice_fields_id,rice_fields_name,rice_field_size,rice_field_soil_type"
           //      + ",DATE_FORMAT(plant_field_regis_date, '%d-%m-%Y') as plant_field_regis_date1 ,rice_varieties_id FROM rice_fieldss where mem_id="+session.getAttribute("mem_id") + " order by plant_field_regis_date desc"   ); 

            ResultSet rs = stmt.executeQuery("SELECT rice_fields_id,rice_fields_name,rice_field_size,rice_field_soil_type"
                + ",DATE_FORMAT(plant_field_regis_date, '%d-%m-%Y') as plant_field_regis_date1 ,rice_varieties_id FROM rice_fieldss where mem_id="+session.getAttribute("mem_id") + " order by plant_field_regis_date desc"   ); 
 
        %>  
        
        
<div class="container">
  <div>
    <h3 id="scrollspyHeading1">แปลงเพาะปลูก</h3>
  </div>
</div>
 
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









<div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
            <form id="main">
         <table id="example" class="table table-bordered" style="width: 115%;"  >
              <thead>
                <tr>
                  <th scope="col" class="text-center" >ลำดับ</th>  
                  <th scope="col" class="text-center" >ชื่อแปลงเพาะปลูก</th>
                  <th scope="col" class="text-center" >ขนาดแปลงเพาะปลูก</th>
                  <th scope="col" class="text-center" >ลักษณะดินในแปลงเพาะปลูก</th>
                  <th scope="col" class="text-center" >ชื่อพันธุ์ข้าว</th>
                  <th scope="col" class="text-center" >วันที่เริ่มเพาะปลูก</th>
                  <th scope="col" class="text-center" >การดำเนินงาน</th>
                </tr>
              </thead>
              <tbody>

                  
                  
                <tr>
                    
                    <%    
                      int counter = 1;   
 
        while( rs.next() )
        {  
%>  
                    <td><div align="center"><%=counter %></div></td>   
               
                  <td><div align="center"><%=rs.getString("rice_fields_name") %></div></td>  
                  <td><div align="center"><%=rs.getString("rice_field_size") %></div></td>
                  <td><div align="center"><%=rs.getString("rice_field_soil_type") %></div></td>
                  
                  
<%
        counter++;
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

<td><div align="center">-</div></td>


<%
}

     String plant_field_regis_date = rs.getString("plant_field_regis_date1");  
            
            
   String t = "-";
        try 
        {
           t = plant_field_regis_date;
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
        
<td><div align="center"><%=t %></div></td>
                
                
                
                
                
                  <td >
                    <div align="center" class="d-grid gap-2 d-md-block">
                        <a href="save_area01.jsp?q=<%=rs.getString("rice_fields_id") %>" ><button type="button" class="btn btn-outline-dark">บันทึกการเพาะปลูก</button></a>
<!--                    <button type="button" class="btn btn-outline-dark">ยกเลิกการเพาะปลูก</button>-->
                   <a href="register_area_edit.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-outline-dark">แก้ไข</button></a>
                   <a  ><button id="delete_field" type="button" class="btn btn-outline-dark" onclick='check_solution(<%=rs.getString("rice_fields_id") %>); return false;'>ลบ</button></a>
                 <!--  <a href="register_area_delete.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-outline-dark">ลบ</button></a>  -->

                  <a  ><button id="cancel_field" type="button" class="btn btn-outline-dark" onclick='check_solution2(<%=rs.getString("rice_fields_id") %>); return false;'>ยกเลิก</button></a>
                    <!-- <a href="register_area_cancel.jsp?q=<%=rs.getString("rice_fields_id") %>"><button type="button" class="btn btn-outline-dark">ยกเลิก</button></a> -->
                    </div>
                  </td>
                  
                      
                </tr>
  	<%}%>

              </tbody>
            </table>
              </form>
        </div>
    </div>
  </div>
</div>


<script>
function check_solution(id)
{   //console.log(id);
    // alert(id);
  if ( confirm(' คุณต้องการลบแปลงเพาะปลูกที่ได้ลงทะเบียนไว้ในระบบใช่หรือไม่ ? ') )

  { 
    // console.log(id);
       document.getElementById("main").action  = "register_area_delete.jsp?q="+id;
      // document.getElementById("main").action  = "register_area_delete.jsp?rice_fields_id"
        document.getElementById("main").method  = "post";
        document.getElementById("main").submit();
       
  }
}
</script>



<script>
function check_solution2(id)
{   //console.log(id);
    // alert(id);
  if ( confirm('คุณต้องการยกเลิกแปลงเพาะปลูกใช่หรือไม่ ?') )

  { 
    // console.log(id);
       document.getElementById("main").action  = "register_area_cancel.jsp?q="+id;
      // document.getElementById("main").action  = "register_area_delete.jsp?rice_fields_id"
        document.getElementById("main").method  = "post";
        document.getElementById("main").submit();
       
  }
}
</script>








<%
    //    }
  //c.close();
    //    con.close();
     //   }
        //catch(Exception ex){ out.print(ex); }
        
             c.close();
        con.close();
  
          }  catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}


       // }

%>


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
