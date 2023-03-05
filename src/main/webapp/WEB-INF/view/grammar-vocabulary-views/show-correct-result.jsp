<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
roll-question-view
<form:form action="test" >
  Question ${indexAtt+1}/${amountAtt}
  <br>
  <br>
  <br>
  <br>
  ${curQuestionAtt.question}
  <br>
  <br>

  <br>
  <c:if test="${1==answerAtt}">
    <p style="color:green;">${curQuestionAtt.answer1}</p>
  </c:if>
  <c:if test="${1!=answerAtt and 1==choiceAtt}">
    <p style="color:red;">${curQuestionAtt.answer1}</p>
  </c:if>
  <c:if test="${1!=answerAtt and 1!=choiceAtt}">
    ${curQuestionAtt.answer1}
    <br>
  </c:if>

  <c:if test="${2==answerAtt}">
    <p style="color:green;">${curQuestionAtt.answer2}</p>

  </c:if>
  <c:if test="${2!=answerAtt and 2==choiceAtt}">
    <p style="color:red;">${curQuestionAtt.answer2}</p>

  </c:if>
  <c:if test="${2!=answerAtt and 2!=choiceAtt}">
    ${curQuestionAtt.answer2}
    <br>
  </c:if>

  <c:if test="${3==answerAtt}">
    <p style="color:green;">${curQuestionAtt.answer3}</p>

  </c:if>
  <c:if test="${3!=answerAtt and 3==choiceAtt}">
    <p style="color:red;">${curQuestionAtt.answer3}</p>

  </c:if>
  <c:if test="${3!=answerAtt and 3!=choiceAtt}">
    ${curQuestionAtt.answer3}
    <br>
  </c:if>
  <input type="submit" value="Next">

</form:form>


</body>
</html>