<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/irregular/check" modelAttribute="verbsAtt">
Fill the table:

    <table id="answers">
        <tr>
            <th>BASE</th>
            <th>PAST</th>
            <th>PARTICIPLE</th>

        </tr>
        <c:forEach var="verb" items="${verbsAtt}" varStatus="uStatus">
        <tr>

            <td>${verb.base}</td>
            <td><input type="text" name="${uStatus.index}_past" autocomplete="off" /></td>
            <td><input type="text" name="${uStatus.index}_participle" autocomplete="off"/></td>

        </tr>
        </c:forEach>

    </table>


   <input type="submit" value="CHECK">
</form:form>
<br>

<form:form action="/irregular/">
    <button type="submit">BACK</button>
</form:form>
<br>

</body>
</html>
