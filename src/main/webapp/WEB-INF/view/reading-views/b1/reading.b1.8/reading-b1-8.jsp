<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>SpeedFlatmating</title>
</head>
<body>
<h1>B1 Reading Test</h1>
<h2>SpeedFlatmating</h2>
<br>When you are looking for rental accommodation in a shared house, you have to think not only about the location and your budget, but also about who you are sharing with, as your housemates can make the difference between a successful or an unhappy house-share.

SpeedFlatmating is a perfect way to find the ideal house or flatmate. SpeedFlatmating events, which are organised by the website speedflatmating.co.uk, are mainly held in London. However, some events are held in other British towns and cities. They typically take place in a bar or pub. At these events, people looking for accommodation can meet people with available rooms, or other people on the lookout for accommodation who they can rent a place with.

On arrival at a SpeedFlatmating event, guests are given a sticker to wear. White stickers indicate that you have an available room. Pink stickers are for people who are looking for a room. On white stickers, people write their name, the rental cost of the room and its nearest tube station. On pink stickers, people write their name, their budget and the area where they want to live.

The website organises about 17 events per month in London. Their larger events cover the whole of central London and are geared towards people who are flexible about where they want to live. They also run local events for people who already know where they want to live.

Users enjoy SpeedFlatmating for various reasons. Firstly, it cuts out the long, boring process of advertising and showing people around a flat. Also, potential flatmates can get to meet each other in a relaxed, social setting and find out whether they would be a good match for a flatshare or not. As well as meeting potential flatmates, many people say they enjoy the friendly atmosphere and make new friends at the events.

A huge number of people have benefitted from SpeedFlatmating. Paul from London says, ‘I had been having problems finding a place to live in London because I`m in my forties. Most people sharing accommodation in London are in their twenties and thirties, and I didn`t really fit in. I went to a SpeedFlatmating event and met three other people in the same situation as me, so we decided to get together and rent a place. Within a week, we had found a place within our budget.`

Melissa says, ‘I was just starting to think about moving out of my parents` home, and SpeedFlatmating seemed like a good way to find out more. I was quite nervous about attending the event on my own, but when I got there, I realised that everyone else was nervous too, and so I was able to relax, enjoy myself and meet people. I met a landlord there who was looking for tenants, and I arranged to have a look round his house. I`m moving in next week! It was as simple as that!`
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
