<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <script>
    
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    
    
    
    
</script>
        
        <h1>Hello World!</h1>
        
        <script>  

$(document).ready(function () {
    var daysToAdd = 120;
    $("#txtFromDate").datepicker({
        onSelect: function (selected) {
            var dtMax = new Date(selected);
            dtMax.setDate(dtMax.getDate() + daysToAdd); 
            var dd = dtMax.getDate();
            var mm = dtMax.getMonth() + 1;
            var y = dtMax.getFullYear();
            var dtFormatted = dd + '/'+ mm + '/'+ y;
            $("#txtToDate").datepicker("option", "minDate", dtFormatted);
        }
    });
    
    $("#txtToDate").datepicker({
        onSelect: function (selected) {
            var dtMax = new Date(selected);
            dtMax.setDate(dtMax.getDate() - daysToAdd); 
            
            var dd = dtMax.getDate();
            var mm = dtMax.getMonth() + 1;
            var y = dtMax.getFullYear();
            var dtFormatted = dd + '/'+ mm + '/'+ y;
            $("#txtFromDate").datepicker("option", "maxDate", dtFormatted)
        }
    });
});



</script>  


<br/>From:
<input type="date" id="txtFromDate" />To:
<input type="date" id="txtToDate" />
        
        
        
        
    </body>
</html>
