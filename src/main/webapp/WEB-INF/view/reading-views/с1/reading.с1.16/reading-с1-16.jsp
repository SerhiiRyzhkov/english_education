<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>Four book summaries</title>
</head>
<body>
<h1>С1 Reading Test</h1>
<h2>Four book summaries</h2>
<br>
<img src="<c:url value="/resources/img/reading/c1/16/Summaries.jpg"/>" alt="Banana" />
<br>
Four positive books about the world
Factfulness – Hans Rosling with Ola Rosling and Anna Rosling Rönnlund
In Factfulness, Professor Hans Rosling, along with two collaborators, asks simple questions about the world. Questions like 'How many girls finish school?' and 'What percentage of the world's population is poor?' It turns out the majority of us get the answers to these questions completely wrong. Why does this happen? Factfulness sets out to explain why, showing that there are several instincts humans have that distort our perspective.

For example, most people divide the world into US and THEM. In addition, we often believe that things are getting worse. And we are consuming large amounts of media that use a sales model based on making us afraid.

But according to the authors, the world isn't as bad as we think. Yes, there are real concerns. But we should adopt a mindset of factfulness – only carrying opinions that are supported by strong facts. This book is not concerned with the underlying reasons for poverty or progress, or what should be done about these issues. It focuses on our instinctive biases, offering practical advice to help us see the good as well as the bad in the world.



Enlightenment Now – Steven Pinker
Are things getting worse every day? Is progress an impossible goal? In Enlightenment Now, Steven Pinker looks at the big picture of human progress and finds good news. We are living longer, healthier, freer and happier lives.

Pinker asks us to stop paying so much attention to negative headlines and news that declares the end of the world. Instead, he shows us some carefully selected data. In 75 surprising graphs, we see that safety, peace, knowledge and health are getting better all over the world. When the evidence does not support his argument, however, he dismisses it. Economic inequality, he claims, is not really a problem, because it is not actually that important for human well-being. One cannot help wondering how many people actually living in poverty would agree.

The real problem, Pinker argues, is that the Enlightenment values of reason and science are under attack. When commentators and demagogues appeal to people's tribalism, fatalism and distrust, then we are in danger of causing irreparable damage to important institutions like democracy and world co-operation.



The Rational Optimist – Matt Ridley
For more than two hundred years the pessimists have been winning the public debate. They tell us that things are getting worse. But in fact, life is getting better. Income, food availability and lifespan are rising; disease, violence and child mortality are falling. These trends are happening all around the world. Africa is slowly coming out of poverty, just as Asia did before. The internet, mobile phones and worldwide trade are making the lives of millions of people much better.

Best-selling author Matt Ridley doesn't only explain how things are getting better; he gives us reasons why as well. He shows us how human culture evolves in a positive direction thanks to the exchange of ideas and specialisation. This bold book looks at the entirety of human history – from the Stone Age to the 21st century – and changes the notion that it's all going downhill. The glass really is half-full.



The Great Surge – Steven Radelet
The majority of people believe that developing countries are in a terrible situation: suffering from incredible poverty, governed by dictators and with little hope for any meaningful change. But, surprisingly, this is far from the truth. The reality is that a great transformation is occurring. Over the past 20 years, more than 700 million people have increased their income and come out of poverty. Additionally, six million fewer children die every year from disease, millions more girls are in school and millions of people have access to clean water.

This is happening across developing countries around the world. The end of the Cold War, the development of new technologies and brave new leadership have helped to improve the lives of hundreds of millions of people in poor countries.

The Great Surge describes how all of this is happening and, more importantly, it shows us how we can accelerate the process.<br>
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
