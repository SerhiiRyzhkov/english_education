<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>
<html>
<body>
<h1>Admin Page</h1>
<h2>${message}</h2>

<a href="/homeReff">To home page</a>

<br><br>
<form:form action="admin/listOfUsers">
  <input type="submit" value="GET ALL USERS LIST">
</form:form>
<br><br>
<form:form action="admin/addNewQuestions">
  <input type="submit" value="ADD NEW SIMPLE QUESTIONS">
</form:form>
<br><br>
<form:form action="admin/addNewListening">
  <input type="submit" value="ADD NEW LISTENING">
</form:form>
<br><br>
<form:form action="admin/addNewReading">
  <input type="submit" value="ADD NEW READING">
</form:form>
<br><br>
<form:form action="admin/addWord">
  <input type="submit" value="ADD NEW WORD OF THE DAY">
</form:form>
<br><br>
<form:form action="logout">
  <div>
    <button type="submit">Logout</button>
  </div>
</form:form>

<!-- Use below code if Spring's form taglib is not used  -->

<%--
<form method="post" action="logout" id="form-logout">
    <input type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}" />
    <div>
        <button type="submit">Logout</button>
    </div>
</form>
--%>
</body>
</html>