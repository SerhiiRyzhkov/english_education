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
        <a class="u-social-url" title="email" target="_blank" href="mailto:had0uken@ukr.net"><span class="u-icon u-social-email u-social-icon u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-349a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-349a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path id="path3864" fill="#FFFFFF" d="M27.2,28h57.6c4,0,7.2,3.2,7.2,7.2l0,0v42.7c0,3.9-3.2,7.2-7.2,7.2l0,0H27.2
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
Jessica was my neighbor, a year older than me, tall, redheaded, and evil. Her house was one bedroom smaller than mine and she lived with her mother who was tall, redheaded, evil, and old. Her father had the good sense to escape from these two before they made stew out of him. When they weren't locked away inside their little house sticking pins in dolls and worshipping frogs, Jessica and her mother, Mrs. Walters, were on the lookout for me, waiting for me to step one foot into their yard.

Mrs. Walters never baked cookies, never had iced tea or lemonade handy, and never, ever smiled at anyone besides Jessica. She was the Olympic champion of scowling, fist-shaking, and fingerpointing. She could throw the Heebee Jeebees on you with a look from across the yard and it would take all day to wear off. Jessica had that same look and I knew when she got old enough she'd be even better at it than her mother. Still, there were times, when she didn't know I was looking at her -- at school in the halls or when she was playing in her backyard alone -- that she didn't have her face all scrunched up and her eyes weren't burning holes in me, that I thought she looked pretty. I even wondered how it would be to kiss her. But then she'd catch me looking, and I'd sooner kiss dirt.

"Your Dad gonna leave his car parked in front of our house like that?" Jessica yelled from her porch when I came home from school. I rode the bus, but her mother always picked her up so she could be home to yell something at me when I walked by. Even on weekends they always parked their car in the garage, so nobody could tell if they were home or not.

"It's not in front of your house," I yelled back. "It's in front of ours!"

"I beg your pardon!" It was Mrs. Walters. She had been standing behind Jessica where I couldn't see her. Now they both came marching out to the curb, arms crossed over their chests, and identical scowls on their faces.

"You see that line right there?" Mrs. Walters pointed without looking at the thin strip of red paint she had used to mark the line between our front yards. "Can you see it? Can you see that this crappy old car is parked well past that line? This side of that line is my property and I'll thank you to tell your father to move his crappy old car off my property!" With that, she spun on her heels, threw her nose in the air and marched back to her house, went inside and slammed the door. Jessica mimicked her every move.

I can't say I was surprised by this. Stunned a little, as I always was when they ambushed me, which was nearly every day, but not surprised. I walked on up my driveway and into my own house and slammed the door, just like they did, just because.

My mother came out of the kitchen, drying her hands and looking out the front window over to the Walters' house. "What was it today?" she asked.

"Dad's car again," I said, and set my backpack on the coffee table. "I think it's a good three inches over the red line of death this time."

My mother shook her head, smiled, and kissed me on the forehead. "At least she hasn't called the police yet." But she spoke too soon. Ten minutes later a patrol car pulled into the Walters' driveway.

My mother and I watched as Mrs. Walters, shadowed by Jessica, of course, led the officer over to the curb and pointed out the scene of the crime. When the officer shook his head, Jessica's hands went to her hips and her mother's started waving wildly. We could hear her voice, but couldn't quite make out the words. It was clear she was unhappy with the officer and I don't know if he meant to do it or not, but his hand moved to rest on his pistol. We had an old dog we had to put down once and the image just popped into my head.

After a good five minutes of Mrs. Walters yelling and stomping and pointing at our house, the officer must have told her to go back inside, because she repeated her little spin-march-slam-the-door routine. The officer watched after her for a moment, shook his head, then walked over to our front door. My mother opened the door before he had a chance to knock.

"Good afternoon, Mrs. Michaels."

"Good afternoon, Carl. I'm sorry she's called you out here again."

"Oh, it's okay. It's been almost a week, I believe." They both laughed.

"Listen," Carl said, "I've told her that she doesn't own the street, and unless Mr. Michaels parks in her yard or blocks her driveway, we can't do anything about it."

My mother smiled and invited the officer inside.

"No, thank you, Mrs. Michaels. I need to get back on patrol. But...listen...she's saying she's gonna call a tow truck if the car isn't moved. I told her she couldn't do that, but you know her. It might just be easier if you go ahead and move the car. You don't have to, but it just might be easier all around."

"I'll tell Charles as soon as he gets up for work, Carl."

"That's good, Mrs. Michaels. Sometimes it's just easier for everyone when it's something simple like this, you know?"

"I agree. Lord knows she'll just find something else, but I agree."

"All right, then. You give me a call if you need me, okay?"

When the officer left, my mother went back to the kitchen and I stood guard at the front window, watching the Walters' house. Our houses were next to each other, but we lived at the end of a court, so they angled enough that we could see each other through our living room windows. The curtain in their front window moved every few minutes, sometimes one face, low or high, sometimes two.

My father wasn't one for taking the easy route anywhere, and over the last couple of months he had taken much pleasure from annoying Mrs. Walters. When he got up to get ready for work that day, my mother filled him in on the latest with Mrs. Walters.

"Charles, don't antagonize her," my mother begged, but he just chuckled and walked out the front door. Still sitting in the window, I watched him shortcut across our yard to the car at the curb. He smiled and waved at the Walters, who quickly pulled back from the window and whisked the curtains closed. He waved again and flashed a big smile as he unlocked the car and slid into the driver's seat. I heard the roar of the old Cadillac as he started it up, saw the puff of blue smoke shoot out of the tailpipe, and watched in amusement as my father backed the car several inches further onto the Walters' side of the red line.

"That man," my mother whispered, standing over me and watching through the window. She was drying her hands again and humming her disapproval. "Mmm mmm mmm, that man."

My father got out of the car and made a show of wiping some speck from the front fender of the car. He bent over to breathe steam on the side mirror and wiped it off with the tail of his shirt. Then, like he was seeing someone off to sea, he stood on his tiptoes and waved to me and mother. He gave another toothy smile and quick wave toward the Walters' window and started up to the house again. My mother huffed and returned to the kitchen, but I could hear her chuckle softly as she did.

Dad came in the house laughing out loud and stood at the window over me, looking like he expected to see Santa Claus pull into the driveway. "Wonder how she likes them apples, eh?" he said, and gave my hair a quick twist.

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
