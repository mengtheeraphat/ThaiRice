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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <title> ตรวจสอบราคาข้าว </title>
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.css">
    <!-- animate.css -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- Icofont -->
    <link rel="stylesheet" href="plugins/icofont/icofont.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

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
<!--        <a class="nav-link" href="http://localhost:8084/project//logout_user_process.jsp">ลงชื่อออก</a>-->
      </li>
      
      
      
      
      
      
    </ul>
  </nav>
  <br>

<!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">ตรวจสอบราคาข้าว</h2>
  </div>
</div>
</center>
<br>



<%
	String keyword = "";
          String rice_type = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
        

if(request.getParameter("rice_type") != null) {
		rice_type = request.getParameter("rice_type");
	}
%>
  <!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->
  <form name="frmSearch" method="get" action="check_price_rice01.jsp">
      
<!--<div class="container">
    <div class="row" style="margin-left: 25% ;">
        <div class="  ftco-animate">
            <div class="staff">
              <div class="row g-3 align-items-center">
                <div class="col-auto">
                  <label for="inputPassword6" class="col-form-label">ชื่อพันธุ์ข้าว</label>
                </div>
                <div class="col-auto">
                  <input type="text" id="rice_varieties_name" value="" name="txtKeyword" class="form-control" aria-describedby="passwordHelpInline">
                </div>
              
            
                <div class="col-auto">
                  <label for="inputPassword6" class="col-form-label">ชนิดข้าว</label>
                </div>
                <div class="col-sm-4">
                  <select class="form-select mt-2" id="rice_type" name="rice_type">
                    <option value="ทั้งหมด" selected>ทั้งหมด</option>
                    <option value="ข้าวเหนียว">ข้าวเหนียว</option>
                    <option value="ข้าวจ้าว">ข้าวจ้าว</option>
                  </select>
                </div>
                
                
              </div>
        
              </div>
          </div>
      </div>
</div>
  <br>
   ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- 

  <center>
<div class="col-auto">
    <button type="submit" class="btn btn-primary">เพิ่ม</button>
    </div>
  </center>
  <br>-->


<div class="container">
    <div class="row" style="margin-left: 25% ;">
        <div class="  ftco-animate">
            <div class="staff">
              <div class="row g-3 align-items-center">
                <div class="col-auto">
                  <label for="inputPassword6" class="col-form-label">ชื่อพันธุ์ข้าว</label>
                </div>
                <div class="col-auto">
                  
                  <input type="text" id="txtKeyword" class="rice_varieties_name" name="txtKeyword" value="<%=keyword%>" aria-describedby="passwordHelpInline">
                </div>
              
            
                <div class="col-auto">
                  <label for="inputPassword6" class="col-form-label">ชนิดข้าว</label>
                </div>
                <div class="col-sm-4">
                  <select class="form-select mt-2" id="rice_type" name="rice_type">
                    <option value="" selected>ทั้งหมด</option>
                    <option value="ข้าวเหนียว">ข้าวเหนียว</option>
                    <option value="ข้าวเจ้า">ข้าวเจ้า</option>
                  </select>
                </div>
              </div>
        
              </div>
          </div>
      </div>
</div>
  <br>
  <!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

  <center>
<div class="col-auto">
    <button type="submit" class="btn btn-primary">ค้นหา</button>
      &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    
     <button TYPE="RESET" value="Reset" class="btn btn-secondary">ยกเลิก</button>

    </div>
  </center>
  <br>

</form>
                
                
                
                <%
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
                connect =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");
		//connect =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
		
		s = connect.createStatement();
		
		//String sql = "SELECT * FROM rice_varieties WHERE rice_varieties_name like '%" +  keyword + "%'and rice_type like '%"+rice_type+"%'  ORDER BY rice_varieties_id";


        String sql = "SELECT rice_varieties_id,rice_varieties_name,rice_type,registered_seed,certified_seed,lowerbound_price,upperbound_price,DATE_FORMAT(last_update, '%d-%m-%Y') as last_update1 FROM rice_varieties WHERE rice_varieties_name like '%" +  keyword + "%'and rice_type like '%"+rice_type+"%'  ORDER BY rice_varieties_id";


		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
                
                
        <div class="container">
  <div>
    <h3 id="scrollspyHeading1">ข้อมูลราคาข้าว</h3>
     <h5 id="scrollspyHeading1">(ราคาอ้างอิงจาก กรมการข้าวและสมาคมโรงสีข้าว)</h5>
  </div>
</div>
         
                
                   
    <div class="container" >
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
        <table class="table table-bordered" style="width: 115%;">
		

                <thead>
                <tr>
                  <th scope="col" class="text-center" >รหัสพันธุ์ข้าว</th>    
                  <th scope="col" class="text-center" >ชื่อพันธุ์ข้าว</th>  
                   <th scope="col" class="text-center" >ประเภทข้าว</th>
                    <th scope="col" class="text-center" >ราคาพันธุ์ข้าวขยาย &nbsp;(บาท/กิโลกรัม)</th>
                   <th scope="col" class="text-center" >ราคาพันธุ์ข้าวจำหน่าย &nbsp;(บาท/กิโลกรัม)</th>
                   <th scope="col" class="text-center" >ราคาข้าวเปลือกต่ำสุด &nbsp; (บาท/ตัน)</th>  
                  <th scope="col" class="text-center" >ราคาข้าวเปลือกสูงสุด &nbsp; (บาท/ตัน)</th>    
                     <th scope="col" class="text-center" >วันที่ปรับปรุงล่าสุด</th>
                 
                </tr>
              </thead>
         
         
         
         
         
     
		
<% while( rec.next() ) { 
                      
                        String registered_seed = rec.getString("registered_seed");
                        String certified_seed = rec.getString("certified_seed");
                        String lowerbound_price = rec.getString("lowerbound_price");
                        String upperbound_price = rec.getString("upperbound_price");
                        String last_update = rec.getString("last_update1");
                        


                        
                        
                        
                           String t = "-";
        try 
        {
           t = registered_seed;
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
           t2 = certified_seed;
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
           t3 = lowerbound_price;
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
           t4 = upperbound_price;
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
           t5 = last_update;
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


            
                        
                        %>
				  <tr>
				    <td><div align="center"><%=rec.getString("rice_varieties_id")%></div></td>
                                    <td align="center"><%=rec.getString("rice_varieties_name")%></td>
                                    <td align="center"><%=rec.getString("rice_type")%></td>
                                    <td align="center"><%=t %></td>
				    <td align="center"><%=t2%></td>
				    <td align="center"><%=t3%></td>
                                    <td align="center"><%=t4%></td>
                                    <td align="center"><%=t5%></td>
				  </tr>
	       	<%}%>
                
                
<!--                     </tbody>-->
	  	</table> 
                
                
                 <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
	connect.close();

	%>
  
  </div>
</div>
</div>
</div>

  
  
  

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

  </body>
  </html>