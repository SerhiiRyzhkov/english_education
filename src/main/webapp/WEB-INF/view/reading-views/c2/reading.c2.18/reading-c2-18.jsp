<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>Jesus and the Aubergines</title>
</head>
<body>
<h1>C2 Reading Test</h1><h2>Jesus and the Aubergines</h2>
<br>
My husband spent August wondering whether he wanted to leave me or not. I didn't seem to be involved in the decision, so I filled the time by going on a diet of raw vegetables. I followed the instructions exactly from a book I bought purely on the strength of the photograph on the front cover. It was of a model with long blonde hair, bright eyes and the sort of smile you thought could only belong to rich American children. I knew that wasn't true, because my husband had fallen in love with a girl with perfect white teeth and she came from Nottingham.

I loved that book. At a time when everything was falling down around me, it gave me rules to help me through my life. I even had a task to do each day, with a little box to tick when I had finished. I don't think I've ever been so satisfied as when I was ticking those boxes. The book was just one of many things I lost when my husband finally left, but I can still remember the instructions.

"Place yourself directly in front of a market trader's stall and put your arms out in front of you at shoulder level. Then walk slowly towards the produce until your hands are an inch away from touching. Stand still for several minutes and you will be able to feel the vibrations of goodness moving directly from the vegetables to your own body." I think it does you good to realise there are people so innocent that they think you can still do something like that in public and get away with it.

About six months later, I was at the supermarket. I prefer to go late in the evening so I can miss all those young mothers doing family shops. They look at my simple purchases with so much pity. I had just reached the vegetables when I was struck by a vision of a Jesus figure, arms raised, blessing the aubergines.

A gurgle rose up from me and I was away. I tried everything but I could not stop laughing. It was loud too, not the sort of watery chuckle you can get away with. My body was rocking so hard I had to hold on tight to the trolley with both hands and there were tears rolling down my cheeks. All I could think about were those bloody aubergines.

I could see him coming towards me from the other side of the carrots. He looked almost frightened in his blue suit and little white badge. "Colin. Assistant Manager. Here to Help." I was trying to concentrate on these small details in my effort to stop laughing.

"Is everything all right?" he said and I noticed he was trying to smile in a relaxed, confident way but because he was so nervous, his mouth kept twitching. I felt sorry for him. After all, he was probably only about twenty; just a couple of years older than my Calum. My pity must have done the trick because I could feel the laughter simmer down inside.

He looked relieved. "OK," he said, looking around at the crowd which had gathered. "Everything's under control." And everything would have been fine, if he hadn't then lifted up his arms in a gesture that was supposed to be a gentle reminder for people to disperse but was positioned directly above the aubergines. I started to laugh again, even harder this time although my stomach was aching and I had got a stitch. I put both hands on my waist to support myself. If only he could have seen what he looked like.

Colin held on to my elbow and tried to steer me away from the vegetables but I couldn't move. I felt so drained that even to me, my laughter sounded as if I was reading it out of a comic book: "Ho, ho, ho. Ha, ha, ha." I was aware of Colin looking around desperately for someone to help him.

"Shall I get you a nice cup of tea?" he asked, in the sort of voice you hope might soothe a child in mid-tantrum.

I nodded. It might have been a cliche but, to tell the truth, a nice cup of tea was precisely what I could do with at that moment.

We walked together to the supermarket cafe; his arm still on my elbow as if he was scared I was going to run away. I could feel his hand was wet and clammy and for the first time, I felt ashamed at putting him through this. At least I had stopped laughing. I was exhausted, collapsing into the seat Colin held out for me and gulping at my tea.

"Do you have anyone we could call?" He was still looking scared and I didn't blame him. I wasn't exactly the picture of reasonableness. I thought about my children and then rejected each one in turn. Calum would be out with his university friends and Debbie was staying over at her friend Christine's. She spent all her time there nowadays. I called it the hippy, happy house once because of all the windchimes and burning candles Christine's mother has around, but Debbie didn't laugh.

"What about your husband?" Colin was still prodding, anxious to get rid of me onto someone else.

"My ex-husband is probably out on the town, somewhere," I said, "pretending to be twenty years younger than he is." The bitterness was so habitual I was surprised to see Colin flinch. "Don't mind me," I tried to reassure him. "I'm just an old mad woman who goes wild in the veggie department."

"What was so funny?" He was smiling at me now. It was as if it took me mocking my own sanity to reassure him I was all right.

I thought about telling him about the book and about Jesus and the vibrating vegetables, but I knew he wouldn't understand. "Just a joke someone told me about aubergines," I said. I was trying to look as if this explained everything, but I needn't have bothered. I could tell he was thinking about something else.

"My mum and dad are divorced," he said. "They split up when I was seventeen."

"Divorce is hard for everybody," I said quickly. I was still feeling too sorry for myself to be interested in anyone else's pain.

"Dad ran off with someone younger," he was stirring his coffee round and round, gazing into the circles he'd made on the black liquid surface. "Someone my age."

"All men are fools." I said it automatically. I wanted to leave now, get back home. I'd do my shopping at another supermarket the next day.

"Not just someone my age. Someone I knew. Someone I'd been to school with."

"Was she your girlfriend?" He'd caught my attention now. I think I'd have killed my husband if he'd run off with one of Calum's girlfriends.

He shook his head. "She wouldn't even look at me," he said. "Latched on to my dad though. She knew which side her bread was buttered on."<br>
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
