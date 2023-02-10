<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${tasksAtt.get(0).level} Reading practice</h1>
<br>






<c:forEach var="task" items="${tasksAtt}">

    <c:url var="showTask" value="/reading/showTask">
        <c:param name="taskId" value="${task.id}"/>
    </c:url>

        <input type="button" value="${task.title}" onClick="window.location.href='${showTask}'"/>

    <br>
    <br>


</c:forEach>

</body>
</html>
