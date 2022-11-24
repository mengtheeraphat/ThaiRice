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
            
             <a class="nav-link" >
         <%
        out.print( session.getAttribute("ssUserID") );
    %>
    
    </a>
      </li>
          <li class="nav-item">
        <a class="nav-link" href="http://localhost:8084/project//logout_user_process.jsp">ลงชื่อออก</a>
      </li>
          
        </ul>
      </nav>
  <br>

<!-- ---------------------------กล่องข้อความ--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">สถานะการเพาะปลูก</h2>
  </div>
</div>
</center>
<br>



<!-----------------------------------ปุ่ม------------------------------------------>

<!-- ---------------------------ตาราง--------------------------------- -->    



    

        






<%
    
     Class.forName("com.mysql.jdbc.Driver");        

         
        try
       
        {
    
       Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//        Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();  
        
        Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
//        Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement stmt = con.createStatement();  
        
  ResultSet rs = stmt.executeQuery("SELECT rice_fields_id,rice_fields_name,rice_varieties_id,DATE_FORMAT(plant_field_regis_date, '%d-%m-%Y ') as plant_field_regis_date1"
              + ",DATE_FORMAT(fertilizer1_date_real, '%d-%m-%Y ') as fertilizer1_date_real1"
          + ",DATE_FORMAT(fertilizer2_date_real, '%d-%m-%Y ') as fertilizer2_date_real1"
          + ",DATE_FORMAT(harvest_status_real, '%d-%m-%Y ') as harvest_status_real1,harvest_status FROM rice_fieldss where rice_fields_id = "+request.getParameter("q")  ); 

  // ResultSet rs = stmt.executeQuery("SELECT rice_fields_id,rice_fields_name,rice_varieties_id,DATE_FORMAT(plant_field_regis_date, '%d-%m-%Y ') as plant_field_regis_date1"
  //             + ",fertilizer1_date_real,fertilizer2_date_real,harvest_status_real,harvest_status FROM rice_fieldss where rice_fields_id = "+request.getParameter("q")  ); 

        // ResultSet rs = stmt.executeQuery("SELECT * FROM rice_fieldss where rice_fields_id = "+request.getParameter("q")  ); 
 
        %>  
        
        
<div class="container">
  <div>
    <h3 id="scrollspyHeading1">แปลงเพาะปลูก</h3>
  </div>
</div>
 












<div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
            <table class="table table-bordered">
              <thead>
                <tr>
                 <th scope="col" class="text-center" >รหัสแปลงเพาะปลูก</th>
                 <th scope="col" class="text-center" >ชื่อแปลงเพาะปลูก</th>
                 <th scope="col" class="text-center" >ชื่อพันธุ์ข้าว</th>
                 <th scope="col" class="text-center" >วันที่เริ่มเพาะปลูก</th>
                 <th scope="col" class="text-center" >วันที่ใส่ปุ๋ยครั้งที่ 1 </th>  
                 <th scope="col" class="text-center" >วันที่ใส่ปุ๋ยครั้งที่ 2</th>   
                 <th scope="col" class="text-center" >วันที่เก็บเกี่ยว</th>  
                 <th scope="col" class="text-center" >สถานะการเพาะปลูก</th>  
                </tr>
              </thead>
              <tbody>

                  
                  
                <tr>
                    
                    <%       
 
        while( rs.next() )
        {  








%>  
                    
                  <td><div align="center"><%=rs.getString("rice_fields_id") %></div></td>    
                  <td><div align="center"><%=rs.getString("rice_fields_name") %></div></td>  
                  
                  
<%
        
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




 // Connection conss =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
      //  Statement stmtss = con.createStatement();  

        //ResultSet rss = stmtss.executeQuery("SELECT * FROM rice_fieldss where mem_id="+session.getAttribute("mem_id") ); 
        
      //  String sql = "SELECT * FROM  rice_fieldss  " ;
     
//	    String fertilizer1_date = rs.getString("fertilizer1_date");
//            String fertilizer2_date = rs.getString("fertilizer2_date");
//            String harvest_date = rs.getString("harvest_date");
//            String fertilizer1_status = rs.getString("fertilizer1_status");
//            String fertilizer2_status = rs.getString("fertilizer2_status");
//            String harvest_status = rs.getString("harvest_status");
            String fertilizer1_date_real = rs.getString("fertilizer1_date_real1");
            String fertilizer2_date_real = rs.getString("fertilizer2_date_real1");
            String harvest_status_real = rs.getString("harvest_status_real1");
            String plant_field_regis_date = rs.getString("plant_field_regis_date1");
        // System.out.println("fertilizer1_date :"+fertilizer1_date);

        //out.print(fertilizer1_date +" "+ fertilizer1_status + " "+ chiabwootdate.ChiabwootDate.Check_Date( "yyyy-MM-dd", fertilizer1_date  ) +"<br>");
     
        String t = "-";
        try 
        {
           t = fertilizer1_date_real;
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




  String t2 = "-";
        try 
        {
           t2 = fertilizer2_date_real;
           if(t2.equals("null") )
           {
               t2 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t2 = "-";
        }



  String t3 = "-";
        try 
        {
           t3 = harvest_status_real;
           if(t3.equals("null") )
           {
               t3 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t3 = "-";
        }

String t4 = "-";
        try 
        {
           t4 = plant_field_regis_date;
           if(t4.equals("null") )
           {
               t4 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t4 = "-";
        }






%>
        
        <td><div align="center"><%=t4 %></div></td>
        <td><div align="center"><%=t %></div></td>    
        <td><div align="center"><%=t2 %></div></td>
        <td><div align="center"><%=t3 %></div></td>     
                
        
        <%


  
        
        
        
        	   //  String fertilizer1_date = rs.getString("fertilizer1_date");
            // String fertilizer2_date = rs.getString("fertilizer2_date");
            // String harvest_date = rs.getString("harvest_date");
            // String fertilizer1_status = rs.getString("fertilizer1_status");
            // String fertilizer2_status = rs.getString("fertilizer2_status");
            String harvest_status = rs.getString("harvest_status");
        
        
        
        
        
        
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
        
        
        
        //  if(  harvest_status.equals("Y")  )
        // {
        //      out.print("<td>เก็บเกี่ยวสำเร็จ</td>");
        // } 
        // else if  ( harvest_status.equals("N")  ) 
        // {
        //     out.print("<td>กำลังเพาะปลูก</td>");
        // }   
        // else if  ( harvest_status.equals("C")  ) 
        // {
        //     out.print("<td>ยกเลิกแปลงเพาะปลูก</td>");
        // } 
        
        //  else 
        // {
        //     out.print("<td>-</td>");
        // } 





            



%>
        
        
        
        
        
        
        
        
                  
                  
                      
                </tr>
  	<%}%>

  
              </tbody>
            </table>
             <center> <a href="check01.jsp"><button type="button" class="btn btn-secondary">ย้อนกลับ</button></a></center>
        </div>
    
    </div>
  </div>
</div>

 


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
