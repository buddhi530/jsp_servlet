<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Classic Curves </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" type="text/css" href="css/ConCss.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
  <div class="HeadName">
        <h1>Classic Curves</h1>
    </div>  
<!----------------------------------------------------------------------------------->  
<div class="navbar">
    <a href="#home">Home</a>
    <div class="dropdown">
      <button class="dropbtn">Products
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="#">Casual Dresses</a>
        <a href="#">Office Wears</a>
        <a href="#">Party Dress</a>
      </div>
    </div>
    <a href="#news">News</a>
    <a href="#offers">Offers</a>
    <div class="dropdown">
        <button class="dropbtn">Accessories 
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="#">Chains</a>
          <a href="#">Rings</a>
          <a href="#">Bangles</a>
          <a href="#">Neclaces</a>
        </div>
      </div>    
      <a href="#news">About Us</a>
      <a href="#news">Contact Us</a>
    </div>
 </div>
 <div class="search-container">
    <form action="/action_page.php">
      <input type="texXt" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div> 

<!-----------------LOGIN BUTTON------------------------------------------------------------------> 
<div class="Lpos">
    <button class="Login">Login/ SignUp</button>
</div>
<!-----------------CART BUTTON------------------------------------------------------------------> 
<div class="cart">
<i class='fas fa-shopping-cart' style='font-size:30px;color:rgb(0, 0, 0)'></i>
</div>
<!-----------------HEART BUTTON------------------------------------------------------------------> 
<div class="heart">
    <i class='fas fa-heart' style='font-size:30px'></i>
    </div>

<!------------------------------CONTACT US------------------------------------------------> 
<div class="ConUs">
    <h1>Contact Us</h1>
</div>  

<!------------------------------MAIN IMAGE----------------------------------------------->
<div class="ConMain">
    <img src="imgs/ConMain.jpg" width="1600px" height="400px">
  </div>
  <BR>
<!------------------------------FORM----------------------------------------------->
<div class="Cn">
    <h1>Contact Form</h1>
</div>  


  <div class="container">
    <form action="">
      <label for="fname">First Name</label>
      <input type="text" id="fname" name="firstname" placeholder="Your name..">
  
      <label for="lname">Last Name</label>
      <input type="text" id="lname" name="lastname" placeholder="Your last name..">
  
      <label for="lname">Country</label>
      <input type="text" id="country" name="country" placeholder="Your Country..">
  
      <label for="subject">Subject</label>
      <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
  
      <input type="submit" value="Submit">
    </form>
  </div>
<!-------------------------------BOT--------------------------------------------->
<div class="Bot">
  <img src="imgs/Bot.jpg" width="1850px" height="400px">
</div>


</body>
</html>