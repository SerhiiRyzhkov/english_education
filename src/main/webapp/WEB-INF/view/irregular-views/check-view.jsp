<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form:form action="/irregular/next" modelAttribute="verbsAtt">
  <br>

  <table id="answers">
    <tr>
      <th>BASE</th>
      <th>PAST</th>
      <th>PARTICIPLE</th>

    </tr>
    <c:forEach var="verb" items="${verbsAtt}" varStatus="uStatus">
      <tr>
        <td>
          <c:if test="${verb.value}">
            <font color="green">${verb.key.base}</font>
          </c:if>
          <c:if test="${!verb.value}">
            <font color="red">${verb.key.base}</font>
          </c:if>
        </td>
        <td>
          <c:if test="${verb.value}">
            <font color="green">${verb.key.past}</font>
          </c:if>
          <c:if test="${!verb.value}">
            <font color="red">${verb.key.past}</font>
          </c:if>
        </td>
        <td>
          <c:if test="${verb.value}">
            <font color="green">${verb.key.past}</font>
          </c:if>
          <c:if test="${!verb.value}">
            <font color="red">${verb.key.past}</font>
          </c:if>
        </td>

      </tr>
    </c:forEach>

  </table>


  <input type="submit" value="NEXT">
</form:form>
<br>

<form:form action="/irregular/">
  <button type="submit">BACK</button>
</form:form>
<br>

</body>
</html>
