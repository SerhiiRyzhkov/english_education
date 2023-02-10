<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<br>
<br><br>
Current user: ${currentUserAtt}
<br><br>
You are going to answer 20 questions:

<form:form action="testing">
  <input type="submit" value="begin">
</form:form>

<br><br>
<<c:forEach var="question" items="${questionsAtt}">
  ${question.question}
  <br><br>
</c:forEach>




</body>
</html>