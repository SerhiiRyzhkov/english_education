<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

Irregular Verbs – Complete List

<br>
<br>
<table>
    <tr>
        <th>BASE</th>
        <th>PAST</th>
        <th>PARTICIPLE</th>
    </tr>
    <c:forEach var="verb" items="${allVerbsAtt}">
        <tr>
            <td>${verb.base}</td>
            <td>${verb.past}</td>
            <td>${verb.participle}</td>
        </tr>
    </c:forEach>
</table>
<br>

<br>

<form:form action="/irregular/">
    <button type="submit">BACK</button>
</form:form>
<br>


</body>
</html>
