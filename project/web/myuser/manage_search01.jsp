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

   <title> สืบค้นข้อมูลพันธุ์ข้าว </title>
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



<%
	String keyword = "";
        String rice_type = "";
        String rice_varieties_soil_type = "";   
        
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
        

	if(request.getParameter("rice_type") != null) {
		rice_type = request.getParameter("rice_type");
	}
        
//	if(request.getParameter("txtKeyword") != null) {
//		keyword = request.getParameter("txtKeyword");
//	}
        
        if(request.getParameter("rice_varieties_soil_type") != null) {
		rice_varieties_soil_type = request.getParameter("rice_varieties_soil_type");
	}



%>


<center>
<div class="container">
  <div>
    <h2 id="scrollspyHeading1">สืบค้นข้อมูลพันธุ์ข้าว</h2>
  </div>
</div>
</center>






<form name="frmSearch" method="get" action="manage_search01.jsp">
<!--	<form name="frmSearch" method="get" action="search_test_process.jsp">
	  <table width="599" border="1">
	    <tr>
	      <th>Keyword
	      <input name="txtKeyword" type="text" id="txtKeyword" value="">
	      <input type="submit" value="Search"></th>
	    </tr>
	  </table>
	</form>-->

<!--  <div class="container">
  
 
  
  <div class="row g-3 align-items-center">
    <div class="col-sm-1">
      <label for="inputPassword6" class="col-form-label">ชื่อพันธุ์ข้าว</label>
    </div>
    <div class="col-sm-2">
      <input name="txtKeyword" type="text" id="txtKeyword" value="     " class="form-control" aria-describedby="passwordHelpInline">
    </div>
  
  
    <div class="col-sm-1">
      <label for="inputPassword7" class="col-form-label">ประเภทข้าว</label>
    </div>
    <div class="col-sm-2">
      <select class="form-select mt-2" id="rice_type" name="rice_type" >
        <option value="" selected>ทั้งหมด</option>
        <option value="ข้าวจ้าว">ข้าวจ้าว</option>
        <option value="ข้าวเหนียว">ข้าวเหนียว</option>
      </select>
    </div>
  
    <div class="col-sm-2">
      <label for="inputPassword8" class="col-form-label">ลักษณะพื้นที่เพาะปลูก</label>
    </div>
    <div class="col-sm-2">
      <select class="form-select mt-2" id="rice_varieties_soil_type" name="rice_varieties_soil_type">
        <option value="" selected>ทั้งหมด</option>
        <option value="ดินเหนียว">ดินเหนียว</option>
        <option value="ดินร่วนกึ่งดินร่วนเหนียว">ดินร่วนกึ่งดินร่วนเหนียว</option>
        <option value="ดินร่วนเหนียว">ดินร่วนเหนียว</option>
      </select>
    </div>
  
  </div>
    
    
    
    
    
    
 
        
         
  </div>
  <br>
   ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- 
  <center>
    <div  class="col-auto">
    <button type="submit" class="btn btn-primary">ค้นหา</button>
    </div>
  </center>
  <br>-->


 <div class="container">
    <div class="row" style="margin-left: 15% ;">
  <div class="row g-3 align-items-center">
    <div class="col-auto">
      <label for="inputPassword6" class="col-form-label">ชื่อพันธุ์ข้าว</label>
    </div>
    <div class="col-sm-2">
        <input type="text" id="inputPassword6" class="rice_varieties_name" name="txtKeyword" value="<%=keyword%>" aria-describedby="passwordHelpInline">
        
    </div>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <div class="col-auto">
      <label for="inputPassword7" class="col-form-label">ประเภทข้าว</label>
    </div>
    <div class="col-sm-2">
      <select class="form-select mt-2" id="rice_type" name="rice_type"> 
        <option value="" selected>ทั้งหมด</option>
        <option value="ข้าวเจ้า">ข้าวเจ้า</option>
        <option value="ข้าวเหนียว">ข้าวเหนียว</option>
      </select>
    </div>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <div class="col-auto">
      <label for="inputPassword8" class="col-form-label">ลักษณะพื้นที่เพาะปลูก</label>
    </div>
    <div class="col-sm-2">
      <select class="form-select mt-2" id="rice_varieties_soil_type" name="rice_varieties_soil_type">
        <option value="" selected>ทั้งหมด</option>
        <option value="ดินเหนียว">ดินเหนียว</option>
        <option value="ดินร่วนกึ่งดินร่วนเหนียว">ดินร่วนกึ่งดินร่วนเหนียว</option>
        <option value="ดินร่วนเหนียว">ดินร่วนเหนียว</option>
      </select>
    </div>
  
  </div>
        
  </div>    
  </div>
  <br>
  <!-- ---------------------------ค้นหาพันธุ์ข้าว--------------------------------- -->

  <center>
    <div   class="col-auto">
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
		
		String sql = "SELECT * FROM rice_varieties WHERE rice_varieties_name like '%" +  keyword + "%' and rice_type like '%"+rice_type+"%' and rice_varieties_soil_type like '%"+rice_varieties_soil_type+"%' ORDER BY rice_varieties_id";
		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
                
             <div class="container">
  <div>
    <h3 id="scrollspyHeading1">ข้อมูลข้าว</h3>
  </div>
</div> 
                
                
                
                <div class="container">
  <div class="row">
      <div class="  ftco-animate">
          <div class="staff">
		<table class="table table-bordered" style="width: 115%;" >
		

                <thead>
                <tr>
                  <th scope="col" style="width: 10%;" class="text-center" >ลำดับ</th>
                  <th scope="col" class="text-center" >ชื่อพันธุ์ข้าว</th>
                  <th scope="col" class="text-center" >ประเภทข้าว</th>
                  <th scope="col" class="text-center" >คุณสมบัติของพันธุ์ข้าว &nbsp;(บาท/เกวียน)</th>
                  <th scope="col" class="text-center" > ปริมาณผลผลิตต่อไร่ &nbsp; (กิโลกรัม/ไร่)</th>
                  <th scope="col" class="text-center" >ลักษณะพื้นที่เพาะปลูก</th>
                  <th scope="col" class="text-center" >การดำเนินงาน</th>
                </tr>
              </thead>
         
         
         
         
         
     
		
			<% 
       int counter = 1;   


      while( rec.next() ) 

        {

         %>
				  <tr>
				 <td><div align="center"><%=counter %></div></td>
            <td><div align="center"><%=rec.getString("rice_varieties_name")%></div></td>
            <td align="center"><%=rec.getString("rice_type")%></td>
                                    <td><%=rec.getString("rice_varieties_properties")%></td>
            <td align="center"><%=rec.getString("rice_varieties_quantity")%></td>
            <td align="center"><%=rec.getString("rice_varieties_soil_type")%></td>
             <td ><a href="rice_data.jsp?q=<%=rec.getString("rice_varieties_id") %>"><button type="button" class="btn btn-outline-dark">แสดงข้อมูล</button></a></td>
				  </tr>



	       	<% 

            counter++;

         }%>
                
                
                     </tbody>
	  	</table> 
                
                
                
                
	    <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
	connect.close();

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