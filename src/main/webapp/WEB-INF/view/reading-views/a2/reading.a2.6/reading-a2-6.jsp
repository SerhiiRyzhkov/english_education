<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>How my life has changed</title>
</head>
<body>
<h1>A2 Reading Test</h1>
<h2>How my life has changed</h2>
<br>
I used to work on cruise ships as a musician. I travelled a lot! I spent the month before the first lockdown in four continents! I used to get up really early, drive to the airport and fly to a port across the world and get on a ship just to get to work! Then I used to spend between three and fourteen days on the ship. The ships were great. The food was excellent, and the staff were brilliant. The ship stopped at fantastic places, and I often used to spend the afternoon at the beach drinking cocktails or sightseeing. But there were disadvantages too. I often didn`t know anyone on the ship. But the passengers all knew me, and they used to talk to me every time I left my cabin. I didn`t have any privacy. Of course, I had to chat to them politely even when I wasn`t in the mood.

But now, everything has changed. The cruises aren`t running now, and I don`t know when they will run again, and I`ve been in my flat for a year. I never used to spend much time here, and I haven`t spent a whole year in England for over twenty years! But I`ve enjoyed it. I bought a bike last year, and I`ve found some great beach cafes that I never used to know about. I also bought a campervan, and I drove around the coast. I always used to prefer beaches in the Caribbean and the Mediterranean to British beaches. The weather is much better for a start! But I found some beautiful places last year. I could park on the beach in some places and run straight into the sea! They were much less touristy and more peaceful than the places where the cruise ships go.

I`m spending a lot more time alone now. I didn`t use to be alone much when I was working. But since the pandemic started, I have developed new relationships with people who I didn`t use to know very well. I always used to prefer the company of entertainers and people who like to travel. I used to think that people with normal jobs were boring. But since last year, I`ve got to know some really interesting, strong, kind and caring people! So that`s been really valuable.
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
