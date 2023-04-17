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
Much of today's business is conducted across international borders, and while the majority of the global business community might share the use of English as a common language, the nuances and expectations of business communication might differ greatly from culture to culture. A lack of understanding of the cultural norms and practices of our business acquaintances can result in unfair judgements, misunderstandings and breakdowns in communication. Here are three basic areas of differences in the business etiquette around the world that could help stand you in good stead when you next find yourself working with someone from a different culture.

Addressing someone
When discussing this topic in a training course, a German trainee and a British trainee got into a hot debate about whether it was appropriate for someone with a doctorate to use the corresponding title on their business card. The British trainee maintained that anyone who wasn't a medical doctor expecting to be addressed as 'Dr' was disgustingly pompous and full of themselves. The German trainee, however, argued that the hard work and years of education put into earning that PhD should give them full rights to expect to be addressed as 'Dr'.

This stark difference in opinion over something that could be conceived as minor and thus easily overlooked goes to show that we often attach meaning to even the most mundane practices. When things that we are used to are done differently, it could spark the strongest reactions in us. While many Continental Europeans and Latin Americans prefer to be addressed with a title, for example Mr or Ms and their surname when meeting someone in a business context for the first time, Americans, and increasingly the British, now tend to prefer using their first names. The best thing to do is to listen and observe how your conversation partner addresses you and, if you are still unsure, do not be afraid to ask them how they would like to be addressed.

Smiling
A famous Russian proverb states that 'a smile without reason is a sign of idiocy' and a so-called 'smile of respect' is seen as insincere and often regarded with suspicion in Russia. Yet in countries like the United States, Australia and Britain, smiling is often interpreted as a sign of openness, friendship and respect, and is frequently used to break the ice.

In a piece of research done on smiles across cultures, the researchers found that smiling individuals were considered more intelligent than non-smiling people in countries such as Germany, Switzerland, China and Malaysia. However, in countries like Russia, Japan, South Korea and Iran, pictures of smiling faces were rated as less intelligent than the non-smiling ones. Meanwhile, in countries like India, Argentina and the Maldives, smiling was associated with dishonesty.

Eye contact
An American or British person might be looking their client in the eye to show that they are paying full attention to what is being said, but if that client is from Japan or Korea, they might find the direct eye contact awkward or even disrespectful. In parts of South America and Africa, prolonged eye contact could also be seen as challenging authority. In the Middle East, eye contact across genders is considered inappropriate, although eye contact within a gender could signify honesty and truthfulness.

Having an increased awareness of the possible differences in expectations and behaviour can help us avoid cases of miscommunication, but it is vital that we also remember that cultural stereotypes can be detrimental to building good business relationships. Although national cultures could play a part in shaping the way we behave and think, we are also largely influenced by the region we come from, the communities we associate with, our age and gender, our corporate culture and our individual experiences of the world. The knowledge of the potential differences should therefore be something we keep at the back of our minds, rather than something that we use to pigeonhole the individuals of an entire nation.

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
