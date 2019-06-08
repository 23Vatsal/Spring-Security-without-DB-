<!-- link for using spring MVC form tags -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- link for using JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Custom Login Form</title>
  <style>
    .failed{
       color: red;} 
  
  </style>

</head>

<body>
   <h3>My Custom Login Form</h3>
   <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">  
  
  <!-- Checking for error -->
  <c:if test="${param.error!=null}">
     
     <i class="failed">Invalid Username/Password !!</i>
  
  </c:if>
   
   <p>
   Username: <input type="text" name="username"/>
   </p>
   <p>
   Password: <input type="password" name="password"/>
   </p>
   <p>
   <input type="submit" value="Login"/>
   </p>

 </form:form>

</body>




</html>