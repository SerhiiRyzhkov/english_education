<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Five restaurant reviews</title>
</head>
<body>
<h1>B1 Reading Test</h1>
<h2>Five restaurant reviews</h2>
<br>
Barry G: We stopped at the White Horse Inn for lunch during a long journey. My wife ordered the lasagne and I ordered a steak and ale pie. We waited over thirty minutes for our food, and when my pie arrived, it was chicken and mushroom. When they brought the correct pie, I picked up the gravy and found that it was completely cold. When I went to the bar and asked for it to be heated and suggested that we should get a partial refund, the barman swore under his breath. When I finally started eating, my wife had already finished her meal. Avoid this restaurant at all costs!

Emma1987: We decided to come here for our Sunday lunch. The prices were a bit steep, but we thought it would be worth it, if the food was good. Sadly, we were disappointed. Our sausages were burnt and so dry that we couldn`t even cut them. My partner`s steak was even worse. It certainly wasn`t worth the money. It wasn`t even a pleasant place to spend a Sunday. The carpet was old-fashioned and worn, the chairs were uncomfortable and the walls needed painting. Very disappointing.

PGRigby: We were passing by and felt hungry, so we decided to stop here for a meal. We got a warm welcome and were impressed with the wide selection of beers and the extensive menu. The dishes are mostly traditional, and not very adventurous or exotic, but it was decent, reasonably priced, warm and well presented. We were served quickly, considering there were seven of us, and the staff were polite. Overall, it was good value for money and I would definitely go there again.

SunnyDay: The pub looked very attractive from the outside, with a large car park, disabled access and an attractive garden. It`s in a good location on the main road, and I imagine it attracts a lot of passing trade. However, if I was local to the area, I wouldn`t come here regularly. Although the prices were typical, we didn`t get very much for our money. My garlic mushrooms were just that, three small mushrooms with a little dry salad – the kind you get from a bag – on the side. Then, my partner and I both ordered fish and chips, and my fish was much smaller than hers. When we complained, we weren`t offered a refund or a new piece of fish. I`m sure there are better places to eat in the area.

Andrew_Rose: We ended up at the White Horse Inn for our Sunday lunch when the pub we planned to eat at had forgotten to note down our booking. However, we felt very pleased about this error in the end. We were greeted by a friendly, helpful young lady behind the bar who allowed us to sample a few of the beers before we made our choices. I ordered fish and chips. The fish was fresh and served in a lovely, crisp batter. My friends were very happy with their roast dinners. The desserts were also delicious. However, for me, it was the excellent service and friendliness of all the staff that made the visit stand out. We will look forward to returning in the future.
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
