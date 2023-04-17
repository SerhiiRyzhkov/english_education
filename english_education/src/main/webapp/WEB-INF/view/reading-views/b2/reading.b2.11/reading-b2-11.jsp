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
Cryptocurrency trading has become very popular. By buying and selling different currencies, traders can make huge profits. However, trading addiction is becoming increasingly common. Here, addict Josh Johnson talks about his experience.

`I heard about cryptocurrencies years ago when Bitcoin first came out, but I can`t say I was intrigued from the start. Even when cryptocurrencies were mentioned more and more in the news and on social media, I didn`t pay much attention. It wasn`t until my friends started trading that I got into it. Seeing them earning loads of money overnight by doing practically nothing made me want to get in on it too. I`d been trading for a while by the time the pandemic started, but that was when the trouble started.

`It was crazy to begin with. My first investment quadrupled within a couple of weeks. I couldn`t believe it. It gave me a feeling of power, and I felt as if I could achieve anything. I poured more money in, and the same thing kept happening. Of course, it was all chance. I happened to put my money in before the currencies hit an all-time high. Then they plummeted. I was convinced they`d recover, so I kept pumping more money in. But what had worked before no longer did. I lost everything.

`Since getting help, I`ve thought about how I got addicted. There was a point when I had over three hundred thousand pounds. If I`d quit then, I could have bought the house that I had my heart set on. But rather than the money itself, it was the drama that hooked me. And winning didn`t give me as big a thrill as losing. You would think I`d feel devastated when money disappeared, but instead, I`d feel a new sense of purpose and drive to prove myself once again.

`Lots of people enjoy these highs and lows of trading without becoming addicts, so it`s hard to know when you`ve gone too far. Like with many addictions, crypto addicts become isolated and withdrawn and neglect their work. But I was off work and living by myself, so if those signs were there, they weren`t noticeable. For me, I missed the high when money ran out and I couldn`t trade, so I found it through drugs, and my sister found out. I`d been addicted to them in the past, and it got to the point of me lying and stealing from others. She didn`t want that to happen again, and she stepped in.

`There`s a worrying, rising trend in cryptocurrency trading addiction. It`s not surprising really, given the irresponsible advertising techniques which companies have used. I`m glad authorities are cracking down on those. But it concerns me that the apps send you notifications when you make money, inviting you to share your good news with others. But when you lose, you get nothing. It gives you a false sense that you are doing well. I think there should be rules that don`t allow that.

`Compared to traditional gambling, cryptocurrency trading is seen as socially acceptable. It`s something that smart but adventurous people do. And whereas a lot of gamblers play alone or against other people, trading is social. But this leads to a herd mentality, where people stop thinking things through for themselves. The companies make lots of information available to educate people about the risks of trading. It`s far easier, though, to act on a friend`s tip-off or hunch. All this means that people don`t realise that they are on a slippery slope until it`s gone too far.

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
