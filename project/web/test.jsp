<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>  
<head>  
<title> Verification of valid Password </title>  
</head>  

<script>  
function verifyPassword() 
{  
  var pw = document.getElementById("pswd1").value;  
  //check empty password field  
  if(pw === "") {  
     document.getElementById("message").innerHTML = "**Fill the password please!";  
     return false;  
  }  
  
  var pw2 = document.getElementById("pswd2").value;  
  if (pw!==pw2)
  {
     document.getElementById("message").innerHTML = "password mismatch";  
     return false;      
  }
   
   
// //minimum password length validation  
//  if(pw.length < 8) {  
//     document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";  
//     return false;  
//  }  
//  
////maximum length of password validation  
//  if(pw.length > 15) {  
//     document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";  
//     return false;  
//  } else {  
//     alert("Password is correct");  
//  }  
}  
</script>  
  
<body>  
<center>  
<h1 style="color:green">Javatpoint</h1>  
<h3> Verify valid password Example </h3>  
  
<form onsubmit ="return verifyPassword()">  
<!-- Enter Password -->  
<td> Enter Password </td>  
<input type = "password" id = "pswd1" value = "">   
<input type = "password" id = "pswd2" value = "">   
<span id = "message" style="color:red"> </span> <br><br>  
  
<!-- Click to verify valid password -->  
<input type = "submit" value = "Submit">  
  
<!-- Click to reset fields -->  
<button type = "reset" value = "Reset" >Reset</button>  
</form>  
</center>  
</body>  
</html>  





<%--
<style>
    li {list-style-type: none;
font-size: 16pt;
}
.mail {
margin: auto;
padding-top: 10px;
padding-bottom: 10px;
width: 400px;
background : 
#D8F1F8;
border: 1px soild 
silver;
}
.mail h2 {
margin-left: 38px;
}
input {
font-size: 20pt;
}
input:focus, textarea:focus{
background-color: 
lightyellow;
}
input submit {
font-size: 12pt;
}
.rq {
color: 
#FF0000;
font-size: 10pt;
}
</style>
<html lang="en">
<head>
<meta charset="utf-8">
title>JavaScript form validation - Password Checking - 1</title>
<link rel='stylesheet' href='form-style.css' type='text/css' />
</head>
<body onload='document.form1.text1.focus()'>
<div class="mail">
<h2>Input Password and Submit [7 to 15 characters which contain only characters, numeric digits, underscore and first character must be a letter]</h2
<form name="form1" action="#">
<ul>
<li><input type='text' name='text1'/></li>
<li class="rq">*Enter numbers only.</li>
<li>&nbsp;</li>
<li class="submit"><input type="submit" name="submit" value="Submit" onclick="CheckPassword(document.form1.text1)"/></li>
<li>&nbsp;</li>
</ul>
</form>
</div>
<script src="check-password-1.js"></script>
</body>
</html>
<script>
function CheckPassword(inputtxt) 
{ 
var passw=  /^[A-Za-z]\w{7,14}$/;
if(inputtxt.value.match(passw)) 
{ 
alert('Correct, try another...')
return true;
}
else
{ 
alert('Wrong...!')
return false;
}
}    
</script>
--%>