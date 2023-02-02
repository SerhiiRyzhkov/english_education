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


<c:if test="${isFirstVisitAtt}">
    It`s seem like your first visit! We recommend to check your actual level using our test
    <br>
    <form:form action="test/testStart">
        <input type="submit" value="GO TEST!">
    </form:form>

    <br><br>
</c:if>


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


CHAT

            <br>


            <c:forEach var="mes" items="${mapAtt}">
                <c:if test="${mes.value.email!=currentUserAtt}">
                    <a>${mes.key.timestamp} <i>${mes.value.name} ${mes.value.surname}:</i> ${mes.key.message}</a>
                    <br>
                </c:if>
                <c:if test="${mes.value.email==currentUserAtt}">
                    <a>${mes.key.timestamp} <u><b>${mes.value.name} ${mes.value.surname}:</u></b> ${mes.key.message}</a>
                    <br>
                </c:if>

            </c:forEach>



<form:form action="chatSendMessage">
    <input type="text"  name="messageAtt">
        <button type="submit">Send</button>

</form:form>














<br>

<br>

<br>
<br>

<br>



<form:form action="logout">
    <div>
        <button type="submit">Logout</button>
    </div>
</form:form>




</body>
</html>