<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
Hello! This is a ${typeAtt} test. You are going to answer ${amountAtt} questions. Press "START" to begin
<br>
<br>
<form:form action="/GV/test">
    <input type="submit" value="START">
</form:form>
</body>
</html>
