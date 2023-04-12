<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="ru"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content=" Lessons &amp;amp; Practice,  Meet some of our partners!,  Integrity. Uniqueness. Enjoyment. Ever Forward.,  Our Mission, Contact Us">
    <meta name="description" content="">
    <title>Reading practice</title>
    <link rel="stylesheet" href="<c:url value="/resources/style/listening-task-view/nicepage.css"/>" media="screen">
    <link rel="stylesheet" href="<c:url value="/resources/style/listening-task-view/buttons.css"/>" media="screen">

    <link rel="stylesheet" href="<c:url value="/resources/style/listening-task-view/Main.css"/>" media="screen">
    <script class="u-script" type="text/javascript" src="<c:url value="/resources/style/listening-task-view/jquery.js"/>" defer=""></script>
    <script class="u-script" type="text/javascript" src="<c:url value="/resources/style/listening-task-view/nicepage.js"/>" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:100,200,300,400,500,600,700,800,900">

    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "",
        "sameAs": [
            "https://www.facebook.com/had0uken1992",
            "https://t.me/hd0uk3n",
            "had0uken@ukr.net"
        ]
    }</script>
    <meta name="theme-color" content="#4551dd">
    <meta property="og:title" content="About app">
    <meta property="og:type" content="website">
</head>
<body data-home-page="Reading.html" data-home-page-title="Reading" class="u-body u-xl-mode" data-lang="ru"><header class="u-align-center-sm u-align-center-xs u-clearfix u-header u-header" id="sec-fe69"><div class="u-clearfix u-sheet u-sheet-1">
    <a href="/homeReff" style="cursor: pointer; z-index: 1000"><img src="<c:url value="/resources/style/home/images/coollogo_com-828391.png"/>" width="450" height="aute" ></a>


    <form:form action="logout">
        <input type="image" src="<c:url value="/resources/style/home/images/3329438-07cf5464.png"/>" class="u-file-icon u-hover-feature u-icon u-text-palette-1-base u-icon-1"/>

    </form:form>

    <p class="u-align-center u-custom-font u-font-roboto-slab u-text u-text-default u-text-1">${currentUserEntityAtt.email}<br>${userLevelAtt}
    </p>

    <security:authorize access="hasRole('ADMIN')"><a href="/admin" class="u-btn u-btn-round u-button-style u-hover-feature u-hover-palette-1-light-1 u-palette-1-base u-radius-50 u-btn-1">aDmIN MODE</a></security:authorize>

    <div class="u-social-icons u-spacing-10 u-social-icons-1">
        <a class="u-social-url" title="facebook" target="_blank" href="https://www.facebook.com/had0uken1992"><span class="u-icon u-social-facebook u-social-icon u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9f2a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-9f2a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
        c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
        </a>
        <a class="u-social-url" title="telegram" target="_blank" href="https://t.me/hd0uk3n"><span class="u-icon u-social-icon u-social-telegram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-76c3"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-76c3"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M18.4,53.2l64.7-24.9c3-1.1,5.6,0.7,4.7,5.3l0,0l-11,51.8c-0.8,3.7-3,4.6-6.1,2.8L53.9,75.8l-8.1,7.8
c-0.9,0.9-1.7,1.6-3.4,1.6l1.2-17l31.1-28c1.4-1.2-0.3-1.9-2.1-0.7L34.2,63.7l-16.6-5.2C14,57.4,14,54.9,18.4,53.2L18.4,53.2z"></path></svg></span>
        </a>
        <a class="u-social-url" title="linkedin" target="_blank" href="https://www.linkedin.com/in/sryzhkov/"><span class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8511"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-8511"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
        C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
        H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
        </a>
        <a class="u-social-url" title="email" target="_blank" href="had0uken@ukr.net"><span class="u-icon u-social-email u-social-icon u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-349a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-349a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path id="path3864" fill="#FFFFFF" d="M27.2,28h57.6c4,0,7.2,3.2,7.2,7.2l0,0v42.7c0,3.9-3.2,7.2-7.2,7.2l0,0H27.2
c-4,0-7.2-3.2-7.2-7.2V35.2C20,31.1,23.2,28,27.2,28 M56,52.9l28.8-17.8H27.2L56,52.9 M27.2,77.7h57.6V43.5L56,61.3L27.2,43.5V77.7z
"></path></svg></span>
        </a>
    </div>
</div></header>


<section class="u-align-center-sm u-align-center-xs u-align-right-lg u-align-right-md u-align-right-xl u-border-2 u-border-palette-2-base u-clearfix u-palette-1-base u-section-1" id="sec-d422">
    <div class="u-clearfix u-sheet u-valign-top u-sheet-1">
        <div class="u-bottom-left-radius-19 u-container-style u-expanded-width u-group u-palette-1-base u-shape-round u-top-left-radius-19 u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
            <div class="u-container-layout u-container-layout-1">
                <h1 class="u-align-center u-text u-text-body-alt-color u-text-default u-text-1" data-lang-en=" Lessons &amp;amp; Practice"> READING PRACTICE<br>${curTaskAtt.level} LEVEL
                </h1>
                <form:form action="receive" modelAttribute="tasksAtt">
                <h3 class="u-align-center u-text u-text-default u-text-2" style="color: yellow">${curTaskAtt.title}</h3>
            </div>
        </div>

        <div>
         <pre style="    text-align: left;
    width: 1140px;
    white-space: pre-wrap;">
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

He shook his head. "She wouldn't even look at me," he said. "Latched on to my dad though. She knew which side her bread was buttered on."

 </pre>
        </div>
        <h3 class="u-align-center u-text u-text-default u-text-2" style="">${indexAtt+1}/${amountAtt}</h3>
        <h3 class="u-align-center u-text u-text-default u-text-3">${curQuestionAtt.question}</h3>



        <div>

            <label class="rad-label">
                <input type="radio" class="rad-input" value="1" name="choiceAtt" CHECKED>
                <div class="rad-design"></div>
                <div class="rad-text">${curQuestionAtt.answer1}</div>
            </label>

            <label class="rad-label">
                <input type="radio" class="rad-input" value="2" name="choiceAtt">
                <div class="rad-design"></div>
                <div class="rad-text">${curQuestionAtt.answer2}</div>
            </label>

            <label class="rad-label">
                <input type="radio" class="rad-input" value="3" name="choiceAtt">
                <div class="rad-design"></div>
                <div class="rad-text">${curQuestionAtt.answer3}</div>
            </label>



        </div>

        <button type="submit" name="submit_button" style="border: none; background: none; width: 7%; height: 7%; cursor: pointer;">
            <img src="<c:url value="/resources/style/listening-task-view/5590507.png"/>">
        </button>

        </form:form>

    </div>
</section>




<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9c10"><div class="u-clearfix u-sheet u-sheet-1">
    <p class="u-small-text u-text u-text-variant u-text-1" data-lang-en="English Education by Serhii Ryzhkov 2023">English Education by Serhii Ryzhkov 2023</p>
</div></footer>


</body></html>
