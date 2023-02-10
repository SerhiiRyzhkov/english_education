<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
    <title>My next summer holiday plan</title>
</head>
<body>

<h1>A1 Reading Test</h1>
<h2>My next summer holiday plan</h2>
<br>
<img src="<c:url value="/resources/img/reading/a1/1/Emma.jpg" />" alt="Emma" />
<br>
I usually teach English at a language school in the summer. I often can`t enjoy the summer because I am so busy. So next
summer, I`m not planning to work. Instead, I`m going to have a proper summer holiday. I`m going to buy a campervan and
drive around Ireland. I`m going to visit lots of beautiful beaches and learn to surf! I`m mostly going to travel alone,
but I will visit friends. One friend, Cathy, is a school teacher, so she has a long summer holiday, so hopefully, we
will spend a week or two together. Another Irish friend, Joe, has a new house there, so I`ll stay with him for a few
days and help him paint the rooms.
<br>
<img src="<c:url value="/resources/img/reading/a1/1/Jayden.jpg" />" alt="Jayden" />
<br>
Last year, I did a surfing instructor course, and I spent the summer teaching people to surf. It was great! I was in the
sea and sun all day, and every evening, my friends and I had a barbecue on the beach. The surf school asked me to return
this summer, but I`m not going to do that. Last autumn, I learned to scuba dive, and I`m going to do a diving instructor
course soon. Then, I plan to teach diving all summer to earn some money. I don`t want to stay in the UK. It`s too cold
here! I want to fly to Greece or Egypt. I`ll go there alone. I`m sure I will meet lots of cool people there!
<br>
<img src="<c:url value="/resources/img/reading/a1/1/Pamela.jpg" />" alt="Pamela" />
<br>
Well, last month, my friend Alfie and I had a crazy idea. We decided to cycle from the south of England to the north of
Scotland, from Land`s End to John o`Groats. It`s an 874-mile trip! It takes ten to fourteen days. But I`m not a fast
cyclist, and I want to enjoy visiting different places, so we plan to ride for four weeks. We will visit historic cities
like Bath and Edinburgh, cycle through the pretty countryside and visit museums and castles on the way. Alfie wanted to
camp, but I`d like a comfortable bed at the end of each day, so we are going to stay in guest houses. I hope it doesn`t
rain a lot, but I hope it`s not too hot either!
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


</html>