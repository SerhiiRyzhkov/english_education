<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
Fill the questions for listening task:
<br>
Question: ${indexAtt+1} / ${amountAtt}
<br>

<form:form action = "saveLQuestions" modelAttribute="questionAtt">
    Question:
    <form:input path="question"/>
    <br>
    Answer 1:
    <form:input path="answer1"/>
    <input type="radio" value="1" name="choiceAtt" checked>
    <br>
    Answer 2:
    <form:input path="answer2"/>
    <input type="radio" value="2" name="choiceAtt">
    <br>
    Answer 3:
    <form:input path="answer3"/>
    <input type="radio" value="3" name="choiceAtt">
    <br>
<input type="submit" value="SUBMIT">

</form:form>
</body>
</html>
