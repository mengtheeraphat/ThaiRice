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
        // ResultSet rs = stmt.executeQuery("SELECT rice_fields_id,rice_fields_name,rice_field_size,rice_field_soil_type,province,rice_varieties_id,plant_field_regis_date"
        //       + ",fertilizer1_date_real"
        //   + ",fertilizer2_date_real"
        //   + ",harvest_status_real,quantity_product,ROUND(quantity_product/rice_field_size,0) AS avg_quantity_product FROM rice_fieldss where rice_fields_id = "+request.getParameter("q"));

         ResultSet rs = stmt.executeQuery("SELECT rice_fields_id,rice_fields_name,rice_field_size,rice_field_soil_type,province,rice_varieties_id"
            + ",DATE_FORMAT(plant_field_regis_date, '%d-%m-%Y ') as plant_field_regis_date1"
              + ",DATE_FORMAT(fertilizer1_date_real, '%d-%m-%Y ') as fertilizer1_date_real1"
          + ",DATE_FORMAT(fertilizer2_date_real, '%d-%m-%Y ') as fertilizer2_date_real1"
          + ",DATE_FORMAT(harvest_status_real, '%d-%m-%Y ') as harvest_status_real1"
          + ",quantity_product,ROUND(quantity_product/rice_field_size,0) AS avg_quantity_product,harvest_status FROM rice_fieldss where rice_fields_id = "+request.getParameter("q"));  
        
       // ResultSet rs1 = stmt.executeQuery("SELECT * FROM rice_varieties");
        
     
        
        
        while( rs.next() )
        {  
     //   String  rice_fertilizer1 =    rs1.getString("rice_fertilizer1");
      //    String  rice_fertilizer2 =    rs1.getString("rice_fertilizer2");
        //   String  rice_havest =    rs1.getString("rice_havest");
            
            String province = rs.getString("province");
            String plant_field_regis_date = rs.getString("plant_field_regis_date1");
            String fertilizer1_date_real = rs.getString("fertilizer1_date_real1");
            String fertilizer2_date_real = rs.getString("fertilizer2_date_real1");
            String harvest_status_real = rs.getString("harvest_status_real1");
            String quantity_product = rs.getString("quantity_product");
            String avg_quantity_product = rs.getString("avg_quantity_product");





String t0 = "-";
        try 
        {
           t0 = province;
           if(t0.equals("null") )
           {
               t0 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t0 = "-";
        }






String t1 = "-";
        try 
        {
           t1 = plant_field_regis_date;
           if(t1.equals("null") )
           {
               t1 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t1 = "-";
        }



       String t2 = "-";
        try 
        {
           t2 = fertilizer1_date_real;
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
           t3 = fertilizer2_date_real;
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
           t4 = harvest_status_real;
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


String t5 = "-";
        try 
        {
           t5 = quantity_product;
           if(t5.equals("null") )
           {
               t5 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t5 = "-";
        }



        String t6 = "-";
        try 
        {
           t6 = avg_quantity_product;
           if(t6.equals("null") )
           {
               t6 = "-";
              //out.print("<td><label id='Message'>-</label></td>");
           }
        } 
        catch (Exception e) 
        {
            t6 = "-";
        }




%>


      







    <nav id="navbar-example2" class="navbar navbar-light" style="background-color: #f7ce1a;">
        <a class="navbar-brand" href="#">Thai Rice</a>
        <ul class="nav nav-pills">
          
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
        </ul>
      </nav>
  <br>

  
<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">แปลงเพาะปลูก</h2>
  </div>
</div>
</center>
<br>











<div class="col">
<div class="row" style="margin-left: 30% ;">
    
<div class="form-group row">
    <label align="center" for="colFormLabel" class="col-sm-3 col-lg-3">รหัสแปลงเพาะปลูก</label>
    <div class="col-sm-4">
        <center><a ><%=rs.getString("rice_fields_id") %> </a></center>
      </div>
</div>

<div class="form-group row">
    <label align="center" for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อแปลงเพาะปลูก</label>
    <div class="col-sm-4">
    <center> <a ><%=rs.getString("rice_fields_name") %> </a></center>
    </div>  
</div>

<div class="form-group row">
    <label  align="center" for="colFormLabel" class="col-sm-2 col-lg-3">ขนาดแปลงเพาะปลูก &nbsp;(ไร่)</label>
    <div class="col-sm-4">
     <center><a ><%=rs.getString("rice_field_size") %> </a><center>
      </div>
</div>

<div class="form-group row">
    <label  align="center" for="colFormLabel" class="col-sm-2 col-lg-3">ลักษณะดินในแปลงเพาะปลูก</label>
    <div class="col-sm-4">
     <center><a ><%=rs.getString("rice_field_soil_type") %> </a><center>
    </div>  
</div>   
    
<div class="form-group row">
    <label align="center" for="colFormLabel" class="col-sm-2 col-lg-3">จังหวัดที่เพาะปลูก</label>
    <div class="col-sm-4">
    <center><a><%=t0%></a></center>
    </div>  
</div> 


    


<div class="form-group row">
    <label align="center" for="colFormLabel" class="col-sm-2 col-lg-3">ชื่อพันธุ์ข้าว</label>
    <div class="col-sm-4">

<%
    Connection c =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
    //Connection c =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
        Statement s = c.createStatement();   

        ResultSet r = s.executeQuery("SELECT * FROM rice_varieties  where  rice_varieties_id = '"+ rs.getString("rice_varieties_id")+"'" ); 
        if( r.next() )
        {
%>

     <center><a ><%=r.getString("rice_varieties_name") %> </a></center>
                  
<%
    }
else
{
%>
  <center><a >-</a></center>
<%
}




%>

 </div>  
</div>   
    

    
    <div class="form-group row">
    <label  align="center" for="colFormLabel" class="col-sm-2 col-lg-3">วันที่เริ่มเพาะปลูก</label>
    <div class="col-sm-4">
     <center><a><%=t1%></a></center>
    </div>  
</div>  


<div class="form-group row">
    <label align="center"  for="colFormLabel" class="col-sm-2 col-lg-3">วันที่ใส่ปุ๋ยครั้งที่&nbsp;1</label>
    <div class="col-sm-4">
      <center><a><%=t2%></a></center>
    </div>  
</div>  

<div class="form-group row">
    <label align="center" for="colFormLabel" class="col-sm-2 col-lg-3">วันที่ใส่ปุ๋ยครั้งที่&nbsp;2</label>
    <div class="col-sm-4">
     <center><a><%=t3%></a></center>
    </div>  
</div>  

<div class="form-group row">
    <label align="center"  for="colFormLabel" class="col-sm-2 col-lg-3">วันที่เก็บเกี่ยว</label>
    <div class="col-sm-4">
     <center><a><%=t4%></a></center>
    </div>  
</div>  

<div class="form-group row">
    <label  align="center" for="colFormLabel" class="col-sm-2 col-lg-3">ผลผลิตที่เก็บเกี่ยวได้&nbsp;(กิโลกรัม)</label>
    <div class="col-sm-4">
     <center><a><%=t5%></a></center>
    </div>  
</div>  


<div class="form-group row">
    <label  align="center" for="colFormLabel" class="col-sm-2 col-lg-3">ผลผลิตเฉลี่ยต่อไร่&nbsp;(กิโลกรัม/ไร่)</label>
    <div class="col-sm-4">
     <center><a><%=t6%></a></center>
    </div>  
</div> 
    

  <div class="form-group row">
    <label  align="center" for="colFormLabel" class="col-sm-2 col-lg-3">สถานะแปลงเพาะปลูก</label>
    <div class="col-sm-4">

 <%

 
        

            String harvest_status = rs.getString("harvest_status");
        
        
        
        
        
        
        if(  harvest_status.equals("Y")  )
        {
            out.print("<center><a>เก็บเกี่ยวสำเร็จ</a></center>");
             // out.print("<center><a>เก็บเกี่ยวสำเร็จ</a></center>");
             // out.print("<td><center>เก็บเกี่ยวสำเร็จ</center></td>");
            // out.print("<td>เก็บเกี่ยวสำเร็จ</td>");
        } 
        else if  ( harvest_status.equals("N")  ) 
        {
             out.print("<center><a>กำลังเพาะปลูก</a></center>");
              // out.print("<td><center>กำลังเพาะปลูก</center></td>");
           // out.print("<td>กำลังเพาะปลูก</td>");
        }   
        else if  ( harvest_status.equals("C")  ) 
        {
             out.print("<center><a>ยกเลิกแปลงเพาะปลูก</a></center>");
            // out.print("<td><center>ยกเลิกแปลงเพาะปลูก</center></td>");
            //out.print("<td>ยกเลิกแปลงเพาะปลูก</td>");
        } 
        
         else 
        {
             out.print("<center><a>-</a></center>");
             // out.print("<td><center>-</center></td>");
           // out.print("<td>-</td>");
        } 
        
        
     

  


            



%>
    
   </div>  
</div> 



</div>
</div>

    <br>

  <center>
    <div class="col-auto">

    
    
     &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
              <center> <a href="check01.jsp"><button type="button" class="btn btn-secondary">ย้อนกลับ</button></a></center>
    </div>
    </center>
    <br>
    
 



<!-- ---------------------------ตาราง--------------------------------- -->    


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
<%
 

}

con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </body>
  </html>