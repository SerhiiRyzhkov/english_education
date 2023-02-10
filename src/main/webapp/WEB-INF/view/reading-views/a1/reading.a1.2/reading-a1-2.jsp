<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>Pancake Day</title>
</head>
<body>
<h1>A1 Reading Test</h1>
<h2>Pancake Day</h2>
<br>
In the UK, people celebrate Pancake Day. This festival takes place in February, on Shrove Tuesday. This is the day before Lent. Lent is an important time in the Christian calendar. It lasts 47 days. During Lent, people traditionally stop eating delicious food, like cakes and chocolate. So on Shrove Tuesday, they must eat up all the nice food in their cupboards. So they make pancakes, and they often eat them with lemon and sugar.

Many British towns hold pancake races on Shrove Tuesday. People wear fancy dresses and run down the street with a pancake in a pan. They must throw the pancake in the air and catch it in the pan as they run. It must not fall on the ground.

The tradition of pancake races started in Olney, Buckinghamshire. According to a story, a housewife made pancakes on Easter Sunday in 1445. Then she heard the church bells. She was worried because she was late for church, so she ran to church with her pan and pancake in her hand! Now, Olney’s pancake race is famous. All the competitors are housewives. They must toss the pancake three times as they run to the church. Then they must serve their pancake to the bell-ringer and receive a kiss from him.

Westminster School, an old boys’ school in London, has a different pancake tradition. The school cook makes a huge pancake and throws it over a five-metre high bar. The schoolboys run to take a piece of the pancake. The boy with the biggest piece of pancake wins some money!

These days, few British people give up delicious food for Lent. But most people eat pancakes on Pancake Day.
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
