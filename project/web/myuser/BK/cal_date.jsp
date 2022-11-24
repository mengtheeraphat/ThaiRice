<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
try
{
    

    //out.print("SELECT * FROM rice_varieties where rice_varieties_id = '"+request.getParameter("rice_varieties_id") +"'");
   // out.print(request.getParameter("plant_field_regis_date") );
    
    Class.forName("com.mysql.jdbc.Driver");        
    Connection con =  DriverManager.getConnection("jdbc:mysql://192.168.4.2:3306/thairice?characterEncoding=UTF-8","my_meng","meng12345678");   
//    Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/thairice?characterEncoding=UTF-8","root","Meng254398");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM rice_varieties where rice_varieties_id = '"+request.getParameter("rice_varieties_id") +"'");          
    if( rs.next() )
    {
        String plant_field_regis_date = request.getParameter("plant_field_regis_date");
        String date1 = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd", plant_field_regis_date, rs.getInt("rice_fertilizer1") );
        String date2 = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd", plant_field_regis_date, rs.getInt("rice_fertilizer2") );
        String date3 = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd", plant_field_regis_date, rs.getInt("rice_havest") );

        //String date1 = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd", plant_field_regis_date, rs.getInt("rice_fertilizer1") + 8  );
        //String date2 = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd", plant_field_regis_date, rs.getInt("rice_fertilizer2") + 8  );
        //String date3 = chiabwootdate.ChiabwootDate.PlusDate("yyyy-MM-dd", plant_field_regis_date, rs.getInt("rice_havest") + 8  );
     
        String dd_mm_yyyy[] = date1.split("-");
        String d1 =  dd_mm_yyyy[2] + "-" +dd_mm_yyyy[1] + "-"+ dd_mm_yyyy[0];
       
        String dd_mm_yyyy2[] = date2.split("-");
        String d2 =  dd_mm_yyyy2[2] + "-" +dd_mm_yyyy2[1] + "-"+ dd_mm_yyyy2[0];
        
        String dd_mm_yyyy3[] = date3.split("-");
        String d3 =  dd_mm_yyyy3[2] + "-" +dd_mm_yyyy3[1] + "-"+ dd_mm_yyyy3[0];
        
        // String rice_varieties_properties = rs.getString("rice_varieties_properties");
        
        out.print(d1+","+d2+","+d3);
//        out.print(d1+","+d2+","+d3+","+rice_varieties_properties);
    }     
    con.close();
}
catch(Exception ex){}

%>
