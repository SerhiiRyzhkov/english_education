<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page session="false"%>
<html>
<body>
<h1>Home Page</h1>
<h2>${message}</h2>


<security:authorize access="hasRole('ADMIN')"><a href='<c:url value="/admin" />'>Admin Page</a></security:authorize>
<br><br>
Current user: ${currentUserAtt}
<br><br>
<form:form action="test/testStart">
    <input type="submit" value="GO TEST!">
</form:form>

<br><br>
Rating of best users
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Points</th>
    </tr>
    <c:forEach var="us" items="${ratingAtt}">
        <tr>
               <c:if test="${us.email==currentUserAtt}">

                <th><u>${us.name}</u></th>
                <th><u>${us.surname}</u></th>
                <th><u>${us.points}</u></th>

               </c:if>
                <c:if test="${us.email!=currentUserAtt}">
                    <td>${us.name}</td>
                    <td>${us.surname}</td>
                    <td>${us.points}</td>
                </c:if>
        </tr>
    </c:forEach>
</table>

<br><br>
<form:form action="logout">
    <div>
        <button type="submit">Logout</button>
    </div>
</form:form>


</body>
</html>