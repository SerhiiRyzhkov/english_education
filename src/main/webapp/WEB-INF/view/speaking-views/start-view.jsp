<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
SPEAKING
<br>
<br>

<form:form action="allTasks/">
    <button type="submit">Show all topics</button>
</form:form>
<br>
<br>

<form:form action="randomTaks/">
    <button type="submit">Random topic</button>
</form:form>
<br>



<br>
<a href="/homeReff">To home page</a>
<br>

</body>
</html>
