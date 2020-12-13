<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>


</head>
<body>



<%
if(session.getAttribute("username")== null)
{
response.sendRedirect("Login.jsp");	
}

%>

  <a href="Home.jsp">Back</a>   <center><h1>Customer Details</h1></center>
           <c:forEach var = "usr" items = "${UserDetails}">
            <h2 style="text-align:center">Welcome   ${usr.username}</h2>
           
          </c:forEach>     

     <div class="card">
  <img src="imgs/user.jpg" alt="John" style="width:100%">
 
    <c:forEach var = "usr" items = "${UserDetails}" >
    <c:set var ="id" value = "${usr.id}"/>
    <c:set var ="uname" value = "${usr.username}"/>
    <c:set var ="lname" value = "${usr.lastname}"/>
    <c:set var ="email" value = "${usr.email}"/>
    <c:set var ="phone" value = "${usr.phone}"/>
    <c:set var ="pass" value = "${usr.password}"/>
  <h1>${admin.username}</h1>
  <p class="title">Customer</p>
  <p>User Id   : ${usr.id}</p>
  <p>Last Name : ${usr.lastname}</p>
  <p>Email     : ${usr.email}</p>
  <p>Phone     : ${usr.phone}</p>
  <p>Password  : ${usr.password}</p>
  
  </c:forEach>
  <c:url value="UpdateCus.jsp" var ="cusupdate" >
  
  <c:param name = "id" value="${id}"/>
  <c:param name = "uname" value="${uname}"/>
  <c:param name = "lname" value="${lname}"/>
  <c:param name = "email" value="${email}"/>
  <c:param name = "phone" value="${phone}"/>
  <c:param name = "pass" value="${pass}"/>
  
  </c:url>
 <a href ="${cusupdate}"> <p><button>Update</button></p></a>
 
 
 
<c:url value ="DeleteUser.jsp" var ="userdelete">
<c:param name = "id" value ="${id}"/>
  <c:param name = "uname" value="${uname}"/>
  <c:param name = "lname" value="${lname}"/>
  <c:param name = "email" value="${email}"/>
  <c:param name = "phone" value="${phone}"/>
  <c:param name = "pass" value="${pass}"/>
    

</c:url>
 <a href = "${userdelete}"> <p><button>Delete</button></p></a>
</div>
        

													
</body>
</html>