<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Safety At The Beach</title>
</head>
<body>
<h1>С2 Reading Test</h1>
<h2>Safety At The Beachs</h2>
<br>
Safety At The Sea

Forget razor fish. The lesser weever is the fish to look out for on British beaches.

The fish, which has venomous spines on its gills and dorsal fin, is common in many areas of the UK, including the Cardigan Bay area of Wales.

It lies virtually buried in the sand with just its mouth and fin exposed, a trap for hapless fishermen and beachgoers wading around in the shallows.

If you stand on a weever fish, you are likely to feel a sharp prick-like sensation which gets worse and spreads along your leg, often causing swelling.

Allergy

Many people have an allergic reaction to the fish and may start to sweat, develop a rapid pulse and feel nauseous as the poison gets further into the body.

Some people collapse as a result. Others can develop chest pain, although the sting is not fatal.

People who have been stung should take painkillers and if they develop an allergic reaction to the sting, a course of antihistamines is recommended.

Other common poisonous fish on Britain's beaches include jelly fish and the stingray, which, if disturbed, can use its tail to venomous effect.

Sea currents

But fish are the least of your worries on the beach. The force of the sea is much more dangerous than anything swimming about inside it.

Over the weekend, two people nearly drowned in the Bournemouth area after getting out of their depth swimming.

One was just 16 years old. They are both now in stable condition in hospital.

"We were much more hit by that than sunburn cases where the message seems to be getting home," said a spokesman for the Royal Bournemouth Hospital.

In other areas, the situation was less dramatic with a handful of sunburn and sprained ankles reported in other sunspots, including Cornwall, Blackpool and Brighton.

Coastguards are warning the public not to swim if there is a red flag flying on a beach and to find out about local tides and currents.

Safe swimming

The Coastguard Agency says people should not swim if they feel unwell, for at least an hour after a meal, if they have been drinking alcohol or if they are cold and tired.

They also warn against swimming alone, swimming too far out to sea and snorkling if you have breathing problems.

And you should avoid cliff edges, even on gentle slopes, when they have been dampened by sea spray.

One organisation that aims to help swimmers who get into trouble is the UK's answer to Baywatch, the Surf Lifesaving Association of Great Britain.

Founded in 1955 and based on an idea originated in Australia, it now has 81 branches and has made 17,500 rescues.

The association has three types of member: Nippers (aged eight to 12), Junior (aged 12 to 16) and Seniors and Masters.

Its motto is 'Vigilance and Service'. All members are surfers trained in lifesaving skills.

They paddle out across the waves to save struggling swimmers. Most of their money comes from fundraising events, but local councils also provide some funding.

Another danger on the beach is pollution. A recent survey of UK beaches showed more than 10% are failing to meet minimum standards for clean water.

The Marine Conservation Society said raw sewage was still being pumped into the sea in some areas and was findiing its way onto beaches.

But the water companies say the society's standards are too tough and that 90% of British beaches pass European standards.<br>
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
