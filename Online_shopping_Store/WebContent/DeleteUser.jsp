<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>

</head>
<body>

<%

String id = request.getParameter("id");
String uname = request.getParameter("uname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String password = request.getParameter("pass");

%>



<form action="deleteB" method ="post">
  <div class="container">
    <h1>Delete Admin Account</h1>
    <p>If u want delete account permanently</p>
    <hr>
	<label for="id"><b>Customer ID</b></label>
    <input type="text"  name="cusid" value ="<%=id%>"  >

	<label for="user name"><b>User Name</b></label>
    <input type="text"  name="uname" value ="<%=uname%>" readonly >
    
    <label for="last name"><b>Last Name</b></label>
    <input type="text"  name="lname"  value ="<%=lname%>" readonly >

    <label for="email"><b>Email</b></label>
    <input type="text" name="email" value ="<%=email%>" readonly >

    <label for="phone"><b>Phone</b></label>
    <input type="text"  name="phone" value ="<%=phone%>" readonly >
    
  
    

<input type = "submit" class="registerbtn" name = "submit" value ="Delete Details">
   
  </div>
  
</form>

</body>
</html>