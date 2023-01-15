<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <title>Title</title>
</head>
<body>
ALL USERS LIST:


<br>
<br>
<table>
  <tr>
    <th>Name</th>
    <th>Surname</th>
    <th>Email</th>
    <th>Status</th>

  </tr>
  <c:forEach var="us" items="${allUsersAtt}">

    <c:url var="banButton" value="/admin/banUser">
      <c:param name="userId" value="${us.email}"/>
    </c:url>

    <c:url var="ubBanButton" value="/admin/unBanUser">
      <c:param name="userId" value="${us.email}"/>
    </c:url>

    <tr>
      <td>${us.name} </td>
      <td>${us.surname}</td>
      <td>${us.email}</td>
      <td>
        <c:choose>
          <c:when test="${us.enabled}">
          active
          <input type="button" value="BAN" onClick="window.location.href='${banButton}'"/>
          </c:when>
          <c:otherwise>
            banned
            <input type="button" value="UNBAN" onClick="window.location.href='${ubBanButton}'"/>
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </c:forEach>
</table>

</body>
</html>