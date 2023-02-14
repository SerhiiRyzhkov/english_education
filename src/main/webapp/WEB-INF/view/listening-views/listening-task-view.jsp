<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>${curTaskAtt.title}</title>
</head>
<body>
<h1>${curTaskAtt.level} Listening Test</h1>
<h2>${curTaskAtt.title}</h2>
<%--

<img src="<c:url value="/resources/img/reading/c1/14/Banana.jpg" />" alt="Banana" />
<embed src="<c:url value="/resources/audio/listening/a1/20/20.mp3" />
Hello from audioSpring!
--%>

<br>
<p>Click on the play button to play a sound:</p>

<audio controls>
  <source src="/resources/audio/listening/a1/20/20.mp3">

  Your browser does not support the audio element.
</audio>

<br>
<br>
<br>
<br>


<h2>Task:</h2>
<br>
<br>
<form:form action="receive" modelAttribute="tasksAtt">
  Question ${indexAtt+1}/${amountAtt}
  <br>
  <br>
  <br>
  <br>
  ${curQuestionAtt.question}
  <br>
  <br>
  Choose the correct answer:
  <br>
  <input type="radio" value="1" name="choiceAtt" checked> ${curQuestionAtt.answer1}
  <br>
  <input type="radio" value="2" name="choiceAtt"> ${curQuestionAtt.answer2}
  <br>
  <input type="radio" value="3" name="choiceAtt"> ${curQuestionAtt.answer3}


  <br>
  <br>

  <input type="submit" value="OK" checked>

</form:form>

</body>

</body>
</html>
