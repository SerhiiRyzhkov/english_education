<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Three popular inventions from the 1920s</title>
</head>
<body>
<h1>A2 Reading Test</h1>
<h2>Three popular inventions from the 1920s</h2>
<br>
I remember my first day at school very well. I knew the school quite well because my older sister, Sandy, went there and every day, dad and I met her at the school gate after school. Every day, she ran out of the school with her friends. She often carried a painting. I felt jealous. I wanted to paint too!

I was five years old when I started school. Most children in my class started school in September, but I started school in January, when I was five years old, because my birthday is in December. Three other kids started school on the same day as me. I was excited about my first day. I had my new uniform: a black skirt, a white t-shirt and green jumper, and a new red bag. When we arrived that day, a teacher met the new children at the school gate. Dad hugged me and said goodbye. I stood with the other children. I didn`t talk to them because I was too nervous. Then, Mrs Wilson took us to our classroom. All the other children were already there. They looked at us when we entered the room. When thirty children looked at me, I started to cry!

But I wasn`t upset for long. I sat with the other children on the carpet and the class teacher, Miss Holland, read us a story. Later, we drew pictures with coloured pencils, and at break time, I made friends with a girl called Megan. At the end of the day, I ran to the school gate with Megan and my picture, just like Sandy always did.
<br>
<br>
<br>
<br>
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
