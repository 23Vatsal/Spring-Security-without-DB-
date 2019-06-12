<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head><h1><u>Security Home Page</u></h1></head>

<body>
<hr>
<p>
<h3><i>Welcome Human</i></h3>
</p>

<hr>
<p>
  User: <security:authentication property="principal.username"/>
  <br><br>
  Role(s): <security:authentication property="principal.authorities"/>
  <br><br>


<hr>
<security:authorize access="hasRole('MANAGER')">
<!-- For Managers -->
<p>
  <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
  (Only for Managers)

</p>
</security:authorize>
<br>
<security:authorize access="hasRole('ADMIN')">
<!-- For Admin -->
<p>
  <a href="${pageContext.request.contextPath}/system">Admin Meeting</a>
  (Only for Admins)
  </p>
  </security:authorize>
<!-- Add logout button -->
<form:form action="${pageContext.request.contextPath}/logout" method="POST">

<input type="submit" value="Logout"/>

</form:form>

</body>





</html>