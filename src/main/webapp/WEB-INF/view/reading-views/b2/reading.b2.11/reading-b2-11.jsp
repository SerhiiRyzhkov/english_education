<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Crypto addicts</title>
</head>
<body>
<h1>B2 Reading Test</h1>
<h2>Crypto addicts</h2>
<br>When you are looking for rental accommodation in a shared house, you have to think not only about the location and your budget, but also about who you are sharing with, as your housemates can make the difference between a successful or an unhappy house-share.

Cryptocurrency trading has become very popular. By buying and selling different currencies, traders can make huge profits. However, trading addiction is becoming increasingly common. Here, addict Josh Johnson talks about his experience.

‘I heard about cryptocurrencies years ago when Bitcoin first came out, but I can`t say I was intrigued from the start. Even when cryptocurrencies were mentioned more and more in the news and on social media, I didn`t pay much attention. It wasn`t until my friends started trading that I got into it. Seeing them earning loads of money overnight by doing practically nothing made me want to get in on it too. I`d been trading for a while by the time the pandemic started, but that was when the trouble started.

‘It was crazy to begin with. My first investment quadrupled within a couple of weeks. I couldn`t believe it. It gave me a feeling of power, and I felt as if I could achieve anything. I poured more money in, and the same thing kept happening. Of course, it was all chance. I happened to put my money in before the currencies hit an all-time high. Then they plummeted. I was convinced they`d recover, so I kept pumping more money in. But what had worked before no longer did. I lost everything.

‘Since getting help, I`ve thought about how I got addicted. There was a point when I had over three hundred thousand pounds. If I`d quit then, I could have bought the house that I had my heart set on. But rather than the money itself, it was the drama that hooked me. And winning didn`t give me as big a thrill as losing. You would think I`d feel devastated when money disappeared, but instead, I`d feel a new sense of purpose and drive to prove myself once again.

‘Lots of people enjoy these highs and lows of trading without becoming addicts, so it`s hard to know when you`ve gone too far. Like with many addictions, crypto addicts become isolated and withdrawn and neglect their work. But I was off work and living by myself, so if those signs were there, they weren`t noticeable. For me, I missed the high when money ran out and I couldn`t trade, so I found it through drugs, and my sister found out. I`d been addicted to them in the past, and it got to the point of me lying and stealing from others. She didn`t want that to happen again, and she stepped in.

‘There`s a worrying, rising trend in cryptocurrency trading addiction. It`s not surprising really, given the irresponsible advertising techniques which companies have used. I`m glad authorities are cracking down on those. But it concerns me that the apps send you notifications when you make money, inviting you to share your good news with others. But when you lose, you get nothing. It gives you a false sense that you are doing well. I think there should be rules that don`t allow that.

‘Compared to traditional gambling, cryptocurrency trading is seen as socially acceptable. It`s something that smart but adventurous people do. And whereas a lot of gamblers play alone or against other people, trading is social. But this leads to a herd mentality, where people stop thinking things through for themselves. The companies make lots of information available to educate people about the risks of trading. It`s far easier, though, to act on a friend`s tip-off or hunch. All this means that people don`t realise that they are on a slippery slope until it`s gone too far.
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
