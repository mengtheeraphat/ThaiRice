
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

   <title> ตรวจสอบสถานะการเพาะปลูก </title>
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
    <h2 id="scrollspyHeading1">ตรวจสอบสถานะการเพาะปลูก</h2>
    <br>
  </div>
</div>
</center>
    
    
    
    
    
    
    
    
    
    
    
    
    
<!-- ---------------------------ตาราง--------------------------------- -->    


<%

        Class.forName("com.mysql.jdbc.Driver");        

        
        try
        {
         Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
       // Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
        
        Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        
        Connection cons =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
        //Connection cons =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmts = con.createStatement();  
 

 ResultSet rs = stmt.executeQuery(" SELECT rice_fields_id,rice_fields_name,rice_varieties_id,DATE_FORMAT(plant_field_regis_date, '%d-%m-%Y ') as plant_field_regis_date1 "
              + " ,fertilizer1_date,fertilizer2_date,harvest_date,fertilizer1_status,fertilizer2_status,harvest_status FROM rice_fieldss where mem_id="+session.getAttribute("mem_id")+" ORDER by plant_field_regis_date  DESC "   );


       // ResultSet rs = stmts.executeQuery("SELECT * FROM rice_fieldss where mem_id="+session.getAttribute("mem_id") ); 

      // ResultSet rs = stmts.executeQuery("SELECT * FROM rice_fieldss where mem_id=6");
       //while( rs.next() )
        {  


          //  out.print(rs.getString("rice_fields_id")+"<br>");


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

                                  <table id="example" class="table table-bordered" style="width: 115%;"  >
                                  <thead>
                                    <tr>
                                        <th scope="col" class="text-center" >ลำดับ</th> 
                                      <th scope="col" class="text-center" >รหัสแปลงเพาะปลูก</th>
                                      <th scope="col" class="text-center" >ชื่อแปลงเพาะปลูก</th>
                                      <th scope="col" class="text-center" >ชื่อพันธุ์ข้าว</th>
                                      <th scope="col" class="text-center" >วันที่เริ่มเพาะปลูก </th>
                                      <th scope="col" class="text-center" >คำแนะนำ</th>  
                                      <th scope="col" class="text-center" >บันทึกผลการดำเนินงาน</th>   
                                      <th scope="col" class="text-center" >แสดงผลการดำเนินงาน</th>  
                                      <th scope="col" class="text-center" >รายละเอียดการดำเนินงาน</th>  
                                    </tr>
                                  </thead>
   
<%        int counter = 1;   
        while( rs.next() )        
        {            
%>                
                <tr>
                    <td><div align="center"><%=counter %></div></td>   
                    <td><div align="center"><%=rs.getString("rice_fields_id") %></div></td>    
                    <td><div align="center"><%=rs.getString("rice_fields_name") %></div></td>  
       
<%       
counter++;
        ResultSet r = s.executeQuery("SELECT * FROM rice_varieties  where  rice_varieties_id = '"+ rs.getString("rice_varieties_id")+"'" ); 

                String rice_varieties_quantity = request.getParameter("rice_varieties_quantity");
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
<%


   // Connection conss =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
      //  Statement stmtss = con.createStatement();  

        //ResultSet rss = stmtss.executeQuery("SELECT * FROM rice_fieldss where mem_id="+session.getAttribute("mem_id") ); 
        
      //  String sql = "SELECT * FROM  rice_fieldss  " ;
     
        String fertilizer1_date = rs.getString("fertilizer1_date");
            String fertilizer2_date = rs.getString("fertilizer2_date");
            String harvest_date = rs.getString("harvest_date");
            String fertilizer1_status = rs.getString("fertilizer1_status");
            String fertilizer2_status = rs.getString("fertilizer2_status");
            String harvest_status = rs.getString("harvest_status");
  
        // System.out.println("fertilizer1_date :"+fertilizer1_date);

        //out.print(fertilizer1_date +" "+ fertilizer1_status + " "+ chiabwootdate.ChiabwootDate.Check_Date( "yyyy-MM-dd", fertilizer1_date  ) +"<br>");
     
     //        if(  (chiabwootdate.ChiabwootDate.Check_Date( "yyyy-MM-dd", fertilizer1_date  ) == 1 ||  
//              chiabwootdate.ChiabwootDate.Check_Date( "yyyy-MM-dd", fertilizer1_date  ) == 0) 
//             && fertilizer1_status.equals("N") &&  fertilizer2_status.equals("N")  &&  harvest_status.equals("N") )
//        {
//            out.print("<td><label id='Message'>ใส่ปุ๋ยครั้งที่ 1</label></td>");
//        } 


// out.print( fertilizer1_date +"<br>");
//out.print( chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", fertilizer1_date  )  +"<br>");


    // PlusDate(   yyyy-MM-dd,   (fertilizer1_date)   , -10   );
  // out.print( fertilizer1_date +"<br>");
    // out.print(  PlusDate(  yyyy-MM-dd,   (fertilizer1_date)   , -10   ) );


        if(  (chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", fertilizer1_date  ) == 1  ||  
                chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", fertilizer1_date  ) == -404 ) 
             && fertilizer1_status.equals("N") &&  fertilizer2_status.equals("N")  &&  harvest_status.equals("N") )
        {

            out.print("<td><div align='center' id='Message'>ใส่ปุ๋ยครั้งที่ 1</div></td>");
           // out.print("<td><label id='Message'>ใส่ปุ๋ยครั้งที่ 1</label></td>");
        } 

        else if(  (chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", fertilizer2_date  ) == 1 ||  
                chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", fertilizer2_date  ) == -404)  
             && fertilizer1_status.equals ("Y") &&  fertilizer2_status.equals ("N") &&  harvest_status.equals ("N") )
        {
             out.print("<td><div align='center' id='Message'>ใส่ปุ๋ยครั้งที่ 2</div></td>");
           // out.print("<td><label id='Message'>ใส่ปุ๋ยครั้งที่ 2</label></td>");
            // out.print("<td><label id='Message'>ใส่ปุ๋ยครั้งที่ 2</label></td>");
        } 

        else if(  (chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", harvest_date  ) == 1 ||   
            chiabwootdate.ChiabwootDate.Check_Date_DC( "yyyy-MM-dd", harvest_date  ) == -404)  && 
            fertilizer1_status.equals ("Y") && fertilizer2_status.equals ("Y")  &&  harvest_status.equals ("N") )
        {


            out.print("<td width='170px'><div align='center' id='Message'>ครบกำหนดเก็บเกี่ยว</div></td>");
           // out.print("<td><label id='Message'>ครบกำหนดเก็บเกี่ยว</label></td>");
            //out.print("<td><label id='Message'>ครบกำหนดเก็บเกี่ยว</label></td>");
        } 


        else if  ( fertilizer1_status.equals("C") ||  fertilizer2_status.equals("C")  ||  harvest_status.equals("C")  ) 
        { 
             out.print("<td><div align='center' id='Message'>-</div></td>");
             //out.print("<td><label id='Message'>-</label></td>");
        } 

           
         else if  ( fertilizer1_status.equals("Y") &&  fertilizer2_status.equals("Y")  &&  harvest_status.equals("Y")  ) 
        { 
             out.print("<td><div align='center' id='Message'>-</div></td>");
            // out.print("<td><label id='Message'>-</label></td>");
            //out.print("<td><label id='Message'>-</label></td>");
        }        
         
        else

        {
             out.print("<td><div align='center' id='Message'>ไม่มีแจ้งเตือน</div></td>");
            //out.print("<td><label id='Message'>ไม่มีแจ้งเตือน</label></td>");
       //out.print("<td><label id='Message'>ไม่มีแจ้งเตือน</label></td>");
        } 




        
      

        //out.print("<td><button type='submit' id='su' class='btn btn-primary' value='Y'>ยืนยัน</button></td>");
        //status fields แสดงช่อง สถานะการเพาะปลูก   
  
        if(  fertilizer1_status.equals("N") &&  fertilizer2_status.equals("N")  &&  harvest_status.equals("N") )
        {
             out.print("<td><center><a  id='fertilizer1_status' name='fertilizer1_status' href='update_status_f1.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></center></td>");
          //out.print("<td><a  id='fertilizer1_status' name='fertilizer1_status' href='update_status_f1.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
        } 
        else if  ( fertilizer1_status.equals("Y") &&  fertilizer2_status.equals("N")  &&  harvest_status.equals("N")  ) 
        {
             out.print("<td><center><a  id='fertilizer2_status' name='fertilizer2_status' href='update_status_f2.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></center></td>");
          // out.print("<td><a  id='fertilizer2_status' name='fertilizer2_status' href='update_status_f2.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
        }  
        
        else if  ( fertilizer1_status.equals("Y") &&  fertilizer2_status.equals("Y")  &&  harvest_status.equals("N")  ) 
        { 
             out.print("<td><center><a  id='harvest_status' name='harvest_status' href='update_status_h.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></center></td>");
           // out.print("<td><a id='harvest_status' name='harvest_status' href='update_status_h.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
        }
        
        
//      else    if  ( fertilizer1_status.equals("C") &&  fertilizer2_status.equals("C")  &&  harvest_status.equals("C")  ) 
        else 
        { 
             out.print("<td><center>-</center></td>");
           // out.print("<td>-</td>");
        }
        
    
        
//          else 
//        { 
//            out.print("<td><a id='harvest_status' name='harvest_status' href='update_status_h.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
//        }
      
        
        
        
        
        if(  harvest_status.equals("Y")  )
        {
             out.print("<td><center>เก็บเกี่ยวสำเร็จ</center></td>");
            // out.print("<td>เก็บเกี่ยวสำเร็จ</td>");
        } 
        else if  ( harvest_status.equals("N")  ) 
        {
              out.print("<td><center>กำลังเพาะปลูก</center></td>");
           // out.print("<td>กำลังเพาะปลูก</td>");
        }   
        else if  ( harvest_status.equals("C")  ) 
        {
            out.print("<td><center>ยกเลิกแปลงเพาะปลูก</center></td>");
            //out.print("<td>ยกเลิกแปลงเพาะปลูก</td>");
        } 
        
         else 
        {
             out.print("<td><center>-</center></td>");
           // out.print("<td>-</td>");
        } 
        
         out.print("<td><center><a id='harvest_status' name='harvest_status' href='result_field.jsp?q="+rs.getString("rice_fields_id")+"'>แสดงผล</a></center></td>");
        
       // out.print("<td><a id='harvest_status' name='harvest_status' href='result_field.jsp?q="+rs.getString("rice_fields_id")+"'>แสดงผล</a></td>");
  ///-------------------------------------------------------------------------------------------------

  
//   if(  fertilizer1_status.equals("N") &&  fertilizer2_status.equals("N")  &&  harvest_status.equals("N") )
//        {
//          out.print("<td><a  id='fertilizer1_status' name='fertilizer1_status' href='update_status_f1_process.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
//        } 
//        else if  ( fertilizer1_status.equals("Y") &&  fertilizer2_status.equals("N")  &&  harvest_status.equals("N")  ) 
//        {
//           out.print("<td><a  id='fertilizer2_status' name='fertilizer2_status' href='update_status_f2_process.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
//        }   
//        else 
//        { 
//            out.print("<td><a id='harvest_status' name='harvest_status' href='update_status_h_process.jsp?q="+rs.getString("rice_fields_id")+"'>บันทึกข้อมูล</a></td>");
//        }
//  
  
//    if(  harvest_status.equals("Y")  )
//        {
//          out.print("<td><a href='status_y.jsp?p="+rs.getString("rice_fields_id")+"'>ยืนยัน</a></td>");
//        } 
//        else if  ( harvest_status.equals("N")  ) 
//        {
//           out.print("<td><a href='yyy.jsp?p="+rs.getString("rice_fields_id")+"'>ยืนยัน</a></td>");
//        }   
//        else 
//        {
//            out.print("<td><a href='zzz.jsp?p="+rs.getString("rice_fields_id")+"'>ยืนยัน</a></td>");
//        }
//      
  
 
  
   //if(  chiabwootdate.ChiabwootDate.Check_Date("yyyy-MM-dd",rs.getString("plant_field_regis_date")   ) == 1 || 
//                 chiabwootdate.ChiabwootDate.Check_Date("yyyy-MM-dd",rs.getString("plant_field_regis_date")   ) == 0   )
//            { 

                
//                 if(  chiabwootdate.ChiabwootDate.Check_Date("yyyy-MM-dd",rs.getString("plant_field_regis_date")   ) == 1 || 
//                 chiabwootdate.ChiabwootDate.Check_Date("yyyy-MM-dd",rs.getString("plant_field_regis_date")   ) == 0   )
       //     { 
                
//                   out.print("SHOW WARNING JOB"+ rs.getString("num"));
//       
//            }

%>
 
                </tr>

                    <%}%>
 
<!--              </tbody>-->
            </table>
        </div>
    </div>
  </div>
</div>


        
                        
                        
                        
                        
                        
                        
                        

<%
//    }
//        }
//c.close();
//        con.close();
//        }
//        catch(Exception ex){ out.print(ex); }

}
 c.close();
        con.close();
  
        } catch (Exception e) {
            // TODO Auto-generated catch block
            out.println(e.getMessage());
            e.printStackTrace();
        }
            

%>

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