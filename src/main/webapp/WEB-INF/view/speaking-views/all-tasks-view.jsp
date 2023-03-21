<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: serhii.ryzhkov
  Date: 20.03.2023
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>



<c:forEach var="task" items="${allTasks}">

    <c:url var="showTask" value="/speaking/showTask">
        <c:param name="taskId" value="${task.id}"/>
    </c:url>

    <input type="button" value="${task.title}" onClick="window.location.href='${showTask}'"/>

    <br>
    <br>


</c:forEach>

</body>
</html>
