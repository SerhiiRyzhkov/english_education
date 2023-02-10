<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Teenage Social Media Millionaires</title>
</head>
<body>
<h1>B2 Reading Test</h1>
<h2>Teenage Social Media Millionaires</h2>
<br>
Many kids dream of becoming millionaires before they`re twenty, but few realise their dreams. Some do, however. Harnessing new technology, their ideas become thriving multi-million-dollar businesses that inspire others. Let`s see how some of them did it.

Dominic McVey

Dominic became a millionaire at the age of 13 due to a simple misspelling. He had been searching on the internet for information about Visa credit cards but mistakenly spelt it Viza. This took him to the website of an American company that sold scooters. Dominic had always wanted a scooter but couldn`t afford one. So he contacted the site and offered to sell their scooters in the UK. The company gave him a deal: if he could sell five scooters, he would get one free. He scraped the money together, ordered the five scooters and sold them easily. After that, demand for scooters went up, and before long, he was selling thousands per week. He was later honoured by the queen as a young entrepreneur.

Maddie Bradshaw

10-year old Maddie wanted to decorate her school locker but couldn`t find exactly what she wanted in the stores. So instead, she came up with her own idea. She had recently been given 50 bottle caps by her uncle, who had an old Coke machine that didn`t work. She decorated these, added magnets to the back, and soon the handy, attractive magnets on her locker were attracting attention from all over the school. Her ideas didn`t stop there, though. With help from her mother and a few hundred dollars` investment, she converted her bottle-cap idea into jewellery. At the age of 12, she created ‘Snap-cap` necklaces with exchangeable magnetic pendants and add-ons, allowing girls to make custom designs that reflected their personalities. She made her first million when she was 13.

Nick D`Aloisio

15-year-old Nick was struggling with the amount of news on the internet. Despite his intention to keep up-to-date with current affairs, there just seemed no end to the stream of information. So he came up with ‘Trimit`, an app that compressed news articles into short summaries. Trimit was pretty basic, and summaries were mostly gibberish. However, the app attracted the attention of a Hong Kong investment company, which gave Nick $300,000 to develop his idea. He improved the app and re-launched it under the name ‘Summly`. This version was very successful and later sold to Yahoo! for 30 million dollars. Now Nick runs a team of programmers who work on algorithms and language processing intricacies while he focuses on design.

Sean Belnick

As a young teenager, Sean made money by selling Pokemon cards and mowing lawns. But he also had an eye for business and paid curious attention to his stepfather`s work as a manufacturer`s representative for office furniture. He noticed that customers generally had no need for face to face contact with suppliers, so he invested $500, learned HTML programming and created a website from which he sold mid-price office chairs. He sourced these directly from the manufacturer and stored them in his bedroom. His timing was perfect, as his business launched when companies were looking to cut costs. Sean, a millionaire by the age of 16, continues to work with his stepfather in a partnership that brings together experience gained over time and youthful, fresh ideas. Their company has won an award for its efforts to reduce energy consumption and carbon dioxide emissions.
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
