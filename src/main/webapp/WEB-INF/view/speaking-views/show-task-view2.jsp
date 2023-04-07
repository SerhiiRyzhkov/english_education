<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${taskAtt.title}</h1>
<br>
<c:forEach var="q" items="${questionsAtt}">
    <h3>${q.question}</h3>
    <br>
</c:forEach>
<br>


<form:form action="/speaking/">
    <button type="submit">Speaking</button>
</form:form>
<br>


<br>
<a href="/homeReff">To home page</a>
<br>


</body>
</html>
