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
  font-size: 14px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 5px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 10px;
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

            <c:forEach var = "admin" items = "${AdminDetails}" >
          
       <h2 style="text-align:center">Welcome   ${admin.username}</h2>
                </c:forEach>
<div class="card">
  <img src="imgs/unnamed.jpg" alt="John" style="width:100%">
 
  <c:forEach var = "admin" items = "${AdminDetails}" >
<c:set var= "id" value ="${admin.id}"/>
<c:set var= "uname" value ="${admin.username}"/>
<c:set var= "lname" value ="${admin.lastname}"/>
<c:set var= "email" value ="${admin.email}"/>
<c:set var= "phone" value ="${admin.phone}"/>
<c:set var= "pass" value ="${admin.password}"/>


  <h1>${admin.username}</h1>
  
  <p class="title">System Admin</p>
  <p>User Id   : ${admin.id}</p>
  <p>Last Name : ${admin.lastname}</p>
  <p>Email     : ${admin.email}</p>
  <p>Phone     : ${admin.phone}</p>
  <p>Password  : ${admin.password}</p>
  


    </c:forEach>
    <c:url value ="UpdateAdmin.jsp" var ="adminupdate">
  <c:param name = "id" value ="${id}"/>
  <c:param name = "uname" value="${uname}"/>
  <c:param name = "lname" value="${lname}"/>
  <c:param name = "email" value="${email}"/>
  <c:param name = "phone" value="${phone}"/>
  <c:param name = "pass" value="${pass}"/>
    
    </c:url>
<a href ="${adminupdate}"><p><button>Update</button></p></a>


  <p><button>Delete</button></p>

</body>
</html>