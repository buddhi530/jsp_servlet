<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>


<link rel="stylesheet" type="text/css" href="css/hda2.css">

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">


</head>
<body>

<br><br><br>
<div class="testbox">


  <h1>Login</h1>

  <form  action="log" method="post">
  <center>
   <input type="text" name="username" id="name" placeholder="UserName" required="required" autocomplete="off">
  <label  for="name"></i></label>

  <input type="password" name="pwd" id="name" placeholder="Password" required="required" autocomplete="off">
  </center>  
 <div class="gender">
    <input type="radio" value="Admin" id="male" name="type" checked/>
    <label for="male" class="radio" chec>Admin</label>
    <input type="radio" value="User" id="female" name="type" />
    <label for="female" class="radio">User</label>
   </div> 

  <center>
  

   <input type = "submit"  name  = "submit" value="Login"></a>
   
     <br><br>
  </center>
   <center><a href="Register.jsp">Create an Account</a></center>
  </form>

</body>
</html>