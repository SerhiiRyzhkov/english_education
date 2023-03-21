<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: serhii.ryzhkov
  Date: 21.03.2023
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="saveSpeaking" >

    Topic: <input type="text" name="Topic">
    <br>
    Quesions:
    <br>
    <input type="text" name="question1" >
    <br>
    <input type="text" name="question2" >
    <br>
    <input type="text" name="question3" >
    <br>
    <input type="text" name="question4" >
    <br>
    <input type="text" name="question5" >
    <br>
    <input type="text" name="question6" >
    <br>

<input type="submit" value="SAVE">

</form:form>

<br>
<a href="/homeReff">To home page</a>
<br>

</body>
</html>
