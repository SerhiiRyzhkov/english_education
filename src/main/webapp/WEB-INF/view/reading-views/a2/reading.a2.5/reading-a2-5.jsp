<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Three experiences I have had</title>
</head>
<body>
<h1>A2 Reading Test</h1>
<h2>Three experiences I have had</h2>
<br>

Dear Sir / Madam,

I would like to apply for the job of tour leader for your Overland Africa tours. I have had lots of useful experience for this role.

I have spent five months backpacking around Africa. In 2018, I visited Ethiopia, Kenya and Tanzania. I used local transport and organised my own accommodation, food and visas. I enjoyed meeting local people, learning about local traditions and visiting natural parks. I read and learned a lot about the culture and wildlife, and I even learned some Swahili and Afrikaans. This trip taught me to be independent and to organise travel arrangements.

I have also worked as a leader at a children`s summer camp in the south of England. I worked there in 2017. I led activities for children aged 9-12, including football, climbing and campfire songs and games. For this work, I received training in climbing instruction and first aid. During this time, I developed many useful skills. For example, I had to ensure the children were always safe and happy. I learned how to be helpful and positive, and I also learned ways to entertain people and help them make friends when they are with strangers.

Finally, I have completed the Active Youth Challenge. I did this while I was at high school in 2016. To complete this challenge, I firstly had to volunteer with a local organisation. I helped at a social club for the elderly, where I chatted and played games with the members. The experience taught me to be patient and friendly. Secondly, I had to learn something by myself. I learned car mechanics. This taught me some useful, practical skills. Thirdly, I organised a four-day camping and hiking trip in the Scottish mountains with other students from my school. This experience taught me about camping equipment and how to deal with problems like bad weather and getting lost.

I believe I have lots of useful experience to work as an Overland Tour Guide. I would love the opportunity to tell you more about my skills at an interview.

Yours faithfully,

Nicholas Rigby
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
