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


    <form:form action="/logout">
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
Factfulness - Hans Rosling with Ola Rosling and Anna Rosling Rönnlund
In Factfulness, Professor Hans Rosling, along with two collaborators, asks simple questions about the world. Questions like 'How many girls finish school?' and 'What percentage of the world's population is poor?' It turns out the majority of us get the answers to these questions completely wrong. Why does this happen? Factfulness sets out to explain why, showing that there are several instincts humans have that distort our perspective.

For example, most people divide the world into US and THEM. In addition, we often believe that things are getting worse. And we are consuming large amounts of media that use a sales model based on making us afraid.

But according to the authors, the world isn't as bad as we think. Yes, there are real concerns. But we should adopt a mindset of factfulness - only carrying opinions that are supported by strong facts. This book is not concerned with the underlying reasons for poverty or progress, or what should be done about these issues. It focuses on our instinctive biases, offering practical advice to help us see the good as well as the bad in the world.



Enlightenment Now - Steven Pinker
Are things getting worse every day? Is progress an impossible goal? In Enlightenment Now, Steven Pinker looks at the big picture of human progress and finds good news. We are living longer, healthier, freer and happier lives.

Pinker asks us to stop paying so much attention to negative headlines and news that declares the end of the world. Instead, he shows us some carefully selected data. In 75 surprising graphs, we see that safety, peace, knowledge and health are getting better all over the world. When the evidence does not support his argument, however, he dismisses it. Economic inequality, he claims, is not really a problem, because it is not actually that important for human well-being. One cannot help wondering how many people actually living in poverty would agree.

The real problem, Pinker argues, is that the Enlightenment values of reason and science are under attack. When commentators and demagogues appeal to people's tribalism, fatalism and distrust, then we are in danger of causing irreparable damage to important institutions like democracy and world co-operation.



The Rational Optimist - Matt Ridley
For more than two hundred years the pessimists have been winning the public debate. They tell us that things are getting worse. But in fact, life is getting better. Income, food availability and lifespan are rising; disease, violence and child mortality are falling. These trends are happening all around the world. Africa is slowly coming out of poverty, just as Asia did before. The internet, mobile phones and worldwide trade are making the lives of millions of people much better.

Best-selling author Matt Ridley doesn't only explain how things are getting better; he gives us reasons why as well. He shows us how human culture evolves in a positive direction thanks to the exchange of ideas and specialisation. This bold book looks at the entirety of human history - from the Stone Age to the 21st century - and changes the notion that it's all going downhill. The glass really is half-full.



The Great Surge - Steven Radelet
The majority of people believe that developing countries are in a terrible situation: suffering from incredible poverty, governed by dictators and with little hope for any meaningful change. But, surprisingly, this is far from the truth. The reality is that a great transformation is occurring. Over the past 20 years, more than 700 million people have increased their income and come out of poverty. Additionally, six million fewer children die every year from disease, millions more girls are in school and millions of people have access to clean water.

This is happening across developing countries around the world. The end of the Cold War, the development of new technologies and brave new leadership have helped to improve the lives of hundreds of millions of people in poor countries.

The Great Surge describes how all of this is happening and, more importantly, it shows us how we can accelerate the process.

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
