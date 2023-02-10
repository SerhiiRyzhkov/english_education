<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>How sleep transformed professional football</title>
</head>
<body>
<h1>B1 Reading Test</h1>
<h2>How sleep transformed professional football
</h2>
<br>
A few decades ago, professional footballers spent their nights partying. Now, they are much more aware of the benefits of a good night`s sleep.

The change began in the mid-1990s, when mattress salesman Nick Littlehales contacted the manager of the Manchester United football team, Alex Ferguson, asking whether he had ever considered how sleep affected performance on the pitch. Interested, Ferguson arranged for Littlehales to give a presentation to his team. Before long, the whole team had new mattresses and pillows, and Littlehales soon became football`s leading mattress advisor. In 1998, he supplied mattresses for England`s World Cup team, and at the 2004 Euros, he created individual sleep routines for every player.

Gradually, club managers began to pay more attention to scientific sleep research, and for good reason. In 2011, sleep specialist Cheri Mah discovered that increasing sleep to 8-10 hours per night massively increased the speed and shot accuracy of basketball players. Other research shows that a single night of inadequate sleep can increase the risk of injury, and 64 hours of bad sleep reduces strength, power and balance, and can even cause the body to eat its own muscles!

Consequently, managers started trying to improve their players` sleep. Southampton Football Club`s manager Alek Gross, for example, forbade his players from consuming caffeine, sugar or fatty foods, which prevent sleep, in the evenings. Instead, they were given milky protein drinks which made them tired. The Mexico team manager was also concerned about sleep loss when travelling to their World Cup group games in Russia. Together with Manchester United sports scientist Robin Thorpe, he drew up a sleep and training schedule to optimize performance. Even the hotel bedrooms were set to the ideal sleeping temperature. The players supported the routine. In fact, on the evening of a game, their captain Rafael Marquez even asked fans who were celebrating at the same hotel to keep quiet because the team were sleeping. The intervention was a great success. Mexico won their next game versus South Korea and even beat Germany in their group.

Now, many teams and players are making an effort to improve their sleep patterns, using various means. Manchester City player Sergio Aguero, for example, was finding it hard to sleep because his muscular body prevented his legs from closing when he lay on his side. He got a new mattress which matched his height and weight, thus keeping his neck and back aligned in the night. Meanwhile, James Milner from Manchester City found it hard to sleep after evening games, so would play computer games into the early hours. As a result, he was too tired to train the following morning. Setting a routine with a late bedtime, early rise and afternoon nap helped to fix this problem. Since these interventions are cheap and effective, even the less well-known teams can benefit. Brentford, for example, has the smallest budget in the championship league. Even so, the club`s head of performance, Chris Haslam, introduced wrist trackers to monitor player`s sleep, and these have led to a clear improvement in players` attentiveness.

Whereas in the past, playing after a party and a few hours` sleep was seen as a badge of honour, a good sleep is now considered an essential part of performance.
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
